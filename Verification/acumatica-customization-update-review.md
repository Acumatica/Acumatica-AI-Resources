# Review: `acumatica-customization-update` Skill

## Consistency correction — 2026-10-16

Narrowed the DAC propagation guidance to automatic synchronization of existing definitions and schema, allowing for initial converter scaffolding. Replaced the blanket prohibition on TypeScript action declarations with case-specific diagnosis: the earlier 26.200.0368 instance check successfully used a converter-generated `PXActionState` declaration. Aligned PX.CommandLine examples with the required PowerShell shell. Updated DEV plugin manifests together to 1.3.2 and included all five skills in discovery guidance. These corrections use the existing instance evidence; no additional runtime test was performed.

## Instance verification — 2026-10-16

Created and published an isolated project with graph/cache extensions and Classic/Modern screen files on build 26.200.0368. Development-folder synchronization, file registration, frontend build and browser readback passed. This extends the earlier documentation review; CLI/API publication, BuildProject, Extension Library rebuild and persisted-schema upgrade remain outside the witnessed scope.

Runtime test fixtures were removed after verification. The test project, REST record, development sources, test article and Wiki were cleaned up. The results and coverage boundaries are summarized above; the documentation-review section below describes the earlier review stage.


## Initial 2026 R2 review — 2026-10-16 (before instance verification)

Reviewed the entrypoint, four references and site-inspection script using the repository verification checklist and current Skill Creator guidance. Updated illustrative site paths and the Help & Training Examples branch example to 2026 R2. Skill metadata is now 1.1.0. Restored the original DAC-pattern heading and contents link, and updated the source evidence to version 26.200.0368 from the tag on the checked-out source revision. Historical HTTP-example branch names remain because they describe earlier-version compatibility.

Rechecked the DAC guidance against the local 2026 R2 source checkout at `C:/Work/code`, tagged `26.200.0368`. Under `WebSites/Pure/PX.Objects`, `AP/DAC/APSetupApproval.cs` confirms the identity key, typed BQL field, `PrimaryKeyOf`/`FindBy` signature and absence of `[Serializable]`; `AP/DAC/AP1099Year.cs` confirms the composite primary-key variant and retains its serialization attribute. Neither these DACs nor `GL/DAC/GLSetup.cs` declares a CompanyID property. `GL/DAC/GLTran.cs` has no PXDefault on CostCodeID, and `GL/JournalEntry.cs` supplies its FieldDefaulting handler with e.NewValue and no e.Cancel assignment. `SM/MyProfileMaint.cs` and `CS/EXPluginPrefExt.cs` use PXUrl.SiteUrlWithPath; `NetTools/PX.Common/PXUrl.cs` confirms its namespace. BigCommerce and Amazon binding DACs use PXRSACryptString without a length argument. `NetTools/PX.Data/Descriptor/Attributes/DBFieldAttribute.cs` supplies IsViewDecrypted, while `Descriptor/Attribute.cs` defines the unbound PXString, PXInt and PXDateAndTime attributes. These source checks support retaining the guidance for 2026 R2 version 26.200.0368 and do not replace a publish/runtime test.

Skill validation, repository contribution validation and local-link validation passed. The script's executable logic is unchanged; only its example site path changed. No new P1, P2 or P3 findings were identified in this release update. At this initial review stage, no installed 2026 R2 site, Extension Library rebuild, package compilation, CLI/API publication or browser readback was exercised. The instance-verification section above records subsequent checks and remaining limits. The 2026 R1 review below is historical evidence and does not certify those behaviors on 2026 R2.

## Context (historical 2026 R1 review)

Reviewed the corrected skill package on 2026-08-26, including `SKILL.md`, its concise example request, four referenced Markdown guides, and the bundled PowerShell site-inspection script. The review checked discovery metadata, workflow safety, progressive disclosure, cross-reference integrity, script behavior, and repository packaging against Skill Authoring Best Practices, Skills Docs, the Complete Guide, and Skill Creator guidance. It also compared every file with the original source package. The original operational guidance remains present; package-bound DAC, graph-extension, `Code_*.xml`, and screen-editing discovery details were restored. The corrected folder name, portable script path, explicit required site root, contents lists, and omission of the platform-specific installation guide were retained.

## Verification Sources

| Abbreviation | Source |
|---|---|
| **[BP]** | [Skill Authoring Best Practices](https://code.claude.com/docs/en/best-practices) |
| **[SD]** | [Claude Code Skills Docs](https://code.claude.com/docs/en/skills) |
| **[CG]** | [The Complete Guide to Building Skills for Claude](https://resources.anthropic.com/hubfs/The-Complete-Guide-to-Building-Skill-for-Claude.pdf) (official Anthropic guide) |
| **[SC]** | Skill Creator skill instructions |

---

## Findings

### P1 — High Severity (likely to cause functional problems)

No P1 findings.

### P2 — Medium Severity (reduces quality or violates best practices)

No P2 findings.

### P3 — Low Severity (style/polish issues)

No P3 findings.

---

## Summary Table

| # | Severity | Finding | Source |
|---|----------|---------|--------|
| — | — | No remaining findings after corrections | — |
