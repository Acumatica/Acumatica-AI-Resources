# Publishing: PXCommandLine, the publish pipeline, and the REST API

`PX.CommandLine.exe` (in the target site's `\Bin`) pushes a project to a site without the browser
Editor. It is a thin launcher: it spins up the site's application host and hands the arguments to the
platform's offline-publish entry point, so everything below runs *inside* that site's app domain and
against that site's assemblies.

If you run the exe from somewhere other than the site's `Bin`, pass `/website "<site root>"`
explicitly — otherwise the tool insists on being located in a `Bin` folder.

## Contents

- [Core workflow](#core-workflow)
- [Full method reference](#full-method-reference)
- [Gotchas](#gotchas-learned-the-hard-way)
- [Validating without publishing](#validating-without-publishing)
- [Publish pipeline](#what-publish-actually-does)
- [Database scripts](#database-scripts-order-idempotency-tenants)
- [Modern UI requirements](#modern-ui-publish-requirements)
- [Publish artifacts](#what-publish-leaves-behind-on-the-site)
- [Customization Web API](#publishing-over-rest-customization-web-api)

**Exit codes:** `0` success, `1` a check reported failures (validation / upgrade status), `2` an
exception occurred (the exception text goes to stdout).

## Core workflow

`BuildProject` → `UploadCustomization` → `PublishCustomization`. Never manually zip an
export-to-folder layout — that layout is not the package `.zip` format the tool expects.

```bash
PX.CommandLine.exe /website "<site root>" /method BuildProject /in "<project folder>" /out "<package.zip>"
```

(requires administrator privileges), then:

```bash
PX.CommandLine.exe /website "<site root>" /method UploadCustomization /path "<package.zip>" /name "ProjectName" /replace
```

(`/name` is optional — defaults to the package file name without extension; `/replace` only needed if
a project with that name already exists), then:

```bash
PX.CommandLine.exe /website "<site root>" /method PublishCustomization /name "ProjectName" /merge
```

## Full method reference

| `/method` | Arguments | What it does |
| --- | --- | --- |
| `BuildProject` | `/in <folder> /out <zip>`; optional `/description <text>`, `/level <N>`, `/include <srcFile> <destInPackage>` (repeatable), `/includedirectory <srcDir> <destDir>` (repeatable), `/system <file>` (repeatable) | Turns a source folder into a package `.zip`. `/include*` is how prebuilt DLLs get into the package. |
| `UploadCustomization` | `/path <zip>`; optional `/name <projectName>`, `/replace` | Stores the package in the site's database. Does not publish. |
| `PublishCustomization` | `/name "A\|B\|C"`; optional `/merge`, `/skipPreviouslyExecutedDbScripts` | Publishes one or more projects (names separated by `\|`). |
| `ValidateCustomization` | `/src <site folder>` | Validates + compiles a published document taken from another site against *this* site. See below. |
| `ValidateExtensions` | optional `/output json` | Validates the graph/cache extensions currently loaded in the app domain. Exit code 1 on errors. |
| `MergePackages` | `/packages "path;name\|path;name\|..."` | Merges several packages into one document/package. |
| `UpdatePages` | `/path <package or folder>`; optional `/replace`, `/differentsources`, `/aspxfiles <a> <b> ...` | Rebuilds page customizations against the current site's pages. |
| `DeleteProject` | `/name <projectName>` | Deletes the project from the site's database. |
| `RemoveCustomization` | — | Strips *all* customization from the site. |
| `RunPluginsUpdate` | — | Runs customization plug-ins' `UpdateDatabase()` on their own, replaying DB scripts. |
| `UpgradeCustomization` | — | Reports upgrade status; exit code 1 plus a message if the site is not in a publishable state. |
| `CompileJs` | optional `/dev` | Compiles the modern-UI frontend sources without a full publish. |
| `RunTest` | — | Just brings up the site's application host (up to ~5 minutes) — a quick "does this site even start" check. |

Check the argument list of any unfamiliar method before running it against a live site; several of
them default to the destructive option.

## Gotchas learned the hard way

1. **`PublishCustomization` defaults to unpublishing every other published project on the site**
   except the ones named in `/name`. Always pass `/merge` unless a full replace-everything-else is
   genuinely intended — the single biggest gotcha in the tool.
2. **The CLI replays *all* database scripts by default.** The browser Editor publishes with the "skip
   previously executed scripts" optimization on; the CLI publishes with it **off** unless you pass
   `/skipPreviouslyExecutedDbScripts`. Non-idempotent scripts that appear to work in the UI will fail
   from the CLI.
3. **The real compile check happens at publish time** — with one exception (see validation below).
   `ValidateExtensions` only inspects extensions already loaded in memory, not an
   uploaded-but-unpublished project.
4. **No PXCommandLine method downloads a project's current live state** for comparison before
   overwriting it with `/replace`. Use the Customization Web API instead — `GetProject` answers
   directly whether the live project diverged from a file-system export.
5. **Never perform the Web API sign-in yourself** — it requires entering a password, which is off the
   table regardless of who's asking or whose system it is. Hand the user a script that prompts for the
   password locally (`Read-Host -AsSecureString`) and have them run it; only the non-sensitive result
   (`hasConflicts`/`log`) should come back.
6. **Run it via PowerShell, not Git Bash.** Git Bash's MSYS layer silently mangles leading-`/`
   arguments (treating `/method` etc. as filesystem paths), so the exe sees no arguments at all and
   reports `/method parameter is required` even though flags were passed.
7. **Project names can't contain underscores** (or other special characters) —
   `UploadCustomization /name "Some_Name"` fails with `Invalid project name`. Use plain alphanumeric.

## Validating without publishing

`ValidateCustomization /src <folder>` is not "cross-version upgrade validation" in some narrow sense —
it reads exactly `<folder>\App_Data\CustomizationPublishedDoc.zip` (the site's snapshot of its merged
published document, which is a *standard package* archive) and runs the full check against the
**current** site: binary/assembly reference resolution, SQL-script schema checks, a real website
compile of the code items, per-item validation rules (warnings vs errors), and finally graph/cache
extension validation.

Consequences worth exploiting and worth fearing:

- Because the input is just a package archive at a known path, you can point `/src` at a scratch folder
  where you placed **your own built package** as `App_Data\CustomizationPublishedDoc.zip`, and get a
  genuine pre-publish compile check against the target version. *(Derived from the platform source;
  verify with one run before relying on it in a pipeline.)*
- **It is not read-only.** The validation copies the document's files into the current site (and records
  a rollback list for DLLs) before compiling. Do not run it against production.
- **If the zip is not at that path, the method returns silently with exit code 0.** Silence is not
  proof of validation — check that the file exists first.
- It needs `CustomizationTempFilesPath` in `web.config` (or the same key passed as an argument).
- Pointing `/src` at the same live, running site you are validating against fails with an
  infrastructure error — use a separate source folder.

## What publish actually does

Useful when reading a publish log or explaining a failure:

1. Load each selected project from the database into a document.
2. Merge multiple projects into one document. Code files with colliding names are disambiguated by
   prefixing the project name; conflicts are logged but do not block publish.
3. Validate: compile the code items against the site's assemblies, load Extension Library DLLs,
   validate graph/cache extensions and item references. **Errors block, warnings do not.**
4. Apply database changes (ordering below).
5. Deploy files: DLLs → `Bin`, ASPX → `Pages`, modern-UI sources → `FrontendSources`, reports →
   `Reports`, everything else to its own location. The merged document is saved to
   `App_Data\CustomizationPublishedDoc.zip`.
6. Compile the modern-UI frontend sources.
7. Run `CustomizationPlugin.OnPublished()` — files are in place, the site has not restarted yet.
8. Restart / reload the application.
9. Run `CustomizationPlugin.UpdateDatabase()` — now the customization's own business logic is
   available, so this hook can manipulate data through the application layer.

## Database scripts: order, idempotency, tenants

- **Order is by kind, not by the order of files in the project.** Scripts flagged to run early go
  first, then declarative table-schema items, then table items, then ordinary scripts, then the rest.
  Within one kind, the author-defined order holds. Do not rely on file naming to sequence a
  dependency — express it through the script kind or make each script self-sufficient.
- **Idempotency is mandatory**, because a script runs again on every publish-with-cleanup and after
  every upgrade (upgrade unpublishes the customization, upgrades the site, then republishes):
  `IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = '...')` before `CREATE TABLE`,
  `IF COL_LENGTH('<table>', '<col>') IS NULL` before `ALTER TABLE ... ADD`, and an existence check
  before seed `INSERT`s.
- **Data-migration scripts should carry their own version marker** so they run once and stay harmless
  afterwards.
- **Tenants:** publish can target the whole website or specific tenants. Scripts may therefore run per
  company — never assume a single `CompanyID`.

## Modern UI publish requirements

Publishing anything under `/FrontendSources` triggers a frontend build on the site, which needs a
working Node/npm toolchain there. On developer sites this is the most common publish failure that has
nothing to do with your code. `PX.CommandLine.exe /method CompileJs [/dev]` runs that build on its
own, which is the quickest way to tell a frontend-toolchain problem apart from a real customization
error.

## What publish leaves behind on the site

- `App_Data\CustomizationPublishedDoc.zip` — the merged document currently published.
- `App_Data\RollbackFiles` — backups of every site file the publish replaced; unpublish restores from here.
- `CstPublished\` — the platform's snapshot of published files, used to detect later manual edits.
- `App_RuntimeCode\` — where code items compiled at publish time end up.

## Publishing over REST (Customization Web API)

When you cannot reach the site's file system, the same operations are available over HTTP. Sign in with
`POST /entity/auth/login`, then:

| Endpoint | Purpose |
| --- | --- |
| `POST /CustomizationApi/GetProject` | Download the live project; `{"projectName": "...", "IsAutoResolveConflicts": false}` and the response's `hasConflicts` tells you whether the live project diverged from a file-system export. |
| `POST /CustomizationApi/Import` | Upload a package: `ProjectName`, `ProjectDescription`, `ProjectLevel`, `ProjectContentBase64`, `IsReplaceIfExists`. |
| `POST /CustomizationApi/PublishBegin` | Start publishing named projects; options include replaying previously executed DB scripts and the tenant list. |
| `POST /CustomizationApi/PublishEnd` | Poll for completion — publishing is asynchronous, so a script must loop here rather than assume `PublishBegin` finished the job. |
| `POST /CustomizationApi/GetPublished` | List what is currently published. |
| `POST /CustomizationApi/UnpublishAll` | Unpublish everything. |
| `POST /CustomizationApi/Delete` | Delete a project. |

The password rule applies here too: the sign-in is the user's to perform.
