# Review: `acumatica-silent-success-traps` Skill

## Context

Reviewed `DEV/skills/acumatica-silent-success-traps` on 2026-09-09, before its first submission, and re-run after the fixes recorded below. Scope was the two files in the skill folder — `SKILL.md` (87 lines, 795 words) and `agents/openai.yaml` — plus the `.github/skills/acumatica-silent-success-traps/SKILL.md` discovery adapter. The skill bundles no `references/`, `scripts/`, or `assets/`, so the cross-reference and script rules were checked and recorded as inapplicable rather than passing vacuously; it references no files on disk and no network URLs, so there was nothing to resolve. Verification covered folder and frontmatter validity, discovery metadata, description and instruction quality, workflow completeness, size and progressive disclosure, cross-reference integrity, and platform-neutral wording against Skill Authoring Best Practices, Skills Docs, the Complete Guide, and Skill Creator guidance. Frontmatter thresholds, the description truncation point, platform-specific tool names, and customer-identifier leakage were measured programmatically rather than by eye.

Three P2 findings and three P3 findings were recorded. All three P2 items were fixed before submission and are closed below; the three P3 items remain open, one of them deliberately.

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

The directory is kebab-case, `SKILL.md` has exact case, the frontmatter `name` (30 characters) is kebab-case and matches the directory, both required fields are present, the description is 680 characters with no angle brackets, the only custom field (`version`) is nested under `metadata`, and the body names no platform-specific tool from either the Claude Code or Cursor list — so the instructions are platform-neutral. A scan for customer identifiers (instance hostnames, branch and warehouse codes, inquiry names, document numbers) returned clean.

### P2 — Medium Severity (reduces quality or violates best practices)

No open P2 findings.

*Closed before submission:* three items.

1. The description carried no boundary against `acumatica-integration-diagnostics`, which covers Acumatica REST, OData and OAuth work for the same audience. With no negative trigger, both skills could load for one request, and a reviewer had no in-artifact answer to why this is not part of the existing skill. The description now states that it applies when writing or reviewing code that issues these calls, and not for upgrading endpoint versions, migrating authentication, or repairing legacy integration clients — phrased by behavior rather than by naming the sibling, so it does not go stale if the plugin is restructured. **[CG]** "Includes negative triggers if the skill could overlap with related skills"

2. The skill's central discrimination is between a body-less `200` and a `200` carrying `{"value":[]}`, and it described that difference in prose without showing it. SKILL.md now places the two responses side by side with what each means, followed by the resulting instruction — branch on whether a body arrived before parsing it. **[CG]** "Examples are provided for key scenarios"

3. Every behavior described is version-dependent ERP behavior, stated without a release scope. Naming no release leaves a reader unable to tell whether a claim still holds after an upgrade; naming one risks time-sensitive content. SKILL.md now scopes the set once, beside the rule it qualifies, and says explicitly that none of the behaviors is documented as a contract — which is why the scope matters rather than being boilerplate. **[BP]** "No time-sensitive information ... unless in a collapsible 'old patterns' section"

### P3 — Low Severity (style/polish issues)

#### 1. The closing section partially restates the three sections above it

- **Location**: SKILL.md:78–87 (Reporting)
- **Problem**: Two of its four bullets echo guidance already given in place — the "no records exist" bullet repeats the empty-result section, and the unverified-write bullet repeats the write section. The duplication costs context without adding instruction, and two copies of one rule can drift apart in later edits. Left open because the section's purpose is different from the sections it echoes: the others say how to *detect* each trap, this one says how to *report* the result, and a reader who reaches only that section still gets the constraint.
- **Reference**: **[BP]** "No redundant sections that repeat information stated elsewhere in the skill", **[SC]** "Each piece of content justifies its token cost"

#### 2. Two concepts each appear under two names

- **Location**: SKILL.md, throughout
- **Problem**: "Generic Inquiry" and "inquiry" are used interchangeably, as are "principal" and "account" for the authenticating identity. Synonym drift makes the text harder to scan and weakens keyword matching for a reader searching the skill for a specific concept.
- **Reference**: **[BP]** "Consistent terminology throughout — one term per concept, no synonyms"

#### 3. The description opens in the imperative rather than describing purpose

- **Location**: SKILL.md:3
- **Problem**: "Detect and prevent ..." reads as an instruction to the model rather than a statement of what the skill is, and the description is metadata consumed during selection rather than execution. Left open **deliberately**: all three sibling skills in this plugin open the same way ("Modernize, repair, and validate ...", "Edit, update, upgrade ...", "Design, implement, review ..."), so changing it would make this skill the only outlier in the plugin. Flag it if the convention is meant to change.
- **Reference**: **[BP]** "Does not contain behavioral/runtime instructions (those belong in the body)"

---

## Summary Table

| # | Severity | Finding | Source |
|---|----------|---------|--------|
| 1 | P2 (closed) | Description lacked a negative trigger separating it from the overlapping sibling skill | [CG] |
| 2 | P2 (closed) | No paired example of the body-less 200 vs `{"value":[]}` distinction | [CG] |
| 3 | P2 (closed) | Version-dependent platform claims stated without a release scope | [BP] |
| 4 | P3 (open) | Closing "Reporting" section partially restates earlier sections | [BP], [SC] |
| 5 | P3 (open) | "Generic Inquiry"/"inquiry" and "principal"/"account" used interchangeably | [BP] |
| 6 | P3 (open, deliberate) | Description opens in the imperative, matching the plugin's three sibling skills | [BP] |
