---
name: acumatica-customization-update
description: Updates, upgrades, validates, and publishes Acumatica ERP customization projects and packages. Use for .cst, .zip, or project.xml packages; editing packaged DACs, graph extensions, Code_*.xml files, or screens; BuildProject, UploadCustomization, PublishCustomization, PX.CommandLine.exe, Extension Library rebuilds, version-specific screen merges, or upgrades to a newer Acumatica release. Use only when the work involves a customization project or package lifecycle; ordinary application-code changes outside that lifecycle are out of scope.
metadata:
  version: 1.0.0
---

# Acumatica Customization Update

Acumatica customizations fail in quiet ways. Nothing in a customization project is generated
from anything else — a DAC change does not propagate to the classic UI, the modern UI, or the
database — and several classes of breakage let `PublishCustomization` exit 0 while silently
dropping the change. So the working assumptions here are: **verify against the target site's own
source, not public docs; and never treat a clean publish as proof the change landed.**

Within a customization lifecycle, this skill also covers authoring changes to packaged DACs, cache
and graph extensions, classic and Modern UI screens, database scripts, and Extension Libraries.

## 1. Collect the inputs before touching anything

Ask for the site root and customization path when either is missing. Do not infer them or search the
filesystem broadly.

| Input | Required? | What it's for |
| --- | --- | --- |
| **Site root folder** (e.g. `C:\Acumatica Sites\26r1`) | **Yes** | The single most important input. Gives `Bin\PX.CommandLine.exe`, version-exact reference DLLs in `Bin\`, product source in `App_Data\CodeRepository`, and the site's current `Pages\` + `FrontendSources\` for comparing screen definitions. |
| **The customization** (folder or `.zip`) | **Yes** | The thing being changed. |
| **Source code for any Extension Library DLL** | If the package ships a DLL that must be rebuilt | A DLL compiled against an older `PX.Objects.dll` cannot be patched — only recompiled. See `references/upgrade-failures.md`. |
| **Site URL** (e.g. `http://localhost/26r1`) | Optional | Only needed for the REST Customization Web API, or to spot-check a screen in the browser afterward. `PX.CommandLine.exe` takes the *folder*, not the URL. |

Note: the user may say "site URL" when the folder path is what's actually needed. Confirm which
one you have — publishing locally needs the folder.

### Example request

> Upgrade the customization package at `C:\Temp\SomeVendorPkg.zip` for the Acumatica site at
> `C:\Acumatica Sites\26r1`. If its Extension Library must be rebuilt, the source is at
> `C:\Temp\SomeVendorSrc.zip`. Validate the result and ask me before publishing it.

Then establish ground truth about the site once, up front:

```powershell
powershell -File "<skill-root>/scripts/Get-SiteInfo.ps1" -SiteRoot "C:\Acumatica Sites\26r1"
```

This reports the exact installed version, and whether `Bin`, `PX.CommandLine.exe`,
`App_Data\CodeRepository`, and `FrontendSources` are present. Read the version from here rather
than inferring it from build-error behavior.

## 2. Identify which format the customization is in

This decides the whole build step, and getting it wrong wastes a cycle:

- **Export-to-folder layout** — has `/Pages`, `/FrontendSources`, `/_project`. Source form.
  Must be turned into a package with `BuildProject`. **Never zip this layout by hand** — it is not
  the package format.
- **Already-packaged `.zip`** — `project.xml` at the root, C# embedded as CDATA, `<PerTenantFile>`
  entries pointing at a `screens/` folder. Upload-ready as-is: **skip `BuildProject`**, go straight
  to `UploadCustomization`. To fix something, edit the extracted files/CDATA and re-zip with
  `Compress-Archive`.

Read `references/project-structure.md` for what each file in either layout means, and for which
files you may hand-edit versus which the Project Editor owns.

## 3. Make the change against version-exact ground truth

Before writing any C#, DAC attribute, or screen edit, check the real thing:

- **Product source:** grep `<site>\App_Data\CodeRepository` for a real example of the pattern. It
  matches the exact installed version, unlike public docs. If a screen is a core platform feature
  with no CodeRepository source, reflect on its DLL in `Bin\` — see
  `references/authoring-patterns.md`.
- **Current screen definitions:** for an upgrade, grep the site's own
  `FrontendSources\screen\src\screens\<Group>\<ScreenID>\<ScreenID>.{html,ts}` and
  `Pages\<Group>\<ScreenID>.aspx` for the element IDs and view/field names that exist *now*. The old
  customization's selectors point at whatever existed when it was built.
- **Assembly versions:** `[System.Reflection.AssemblyName]::GetAssemblyName('<path>').Version` on the
  actual DLL in `Bin\`, not what NuGet or GitHub says should be there.

`references/authoring-patterns.md` has the verified DAC/graph patterns, the official naming and
screen-numbering conventions, and the traps that cost multiple rounds to find (actions not
rendering in modern UI, `PXUrl` living in `PX.Common`, long operations that can't pause for user
input).

### Sync rules — check all of these in the same pass as any DAC/graph edit

1. **Both UI flavors.** Field added/removed/renamed, or a view's type changed? Update the classic
   `.aspx` **and** the modern `.ts` field declarations **and** the `<field name="...">` entries in
   the bound `qp-fieldset`/`qp-grid` in the `.html`. Never ship a classic-only edit.
2. **DB script.** Persisted DAC changed? Update `_project/Sql_<TableName>.xml` so columns match the
   DAC exactly. `CompanyID` belongs in the SQL schema only, never as a DAC field.
3. **`Usr` prefix** on any column *or index* added to a product table, guarded by an existence check.
4. **Search before deleting or renaming.** A field dropped from the DAC but left in SQL, or a screen
   modification targeting a control that no longer exists, fails silently at runtime — not at compile.

## 4. Build → upload → publish

Run these from **PowerShell, not Git Bash** — MSYS mangles the leading-`/` arguments and the exe
reports `/method parameter is required` as if nothing was passed. `BuildProject` needs administrator
privileges. Project names must be plain alphanumeric — no underscores.

```bash
PX.CommandLine.exe /website "<site root>" /method BuildProject /in "<project folder>" /out "<package.zip>"
```

```bash
PX.CommandLine.exe /website "<site root>" /method UploadCustomization /path "<package.zip>" /name "ProjectName" /replace
```

```bash
PX.CommandLine.exe /website "<site root>" /method PublishCustomization /name "ProjectName" /merge
```

Two gotchas that bite every time — both are in the commands above:

- **`/merge` is not optional in practice.** Without it, `PublishCustomization` unpublishes every
  other project on the site.
- **The CLI replays all DB scripts** unless you pass `/skipPreviouslyExecutedDbScripts`. The browser
  Editor doesn't. Non-idempotent scripts that work in the UI fail here — write every script re-runnable.

Confirm with the user before publishing, and **only publish to a local/dev site** — publish mutates
the site, and even `ValidateCustomization` copies files in rather than being read-only.
**Never perform the Web API sign-in yourself**: hand the user a script that prompts locally with
`Read-Host -AsSecureString` and have them run it.

`references/publishing.md` is the full method reference (all 14 `/method` values), what publish
actually does step by step, DB-script ordering and idempotency, the modern-UI Node/npm requirement,
what publish leaves behind for diagnosis, and the REST Customization Web API.

## 5. Verify — a clean publish is not proof

- `append`/`modify` directives whose target ID is missing are a **hard build failure** with a clear
  error. Easy.
- `after`/`prepend`/`remove` directives whose target is missing **fail silently** and publish still
  exits 0. Same for a screen modification touching a control that no longer exists.

So after a successful publish: grep the changed files for any remaining `after=`/`prepend=`/`remove=`
selectors targeting IDs you haven't confirmed exist in the site's current sources, and spot-check the
affected screen in the browser. Report what you actually verified versus what you only inferred from
exit code 0.

When a fix can't be made — e.g. a DLL references a type that no longer exists and its source isn't
available — the honest deliverable is the diagnosis ("member X was removed in version Y, the DLL
must be rebuilt against the target site's assemblies"), not a speculative patch.

## References

- `references/project-structure.md` — both project layouts file-by-file; how the folder maps to the package; what you may hand-edit.
- `references/publishing.md` — full PXCommandLine reference, publish pipeline, DB scripts, validation without publishing, REST Web API.
- `references/upgrade-failures.md` — the four kinds of upgrade failure; rebuilding an Extension Library DLL; pinning a third-party .NET library to the site's shipped versions.
- `references/authoring-patterns.md` — naming/numbering conventions, verified DAC patterns, long operations, core platform screens with no CodeRepository source.
