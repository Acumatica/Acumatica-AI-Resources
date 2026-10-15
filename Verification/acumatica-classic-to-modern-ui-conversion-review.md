# Review: `acumatica-classic-to-modern-ui-conversion` Skill

## Context

Independent review on 2026-10-07 covered five skill files: SKILL.md, all three references and cases.json. The rubric, fixture generator, prior reports and dogfood conclusions were withheld from the evaluator. Six linked vendor topics were checked for converter prerequisites, output, development-folder workflow, build workflow and action-state semantics. The repository checklist and report template were applied using the four sources below. This review assesses instructions and synthetic decisions, not compiled output or a deployed Acumatica screen.

The entrypoint has 114 lines and approximately 1,052 words. Names, frontmatter, forward-slash references and all linked file targets were checked. No runtime-specific agent tool calls are prescribed. Version-specific instructions explicitly target 2026 R1 and require checking the installed release; retaining that version boundary is useful, rather than a reason to apply the checklist's date warning mechanically. The behavior inventory provides progress tracking without another checklist. Detailed vendor implementation remains linked rather than copied.

[Blind answers](skill-evals/modern-answers.json) were frozen before scoring, with SHA256 `420B729AEAB86F0F331A1E017DE0EDB39360D7AF913ABA3CAC4C896CE2DF5402`. Seven of eight cases passed the scorer. Case m8 was rejected only for omitting the `cold-unverified` code. Its reason explicitly retains the observed 6000 ms cold sample and the unavailable Classic comparison. A cold sample exists, while a cold comparative claim cannot be made. This is ambiguity in the scoring vocabulary, not evidence that the skill caused a false acceptance claim. The frozen answer was not changed. Scorer self-test passed 69 controls; that result tests the scorer, not conversion effectiveness.

After independent review of the discrepancy, the maintainer removed the requirement for the ambiguous cold-unverified code in m8 while retaining separate timing phases. The same frozen answers then passed all eight cases. The revised scorer self-test passed 68 controls. This was a scoring correction, not a changed answer or a demonstrated skill failure.

The decisions selected a full screen for m1, native GI configuration for m2, preservation and a bounded caption repair for m3, and repairs for the demonstrated scanner, row-context, transport-presentation and preview defects in m4. Case m5 accepted only the observed warm/read-only scope while leaving device and cold witnesses open. Retirement preserved graph/data dependencies in m6; m7 retained the permitted temporary Classic fallback; m8 required source reconciliation and treated 2400 ms native readiness as exceeding its 2000 ms budget. No cases called for an extra approval loop or stopped independent work.

An additional adversarial request was considered: retire an obsolete form whose notice looks correct, whose normal link click is blocked, and whose graph remains a release-hook dependency. The appropriate decision is to repair loading completion, preserve graph/data callers, and verify the unforced link. The retirement instructions directly support that decision. A second boundary check used a required full conversion with an unavailable Reader session: implementation and accessible checks continue, but Reader acceptance stays open. No material gap was exposed by these additional decisions.

## Verification Sources

| Abbreviation | Source |
|---|---|
| **[BP]** | [Best Practices](https://code.claude.com/docs/en/best-practices), including verification and concise domain instructions |
| **[SD]** | [Claude Code Skills Docs](https://code.claude.com/docs/en/skills) |
| **[CG]** | [The Complete Guide to Building Skills for Claude](https://resources.anthropic.com/hubfs/The-Complete-Guide-to-Building-Skill-for-Claude.pdf) |
| **[SC]** | Current active-host Skill Creator instructions, read directly |

---

## Findings

### P1 - High Severity (likely to cause functional problems)

P1 findings open: 0

### P2 - Medium Severity (reduces quality or violates best practices)

P2 findings open: 0

### P3 - Low Severity (style/polish issues)

No P3 findings.

---

## Summary Table

| # | Severity | Finding | Source |
|---|----------|---------|--------|
| None | None | No open instruction findings within the reviewed scope; the disclosed m8 scoring-label discrepancy was corrected | [BP], [SD], [CG], [SC] |
