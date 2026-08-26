# Customization project layouts, file by file

A customization arrives in one of two shapes. Identify which before doing anything else — the build
step differs completely.

## Contents

- [Shape A — export-to-folder layout](#shape-a--export-to-folder-layout-source-form)
- [Shape B — flat packaged ZIP](#shape-b--flat-already-packaged-zip)
- [Useful sources](#useful-sources-in-priority-order)

## Shape A — export-to-folder layout (source form)

Produced by the Customization Project Editor's "Export to Folder", used for source-controlling
customizations. Has `/Pages`, `/FrontendSources`, `/_project`. **Must** be turned into a package with
`BuildProject` before upload.

### `/Pages/<ScreenGroup>/`

Classic Web Forms (ASPX) UI for the screens in the customization:

- **`*.aspx`** — page markup. Declares the `PXDataSource` (graph type + primary view) and the
  `PXFormView`/`PXGrid` layout for the classic (desktop) UI. Edit this to add or arrange fields,
  tabs, and grids on the classic screen.
- **`*.aspx.cs`** — code-behind. Normally only page lifecycle hooks (e.g. `Page_Load`) for UI-specific
  logic that doesn't belong in the graph. Most logic should live in the graph, not here.

### `/FrontendSources/screen/src/development/screens/<ScreenGroup>/<ScreenID>/`

Modern (Aurelia-based) UI source for the same screens:

- **`*.ts`** — TypeScript screen definition. Declares the screen class, links it to the graph via
  `@graphInfo` (graph type + primary view), and declares view/field bindings (`createSingle` /
  `createCollection`) mirroring the graph's DACs and views.
- **`*.html`** — the screen's template markup (fieldsets, grids, layout) binding to the fields
  declared in the matching `.ts`.

These two together define the modern-UI rendering and must be kept in sync with the graph's views and
DACs — and with the classic `.aspx`. Acumatica generates neither UI from the other.

### `/_project/`

The actual package contents: XML fragments merged into the project package on import/build. Normally
generated/updated by the Project Editor rather than hand-edited:

- **`ProjectMetadata.xml`** — `<project name="..." level="..." description="..." />`. `level` is the
  merge priority when several projects are published together.
- **`Code_<GraphName>.xml`** — the graph's C# source as CDATA. Where the `PXGraph`, its views
  (`PXSelect`/`PXFilter`), actions (`PXSave`/`PXCancel`/`PXAction`), and any DACs are actually defined.
  **This is where DAC fields, business logic, and DAC attributes go — not in the aspx/ts files.**
- **`ScreenWithRights_<ScreenID>.xml`** — access rights: which roles, at what level.
- **`SiteMapNode_<GUID>.xml`** — site map registration: title, URL, menu position, workspace placement.
- **`pages_<screenid>_aspx.xml`** — the packaged/encoded form of the corresponding `.aspx`; mirrors
  `/Pages/...` in the compressed format the package uses internally.
- **`Sql_<TableName>.xml`** — DB script for a custom table backing a persisted DAC: a declarative
  `<table>`/`<col>`/`<index>` schema (not raw T-SQL) in CDATA. Every custom table needs a `CompanyID`
  column (`type="Int" default="Zero"`, part of the primary key) for tenant isolation — **this column
  lives in the SQL schema only, never as a field on the C# DAC**; the platform injects and filters on
  it automatically. Plus the same audit columns the DAC declares (`CreatedByID`, `CreatedByScreenID`,
  `CreatedDateTime`, `LastModifiedByID`, `LastModifiedByScreenID`, `LastModifiedDateTime`, `tstamp`).
  Update this file whenever a persisted DAC's fields change.

### Other item types a project can hold

Not limited to pages + graph code + SQL. The same `_project` folder can carry, one XML per item:
generic inquiries, RPX reports, dashboards, workflow definitions (states/transitions/actions/handlers),
modern-UI screen configuration, DAC extensions (`PXCacheExtension`), declarative DB table items,
contract-based API endpoints, webhooks, OAuth clients, push notifications, import/export scenarios,
localization/locale data, wiki articles, exported table data, deleted-records-tracking registrations,
mobile site map and workspaces, per-tenant files, and prebuilt DLLs (Extension Library) that land in
the site's `Bin`.

Code can also include a class derived from `CustomizationPlugin`, whose `OnPublished()` and
`UpdateDatabase()` hooks run at defined points of the publish pipeline (see `publishing.md`).

### How this folder maps to the package

Worth knowing exactly, because it explains what you may edit by hand and what you may not:

- On `BuildProject`, the platform first loads every XML in `/_project` (skipping `ProjectMetadata.xml`,
  read separately) and treats them as the item definitions.
- Then it walks **all other files in the tree**. If a file's path matches a file item already declared
  in `_project`, the **on-disk file supplies the content** and the XML only supplies metadata. That is
  why editing `/Pages/*.aspx` or the modern-UI sources actually changes the resulting package, even
  though `_project` contains a mirrored copy.
- If a file's path is *not* declared in `_project` at all, it is added automatically as a new file item
  under that relative path (or a per-tenant item when it sits under the modern-UI `...\development\...`
  path). **A new file can be added to the project simply by dropping it into the right place in the
  tree** — no XML editing required.

Practical consequence: treat `/Pages` and `/FrontendSources` as the editable source of truth for UI
*layout*; the `/_project` XML is largely regenerated from those plus the graph code on build/export.

## Shape B — flat, already-packaged `.zip`

`project.xml` at the root (graph/DAC C# embedded directly as CDATA, `<Table>`/`<DAC>` entries for
schema, `<PerTenantFile>` entries pointing at a `screens/` folder for the modern-UI `.html`/`.ts`),
with no `/Pages`, `/FrontendSources`, `/_project` split at all.

Upload-ready as-is: **skip `BuildProject`** and go straight to `UploadCustomization`. Running
`BuildProject` against it is the wrong step — that method turns Shape A into a package, it does not
repackage an already-packaged zip. To fix something, edit the extracted `.html`/`.ts`/CDATA content
directly and re-zip with `Compress-Archive` (or equivalent) before re-uploading.

## Useful sources, in priority order

1. **The site's own `App_Data\CodeRepository`** — the installed product's actual source (DACs, graphs,
   everything). The single best reference for version-exact patterns: namespaces, attribute usage,
   key/audit-field conventions. Guaranteed to match the platform version you're building against,
   unlike public docs which may target a different release. It also confirms the exact installed
   version instead of guessing. **If you don't know this folder's path for the site at hand, ask —
   don't guess or scan the filesystem.** Grep it for real examples before falling back to anything
   below (e.g. `grep -rn "PrimaryKeyOf" CodeRepository\PX.Objects\<Module>` for real DAC key patterns).
2. **Acuminator** — Roslyn-based static analyzer/VS extension for Acumatica code:
   - Repo: https://github.com/Acumatica/Acuminator
   - Coding guidelines: https://github.com/Acumatica/Acuminator/blob/dev/docs/dev/CodingGuidelines/CodingGuidelines.md
   - Diagnostics reference, one page per rule: https://github.com/Acumatica/Acuminator/blob/dev/docs/Summary.md
3. **Acumatica Beacon** (https://beacon.acumatica.com/) — official docs portal; naming conventions,
   architecture, BQL/data-querying rules, graphs, and the customization guide live under **Developer
   Resources**. It's a JS-rendered SPA serving pages behind session-specific hashed URLs, so stable
   direct links to topics can't be looked up automatically — browse Developer Resources and search
   from there.
4. **Help & Training Examples** — official samples from the developer guides and training courses.
   Check out the branch matching the ERP version (e.g. `2026R1`):
   https://github.com/Acumatica/Help-and-Training-Examples
5. **HTTP Request Example** — calling an external API from graph code, with per-version branches:
   https://github.com/Acumatica/httpRequestExample — see `authoring-patterns.md` for the verbatim
   pattern and the 25R2 caveat.

**Avoid third-party blogs and VAR sites** as sources for Acumatica conventions — stick to the site's
own CodeRepository and the official sources above.
