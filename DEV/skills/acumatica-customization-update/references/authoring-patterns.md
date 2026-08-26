# Authoring patterns & conventions

Verified, reflection/CodeRepository-confirmed patterns. Consult reactively when you hit a specific
problem — DAC attribute questions, naming decisions, long-operation quirks, core-platform-screen access.

## Contents

- [Known-good DAC patterns](#known-good-dac-patterns-verified-against-real-current-product-source)
- [Actions in Modern UI](#an-action-showing-in-classic-ui-proves-nothing-about-modern-ui)
- [Long operations and interactive input](#long-operations-cant-pause-for-external-interactive-input)
- [Calling external APIs](#calling-an-external-api-from-graph-code)
- [Core platform screens](#working-with-a-core-platform-screen-that-has-no-coderepository-source)
- [Graph naming](#graph-naming-convention-official-reference)
- [Table and field naming](#tabledac-and-columnfield-naming-convention-official-reference)
- [Form types and numbering](#form-types-and-screenreport-numbering-convention-official-reference)

## Known-good DAC patterns (verified against real, current product source)

Confirmed by reading real DACs in an installed site's `CodeRepository` (26.100.0175), not assumed —
re-check against the site's own CodeRepository if something looks off, since these can shift between
versions.

- **Single-row/identity-keyed persisted DAC** (e.g. a "Setup" screen):
  ```csharp
  using PX.Data;
  using PX.Data.BQL;                              // for BqlInt/BqlString/... .Field<> markers
  using PX.Data.ReferentialIntegrity.Attributes;  // for PrimaryKeyOf<T> - separate namespace, easy to miss

  public class PK : PrimaryKeyOf<MyDac>.By<myKeyField>
  {
      public static MyDac Find(PXGraph graph, int? myKeyField, PKFindOptions options = PKFindOptions.None)
          => FindBy(graph, myKeyField, options);
  }

  #region MyKeyField
  public abstract class myKeyField : BqlInt.Field<myKeyField> { }
  [PXDBIdentity(IsKey = true)]
  public virtual int? MyKeyField { get; set; }
  #endregion
  ```
  Confirmed against `PX.Objects.AP.AP1099Year`, `PX.Objects.AP.APSetupApproval`.
- **`CompanyID` is never a field on the DAC**, even for DACs that do declare a `PK`/identity key — it's
  SQL-schema-only; the platform filters on it automatically. Confirmed against `GLSetup`, `AP1099Year`,
  `APSetupApproval` — none declare a `CompanyID` property.
- **`[Serializable]` on the DAC class is an old pattern, not needed on current `PXBqlTable` DACs.**
  Confirmed against `APSetupApproval` — no `[Serializable]` at all. (Some real DACs, e.g.
  `AP1099Year`, still carry it as leftover boilerplate from before `PXBqlTable`/typed-BQL-field DACs
  existed — don't take a real DAC's presence of an attribute as proof it's still needed; prefer the
  cleanest confirmed example over the most common one.)
- **Encrypted/secret string fields** use `PXRSACryptString` in place of `PXDBString`, typically
  **without an explicit length argument** (e.g. `[PXRSACryptString(IsUnicode = true)]`), and with
  `IsViewDecrypted = false` to mask the value in the UI. Confirmed against
  `PX.Commerce.BigCommerce.BC.DAC.BCBindingBigCommerce` and `PX.Commerce.Amazon`, where a plain
  `PXDBString(50, ...)` field was swapped to `PXRSACryptString` with the length parameter dropped.
- **A field does NOT need `[PXDefault]` for a `FieldDefaulting` event handler to fire.** The event fires
  as part of the framework's normal defaulting pipeline for any persistable field regardless of
  attributes present; `[PXDefault]` is only for *declarative* defaults (a literal value or a type-based
  default), not a prerequisite for a custom `Events.FieldDefaulting<Dac, dac.field>` handler. Confirmed
  against `PX.Objects.GL.GLTran.CostCodeID`, which has no `[PXDefault]` at all yet has a
  `FieldDefaulting` handler in `JournalEntry.cs`. Don't add `[PXDefault]` "just in case".
- **To default a field to the current Acumatica instance's own URL** (a webhook/callback/manifest URL
  pointing back at this site), use `PXUrl.SiteUrlWithPath()` inside a `FieldDefaulting` handler.
  **`PXUrl` is in namespace `PX.Common`, not `PX.Data`** — `using PX.Data;` alone compiles fine at a
  glance but fails at actual publish time with `CS0103: The name 'PXUrl' does not exist in the current
  context` (not the `CS0246` you'd expect for a missing namespace). Confirmed against two real,
  directly analogous features: `PX.SM.MyProfileMaint.DownloadOutlookManifest` and
  `PX.Objects.CS.EXPluginPrefExt` — both build add-in manifest URLs the same way, both `using PX.Common;`.
- **Don't set `e.Cancel = true` in a `FieldDefaulting` handler without a reason.** Not needed when no
  `[PXDefault]` attribute is competing with it, and not present in the real reference handler
  (`GLTran.CostCodeID`'s in `JournalEntry.cs`, which just sets `e.NewValue` and returns).
- **Use unbound fields (`PXString`/`PXInt`/`PXDateAndTime`, not the `PXDB*` equivalents) for state
  that's only ever valid for the current session** — e.g. a pending step's intermediate values between
  two related button clicks. Persisting session-only state to the database is unnecessary (seen with
  device-code sign-in state that expires in ~15 minutes regardless). All three exist as real unbound
  attributes, confirmed via CodeRepository.

### An action showing in classic UI proves nothing about modern UI

Took five rounds to fix once — most of them plausible-looking dead ends:

1. `[PXProcessButton]` instead of `[PXButton]` — a real, separate gotcha (`PXProcessButton` is for batch
   "Process"/"Process All" actions tied to a `PXProcessing<>` grid; without that grid it renders in
   classic UI but not modern), just not what was blocking these buttons.
2. Matching every real CodeRepository example's shape — PascalCase field, camelCase method (same word,
   first letter lowercased), `IEnumerable methodName(PXAdapter adapter) { ...; return adapter.Get(); }`
   instead of `void MethodName()` — still good general practice (confirmed against
   `KioskMaint.LogIn`/`logIn`, `MyProfileMaint.DownloadLegacy365Manifest`, `CarrierPluginMaint`), but
   didn't fix it.
3. `[PXHidden]` on the DAC — ruled out directly; the buttons were missing before it was introduced. (A
   real community thread does list removing `[PXHidden]` as part of a fix for the identical symptom in a
   *different* case — worth checking if you hit this fresh.)
4. Removing `MapEnableRights`/`MapViewRights` from `[PXUIField]` — no effect.

**The actual fix:** do **not** declare the action as `ActionName: PXActionState;` in the screen's
TypeScript class at all. Declaring it is what suppressed rendering — removing the declaration (so modern
UI auto-discovers the action straight from the graph's `PXAction` member) is what made it appear. No TS
declaration is needed for a plain action with no special client-side behavior; most real screens simply
never declare their simple actions.

**General lesson:** for a bug this stubborn, "confirmed against real examples" is still a hypothesis
until an actual retest confirms it. And the fix here was an *absence* to restore, not a presence to add —
check what's needlessly *there* as much as what's missing.

## Long operations can't pause for external interactive input

Before designing any action that needs to show the user something *while it's running* (a code to copy,
a link to click) and then continue once they've acted on it elsewhere, verify what `PXLongOperation`
actually supports via reflection — don't assume:

```powershell
$asm = [System.Reflection.Assembly]::LoadFrom("<site>\Bin\PX.Data.dll")
$asm.GetType("PX.Data.PXLongOperation").GetMethods([System.Reflection.BindingFlags]::Public -bor [System.Reflection.BindingFlags]::Static)
```

Reflection confirmed there is **no live free-text status channel** — only enum status
(Running/Completed/Aborted) and generic custom key-value info, not something the standard progress popup
displays while running. A message queued to show only *after* the blocked call returns is useless if the
call doesn't return until the user acts on that same message.

**The fix, in general:** split into two separate actions/button clicks rather than one call that tries
to pause mid-flight:

1. A fast, synchronous action (no `PXLongOperation` needed) that kicks off the external process and
   writes whatever the user needs to see (a code, a link) directly into a field, returning immediately.
2. A second action ("Complete…" / "Check status…") the user clicks after acting on that info elsewhere —
   this one polls/checks for completion, reports back if still pending (without looping), and only
   reaches into an actual `PXLongOperation` for further work once no more external waiting is needed.

## Calling an external API from graph code

Official example: https://github.com/Acumatica/httpRequestExample. The real pattern (verbatim from
`PX.Objects.CS/ARSetupMaint_Extension.getDataFromExternalAPI`) — get an `HttpClient` via
`IHttpClientFactory` (`[InjectDependency]`, **not** `new HttpClient()`), then:

```csharp
responseBody = Base.LongOperationManager.Await(async (CancellationToken token) =>
{
    HttpResponseMessage response = await client.GetAsync("...", token);
    response.EnsureSuccessStatusCode();
    return await response.Content.ReadAsStringAsync();
});
```

called **directly in the action method** — no separate `PXLongOperation.StartOperation` wrapper needed,
`Await` itself is the framework-safe bridge. (Plain `.GetAwaiter().GetResult()` on an async call blocks
an ASP.NET request thread outright — thread-pool-starvation risk under load, not a style nitpick.)

`LongOperationManager` is a property on `PXGraph` itself (`this.LongOperationManager` in the graph,
`Base.LongOperationManager` from a `PXGraphExtension`) — but `Await` is declared on a *base* interface of
what that property returns (`PX.Async.ILongOperationManager`, inherited by `IGraphLongOperationManager`),
so reflecting on just the returned type's own declared members won't find it. Check inherited interfaces too.

**`Await` is not available on Acumatica 25R2** — only later versions. If a project must support 25R2 (or
you're unsure of the minimum supported version), check `httpRequestExample`'s version-specific branches
(`2025r1`, `2025r2`, `2026r1`) rather than the default one. The `2025r2` branch uses the lower-level
pattern `Await` is built on, and works on every version:

```csharp
var key = Guid.NewGuid();
Base.LongOperationManager.StartAsyncOperation(key, async cancellationToken =>
{
    // ...await work..., assign the result to a variable captured by closure
});
Base.LongOperationManager.WaitCompletion(key);
var details = Base.LongOperationManager.GetOperationDetails(key);
if (details.Status == PXLongRunStatus.Aborted)
{
    throw details.Message != null ? details.Message : new PXException("The operation was aborted unexpectedly.");
}
```

Worth wrapping in a small generic helper (`RunAndWait<T>(Func<CancellationToken, Task<T>>)`) if needed at
more than one call site — key by a fresh `Guid.NewGuid()` per call, **not** `graph.UID` (that convention
belongs to `PXLongOperation.StartOperation(PXGraph, ...)` overloads, a different API from
`LongOperationManager`'s own key-based ones).

## Working with a core platform screen that has no CodeRepository source

Some screens (e.g. OpenID Providers, SM303020) are core platform features whose source isn't in
`App_Data/CodeRepository` — only compiled DLLs. To create/update a record on one of these from your own
graph code:

1. **Find the DAC and graph by reflecting on a plausibly-named DLL in the site's `Bin`** —
   `[System.Reflection.Assembly]::LoadFrom(...)`, then `GetTypes()` (wrap in try/catch for
   `ReflectionTypeLoadException` and fall back to `.Types` on the exception — large assemblies often
   partially fail to load some types, which shouldn't stop you from seeing the rest) filtered for
   plausible names (`*Maint*`, `*Provider*`, …).
2. **`GetProperties()`/`GetMethods()`/`GetFields()` work fine** for structure (property names/types,
   graph views/actions) — reflecting on a DLL directly is reliable ground truth for the exact installed
   version.
3. **`GetCustomAttributes()` can fail** outside a live Acumatica AppDomain (seen: a `PXExtensionManager`
   type-initializer exception) — so `PXUIField` display names/captions aren't reliably readable this way.
   When you need the exact field a UI control is bound to (not just "some property that sounds right"),
   **read the screen's actual `.aspx` markup** in `Pages/<Module>/<ScreenID>.aspx` — the literal
   `DataField="..."` attributes are ground truth, and can reveal a name nothing like the UI label (a
   checkbox labeled "Use Provider for Sign-In to Acumatica Add-In for Outlook" turned out to bind to
   `ProviderForOutlook`, not the more obvious `LoginTypeID`).
4. **A property mentioned in the UI might not be on the base DAC at all** — check DAC *extensions*
   (`PXCacheExtension<T>`) in other assemblies too. `ProviderForOutlook` lived on
   `OidcProvider_OutlookExt` in a completely different DLL (`PX.Api.Outlook.dll`) than the base
   `OidcProvider` DAC (`PX.OidcClient.dll`) — found by grepping every plausibly-related DLL in `Bin` for
   a type with that exact property name. Access it via
   `PXCache<BaseDac>.GetExtension<TheExtension>(row).TheField`.
5. Code written this way can't be locally compiled/tested first (core platform assemblies aren't
   something `dotnet build` can target outside Acumatica) — the first real compile is at publish time.
   Verifying every type/property/method name via reflection *before* writing the code is what makes that
   first compile succeed.
6. **A built-in action's `.Press()` may not run to completion before returning**, if that action fetches
   external data as its own internal `PXLongOperation`. Hit with `OidcProviderMaint.Autoconfiguration`
   (fetches the tenant's OIDC discovery document): calling `Save.Press()` right after
   `Autoconfiguration.Press()` failed with `'Authorization Endpoint' cannot be empty` because Save ran
   before the fetch finished populating those fields.
   **The fix needs the right key:** `PXLongOperation.WaitCompletion(graph.UID)` — the **`.UID` Guid**,
   not the graph reference. `WaitCompletion(graph)` looks right and compiles fine but silently does
   nothing: `StartOperation(PXGraph graph, ...)`-style overloads track the operation keyed by
   `graph.UID`, so a `WaitCompletion` keyed on anything else matches no tracked operation and returns
   immediately — a false-negative "wait" that never waits. When passing a key to any long-operation API
   (`WaitCompletion`, `GetStatus`, `SetCustomInfo`, …), match exactly what the original `StartOperation`
   used.
   A plausible-looking alternative hypothesis for the same symptom (`View.Insert(item)`/`View.Update(item)`
   with an already-fully-built object validating the row immediately) was a **red herring** —
   `Insert(item)` with a pre-built object works fine once the `WaitCompletion` key is correct.

## Graph naming convention (official reference)

From Acumatica's "Graph Naming" documentation (beacon.acumatica.com Developer Resources). Structure:
`<Prefix><ShortDescription><Suffix>`, English letters only, ≤255 characters including namespaces.

**Prefix** — the functional area. Every standard module has a reserved two-letter prefix (`AP` accounts
payable, `AR` accounts receivable, `GL` general ledger, `IN` distribution, `SO` sales orders, `PO`
purchase orders, `CR` CRM, `CS` configuration, `SM` system management, `OU` Outlook integration / CRM,
and many more — the full table is in the source doc). Some prefixes are marked **Internal** (`DC`, `IS`,
`PS`, `UN` — reserved, don't reuse); the rest are tied to a licensed **System feature**. For a custom
functional area not covered by an existing prefix, introduce your own — just don't collide.

**Suffix** — the form type:

- **`Maint`** — maintenance/setup forms (`CountryMaint`, `CSAttributeMaint`).
- **`Entry`** — data-entry forms for business documents (`SalesOrdersEntry`, `POOrderEntry`).
- **`Inq`** — inquiry forms, a filtered list of records (`SalesOrderInq`).
- **`Process`** — mass-processing forms (`SalesOrderProcess`).

## Table/DAC and column/field naming convention (official reference)

From "Naming Conventions for Tables (DACs) and Columns (Fields)". Applies to both the DB schema and the
matching DAC — they must use identical names and casing, since the Project Editor generates one from the
other in whatever letter case the other uses.

- Table/column names must be valid C# identifiers (no leading digit) and **must not contain an
  underscore** — a reserved symbol in the framework (`TenantType` valid, `Tenant_Type` invalid). Project
  *names* reject underscores too; the framework is consistent about this across several name types.
- Table names are **singular nouns** (`SOShipment`, not `SOShipments`).
- **Table names carry two two-letter prefixes**: functional area + application module (`RSSVAppointment`
  = a custom "Repair Services" area (`RS`) inside the Services module (`SV`)). For a table in your own
  customization's own schema, no `Usr` prefix is needed on its columns.
- **Columns added to an existing *Acumatica ERP* table must start with `Usr`** (`UsrColumn`) so an
  upgrade doesn't clobber them — and **custom indexes on ERP tables need the `Usr` prefix too**, not
  just columns. Don't alter standard columns, constraints, or indexes.
- DAC name length (including namespaces) ≤ 255 characters; English letters only.

**Recommended column/field suffixes** (not enforced, but every real DAC in CodeRepository follows them):
`ID` (surrogate/identity key, `CustomerID`), `CD` (natural key, `CustomerCD`), `Nbr` (numbering
identifier, `OrderNbr`), `Price`/`Cost`/`Amt`/`Total` (`UnitPrice`/`UnitCost`/`FreightAmt`/`OrderTotal`),
`Qty`/`QtyMin`/`QtyMax` (`OrderQty`), `Date` (`OrderDate`), `Time` (`BillableTime`), `Pct` (`DiscountPct`).

**Reserved — do not reuse:**

- The **`Company`** prefix is reserved for the identity-key fields `CompanyID`/`CompanyMask` — no other
  column may start with `Company`.
- These exact names are reserved for system use: the audit fields (`CreatedByID`, `CreatedByScreenID`,
  `CreatedDateTime`, `LastModifiedByID`, `LastModifiedByScreenID`, `LastModifiedDateTime`), `TStamp`
  (concurrency/row-versioning), `NoteID` (note/file attachments), `DeletedDatabaseRecord` (soft-delete
  preservation), `DatabaseRecordStatus` (document archival), `CompanyID`/`CompanyMask` (multitenancy),
  `BranchID`/`UsrBranchID` (multi-branch), and `CuryRate` (the default field
  `PX.Objects.CM.CurrencyInfoAttribute` uses for the currency rate).

## Form types and screen/report numbering convention (official reference)

From "Form Types" and "Form and Report Numbering".

**The six form types:**

- **Data entry** — input of business documents/records (sales orders, cases). Most common type.
- **Maintenance** — define records of a type that are then *selected* (not typed) elsewhere, added
  rarely relative to data entry (e.g. AR credit terms, selected when entering an AR invoice). Unlike a
  fixed drop-down, any authorized user can add a new one and it's immediately selectable.
- **Setup** — administrator-configured parameters for a functional area, stored as a **single record** in
  the module's setup table (feature toggles, default behavior, numbering settings). Single-row-per-company,
  no key beyond `CompanyID`, matching the `GLSetup`-style DAC pattern.
- **Inquiry** — a Selection-area filter plus a grid of filtered results; no editing.
- **Processing** — invokes an operation across multiple selected records at once (e.g. mass status change).
- **Substitute** — a generic inquiry standing in for a data-entry/maintenance form's own list view:
  clicking the entry form's name from a workspace/search opens this list, and clicking a record opens the
  real entry form for it.

**Form numbering:** `XX999999` — two-letter module code, then a 2-digit **screen type** (`10` Setup, `20`
Maintenance, `30` Data Entry, `40` Inquiry, `50` Processing, `60` Reports), then a screen sequential
number, then a subscreen sequential number. For a custom functional area, the two-letter module code must
not collide with a reserved prefix from the graph naming table above.

**Report numbering** extends the same scheme with a report-type digit in place of the tens digit of the
screen-type code: `XX6X9999` where the type digit is `1` review (pre-release document review), `2`
register (audit info on processed documents/entities), `3` balance (current/historical balances), `4`
forms (printed webpages), `5` inquiry reports (operational status info), `6` statistical reports.

Worth checking on any existing customization: the screen number should match what the screen actually is.
A single-row Setup form numbered `XX50xxxx` (Processing) is a real mismatch — the platform never warns
about it, and it only surfaces by reading this convention.
