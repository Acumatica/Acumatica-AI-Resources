# Review: `acumatica-modern-ui-control-builder` Skill

## Instance verification — 2026-10-16

Compiled, published and rendered a reusable control on build 26.200.0368. Bindable input, graph attached field, empty-value recovery, qp-button, screen-updated payload and detach/reattach checks passed; one subscription and zero detached callbacks remained. The first C# compile exposed missing PX.Objects.Common imports in both skill examples. Added those imports; subsequent compilation and displayed values passed. Browser warning/error capture was empty. Existing-screen extension placement and persisted-record navigation were not exercised.

Runtime test fixtures were removed after verification. The test project, REST record, development sources, test article and Wiki were cleaned up. The results and coverage boundaries are summarized above; the documentation-review section below describes the earlier review stage.


## Initial 2026 R2 review — 2026-10-16 (before instance verification)

Reviewed the entrypoint, agent metadata, reference patterns and unchanged Copilot adapter against the imported 2026 R2 custom-control general information, implementation and data-passing topics, using the repository verification checklist and current Skill Creator guidance. Replaced the user-confirmation restriction on EventAggregator with the documented screen-context contract: `screen-updated`, `IScreenApiResult`, `autoinject` and subscription disposal. Added an original lifecycle example and a detach/reattach witness while retaining bindables for host-provided values and backend ownership of business rules. Metadata is now 1.1.0; the unchanged discovery description still matches its adapter.

Manual decision checks covered a control needing only bound values, a control needing screen-context events, and a detached/reattached instance. The instructions keep the first on bindables, use the documented event for the second, and dispose the previous subscription for the third. Imports and the `screenID` payload member match the 2026 R2 documentation. Skill validation, repository contribution validation and local-link validation passed. No new P1, P2 or P3 findings were identified in this release update.

At this initial review stage, the example was reviewed against documentation, not compiled against installed 2026 R2 typings or exercised in a browser. The instance-verification section above records subsequent event, navigation, and field-binding checks. The 2026 R1 review below is historical evidence.

## Context (historical 2026 R1 review)

Reviewed the corrected `DEV/skills/acumatica-modern-ui-control-builder` package on 2026-09-04, including `SKILL.md`, `agents/openai.yaml`, `references/patterns.md`, and the GitHub Copilot discovery adapter. Verification covered folder and frontmatter validity, discovery metadata, workflow completeness, progressive disclosure, cross-reference integrity, code-template routing, naming consistency, and adapter linkage against Skill Authoring Best Practices, Skills Docs, the Complete Guide, and Skill Creator guidance. The TypeScript and HTML extension filename examples now use the same custom-control name. The canonical quick validator and repository-wide validator both passed.

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

P1 findings open: 0

### P2 — Medium Severity (reduces quality or violates best practices)

P2 findings open: 0

### P3 — Low Severity (style/polish issues)

No P3 findings.

---

## Summary Table

| # | Severity | Finding | Source |
|---|---|---|---|
| — | — | No remaining findings after corrections | — |
