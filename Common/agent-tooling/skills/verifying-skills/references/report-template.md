# Report Template

Write the report to `Verification/{skill-name}-review.md` using this structure exactly.

---

## Template

```markdown
# Review: `{skill-name}` Skill

## Context

{One paragraph: what was reviewed, when, scope of review (number of files examined, which reference files were checked). Mention the four verification sources used.}

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

{If no P1 findings: "No P1 findings."}

#### {n}. {Finding title}
- **Location**: {file}:{line number or section name}
- **Problem**: {What is wrong AND why it matters -- state the consequence, not just the rule}
- **Reference**: **[{tag}]** "{relevant quote or rule name}"{, **[{tag2}]** "{quote}" if multiple sources}

### P2 — Medium Severity (reduces quality or violates best practices)

{If no P2 findings: "No P2 findings."}

{Same format as P1}

### P3 — Low Severity (style/polish issues)

{If no P3 findings: "No P3 findings."}

{Same format as P1/P2}

---

## Summary Table

| # | Severity | Finding | Source |
|---|----------|---------|--------|
| {n} | {P1/P2/P3} | {Short finding description} | [{tag}]{, [{tag2}]} |
```

## Formatting Rules

- Finding numbers are sequential across ALL severity levels (e.g., P1 findings 1-3, P2 findings 4-7, P3 findings 8-10)
- Every finding must reference at least one source with its abbreviation tag
- Location should be as specific as possible -- prefer `SKILL.md:47` over just `SKILL.md`
- Problem descriptions must explain the **consequence** (e.g., "Claude will try to call a non-existent tool"), not just restate the rule
- The Summary Table must include every finding from all severity levels
- Use the checklist rule IDs (e.g., FM-03, XR-01) in your working notes but do NOT include them in the final report -- the report is meant to be human-readable
