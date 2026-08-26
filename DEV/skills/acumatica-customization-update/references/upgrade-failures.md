# Upgrading a customization to a newer platform version

## Contents

- [Upgrade failure types](#the-four-kinds-of-upgrade-failure)
- [Modern UI merge failures](#modern-ui-htmlts-merge-failures)
- [DLL-based customizations](#dll-based-customizations-are-a-different-upgrade-path-than-cdata-ones)
- [Third-party .NET libraries](#integrating-a-third-party-net-library)

## The four kinds of upgrade failure

Ranked roughly by how easy they are to spot:

1. **C# compile errors** — a renamed or removed member. Loud, blocks publish, names the member.
2. **SQL failures** — a renamed or removed column. Loud.
3. **DLL binding failures** — an Extension Library compiled against older assemblies. Loud, but the
   fix is a rebuild, not an edit (see below). Softened slightly by the platform rebinding *some*
   broken references automatically at publish time — look for "Fixed Binding" entries in the publish log.
4. **Screen-element mismatches** — the old customization's selectors point at IDs that no longer exist.
   **Partly silent, hardest to spot.** See below.

Without the source for a broken DLL, the honest output is a diagnosis ("member X no longer exists, the
DLL must be rebuilt against version Y"), not a fix.

Also note: the `product-version` recorded in a package's manifest is stamped **at export time from the
running site**, not carried over from the project folder — exporting the fixed project from an instance
of the target version is what makes the artifact actually say "target version".

## Modern-UI (`.html`/`.ts`) merge failures

Don't guess at fixes. Grep the target site's own
`FrontendSources\screen\src\screens\<Group>\<ScreenID>\<ScreenID>.html` and `.ts` for the screen's
*current* element IDs and view-field names first. Div/vStack/grid IDs and which view a field belongs to
do shift between releases, and the old customization's selectors point at whatever existed when it was
built.

Two selector-failure modes behave very differently, and this matters for how much you trust a
"successful" publish:

- **`append`/`modify` directives are a hard build failure** if their target ID doesn't resolve —
  webpack throws, the whole publish fails with a non-zero exit code, and the error names the exact
  missing selector. Easy to catch and fix.
- **`after`/`prepend`/`remove` directives fail silently** if their target doesn't resolve — no error,
  no warning, and `PublishCustomization` can exit 0 while quietly not applying that part of the layout.

A clean publish alone doesn't prove every directive in an upgraded customization took effect. After
fixing the hard failures and republishing successfully, spot-check the affected screen in the browser —
or at minimum grep the fixed file once more for any remaining `after=`/`prepend=`/`remove=` selectors
targeting IDs you haven't confirmed still exist.

The same silent-drop behavior applies to classic screen modifications: if a customization edits a
control that no longer exists, publish does **not** fail — the change is dropped and only shows up as a
wrong-looking screen.

## DLL-based customizations are a different upgrade path than CDATA ones

Some customizations don't embed C# as CDATA in `project.xml` at all — their logic lives in a compiled
DLL dropped into `Bin\`, with the `.aspx`/`.aspx.cs` pages and a `<File>` list in `project.xml`
referencing it, and a separate zip with the full source (`.csproj` + `.cs` files) for rebuilding that
DLL.

`PublishCustomization`'s server-side compile step **never touches this DLL** — it only validates that
the types it references still resolve against the site's own assemblies. So a version upgrade can fail
in a way no XML edit can fix:

```
Failed to resolve type reference: <Namespace.Type> declared in PX.Objects, Version=1.0.0.0...
```

The DLL was compiled against an older `PX.Objects.dll` whose types moved or were removed. It has to be
**recompiled against the target site's own assemblies**, not patched.

### To rebuild

1. Check the source project's `.csproj` for how it resolves `PX.Objects.dll`/`PX.Data.dll` etc. —
   usually via `<HintPath>$(LibPath)...</HintPath>` fed by a `build.props`/similar file with a
   per-version `LibPath`. Point that path at the **target site's own `Bin` folder** — those assemblies
   are guaranteed version-exact for the site, same reasoning as the CodeRepository rule.
2. Redirect the build's output path to a **scratch folder, not the live site's `Bin`** — you don't want
   MSBuild writing into a running site's bin folder. Copy the rebuilt DLL into the customization
   package's own `Bin\` folder afterward, then re-zip/upload/publish through the normal package flow.
3. If the source zip is a partial export (missing an `<Import>`-referenced build-infra file, an
   NPM/NuGet `packages` folder, a `.sln`), **don't assume it's unbuildable.** Try stripping the imports
   that only affect assembly-versioning metadata or static-analysis tooling — they don't affect the
   compiled logic — and build the `.csproj` standalone first. It may well compile clean, especially if
   the vendor's own build config already lists a target matching the site's version; that's a strong
   signal the source itself is already compatible and only the shipped binary is stale.
4. **Windows' 260-character path limit is a real failure mode here**, silently disguised as an MSBuild
   error (`GetPathsOfAllDirectoriesAbove ... exceeds the OS max path limit`) rather than a clear "path
   too long" message. A deeply-nested extraction/temp path plus this kind of project's long nested
   folder names (`Graph Extensions\ExtensionsOnExtension\POOrderEntry\...`) can exceed it even when
   every individual folder name looks reasonable. Copy the source to something short like
   `C:\Temp\<name>Build` before invoking MSBuild if this happens.

### Getting the rebuilt DLL into the package

No need to hand-craft the Files-node XML schema. `BuildProject`'s `/include` / `/includeDirectory` are
built for exactly this:

```bash
PX.CommandLine.exe /website "<site>" /method BuildProject /in "<project folder>" /out "<package.zip>" /include "<dll path>" "Bin\<dll name>"
```

## Integrating a third-party .NET library

Acumatica's `Bin` folder is one shared AppDomain for the whole site — a third-party library's own NuGet
dependencies (Microsoft.Graph, Azure.Identity, Newtonsoft.Json, …) can easily collide with versions
Acumatica itself already ships internally. Prefer **rebuilding the third-party library pinned to
Acumatica's exact already-shipped versions** over bringing in its own copies of shared dependencies —
that way only the small library DLL itself needs adding, with zero risk to whatever else on the site
depends on those same libraries.

**Finding the exact versions to pin to, without guessing:**

- Reflect on the *actual* DLLs already in the site's `Bin` folder rather than trusting NuGet/GitHub
  docs for "what version should be there" — ground truth for what really loads at runtime:
  ```powershell
  [System.Reflection.AssemblyName]::GetAssemblyName('<site>\Bin\<name>.dll').Version
  ```
- Check the site's `Web.config` for existing `<bindingRedirect>` entries on those assembly names — if
  one exists, minor version mismatches in what you compile against get silently resolved up to
  Acumatica's shipped version for free.
- Check NuGet.org's flat-container index
  (`https://api.nuget.org/v3-flatcontainer/<id>/index.json`) for the exact package version matching a
  given assembly version, then pin to it. Also check that version's own `.nuspec` for what IT depends
  on — a downgraded direct dependency can still drag in a different transitive version than what's
  already on the site.
- If a library targets a much newer major version of a dependency than Acumatica ships (e.g. a
  Kiota-based Microsoft.Graph v6+ vs. Acumatica's older fluent v3.x), **pinning the package version
  alone isn't enough** — the calling convention differs and the library's own code needs a rewrite to
  match the older API surface. When public docs/GitHub don't have the exact historical version's source
  easily accessible, reflect directly on the real DLL instead of guessing from version-history
  knowledge: `Add-Type -Path` / `[System.Reflection.Assembly]::LoadFrom(...)`, then walk
  `.GetConstructors()` / `.GetMethods()` / `.GetProperties()` on the specific types needed.
