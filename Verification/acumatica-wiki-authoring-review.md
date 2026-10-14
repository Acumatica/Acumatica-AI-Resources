# Review: `acumatica-wiki-authoring` Skill

## Context

Independent review on 2026-10-07 covered seven skill files: SKILL.md, all five references and cases.json. The rubric, fixture generator, prior reports and dogfood conclusions were withheld from the evaluator. Ten linked vendor topics were checked for article creation, form linkage, Wiki project items, reload effects, access, approval, tenant behavior, markup and links. The repository checklist and report template were applied using the four sources below. This review assesses authoring guidance and synthetic decisions; it does not certify a deployed Wiki or reader session.

The initial entrypoint had 106 lines and approximately 864 words. Names, portable frontmatter, forward-slash references and linked file targets were checked. The skill uses concise original guidance and a small original markup example, with vendor detail linked rather than reproduced. It supports existing package generators, preserves human-owned prose and article identities, and distinguishes actual Help mapping from direct article access. Its source-work continuation and read-only navigation rules are useful and proportionate. Version-specific instructions are explicitly scoped to 2026 R1.

[Blind answers](skill-evals/wiki-answers.json) were frozen before scoring, with SHA256 `92E165D14969DC92A2F1676CE0251542BAB0BB542CC4C984BBC1A4AC77FA915F`. All eight cases passed. Positive cases w1 and w8 accepted the supplied complete observations without another publication or indexing run. Negative cases separately identified zero/wrong mapping, current reader denial, publication reversion, missing articles, stale prose, stale summaries and malformed destinations. Case w6 continued package-source authoring with runtime gates open; w7 preserved native Help. Scorer self-test passed 50 controls. These results do not prove actual authoring or runtime behavior.

An additional adversarial case exposed the applicability gap below: edit a standalone, editor-owned Wiki article reached through the Wiki menu, with no associated screen or customization project. The authorized editor can publish it, the revised content and links render, and the intended reader can open it. The correct decision is to accept those applicable observations and mark contextual mapping and customization republish as not applicable. The initial skill instead presented both as general completion gates. A second boundary case gives an authorized user Delete-level rights on the article but no Administrator role; documented article-rights capability should determine whether the user can change access.

A focused correction review checked only the resulting intake, verification-gate and rights wording changes. They now select the applicable contract and identify Delete-level article access plus task authority. Both findings below are closed. The added w9 fixture was answered without reading its rubric, frozen separately as wiki-supplemental.json with SHA256 `5DB9DD770234246FA271732093D3A09D4AE98B70BEC50BA920EDE48600D3FDEB`, and then scored with the unchanged eight original answers. All nine cases passed; the updated scorer self-test passed 56 controls. This focused recheck does not turn the synthetic results into runtime acceptance.

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

#### 1. Closed: Select verification gates for standalone and editor-owned articles

- **Location**: `DEV/skills/acumatica-wiki-authoring/SKILL.md:8`, `SKILL.md:20`, `SKILL.md:71`, `SKILL.md:80`; `references/verification.md:12` and `references/verification.md:15`.
- **Problem**: The discovery description includes built-in Wiki article authoring, and the editor-owned branch correctly makes project distribution conditional. However, the opening contract, intake and completion sequence assume a screen, form Help mapping and owning-project republish. A standalone article can therefore acquire irrelevant open gates, or encourage expanding a simple article edit into form/package work. The positive fixtures all include contextual/package evidence, so they do not exercise this boundary.
- **Reference**: **[SC]** preserve user intent and scope; match specificity to risk. **[CG]** test both intended triggers and boundaries.
- **Suggested correction**: At intake, distinguish article-only from contextual Help and editor-owned from package-distributed content. Require form mapping only for contextual Help, and package-republish survival only for distributed content. Preserve article publication state, actual render, requested navigation and reader checks in either mode. Add the standalone case to the synthetic set.
- **Closure evidence**: The revised intake explicitly excludes form mapping for standalone articles and package republish for editor-only content. Verification steps 2 and 5 and the reference gate table are conditional. Supplemental w9 accepts the complete standalone observations without adding form or project work.

### P3 - Low Severity (style/polish issues)

#### 2. Closed: State the actual article-rights capability

- **Location**: `DEV/skills/acumatica-wiki-authoring/references/authoring.md:23`.
- **Problem**: The phrase "authorized administrator" can imply an Administrator role is required. The linked [article-access procedure](../Documentation/UserGuide/DM__how_Wiki_Adjusting_Access_Rights_to_an_Article.md) identifies Delete-level article access as the capability for managing rights. The broader phrase can cause unnecessary escalation even when the user has task authority and the documented article-level capability.
- **Reference**: **[SC]** distinguish actual requirements from conventions; **[BP]** provide specific context for reliable execution.
- **Suggested correction**: Refer to a task-authorized user with the documented article-access capability, naming Delete-level article access for this release. Retain least-privilege reader changes and the prohibition on broad grants as a workaround.
- **Closure evidence**: The revised authoring reference names Delete-level article access and task authority, and explicitly avoids an inferred Administrator-role requirement.

---

## Summary Table

| # | Severity | Finding | Source |
|---|----------|---------|--------|
| 1 | P2, closed | Standalone articles inherited irrelevant form and package gates | [SC], [CG] |
| 2 | P3, closed | Administrator wording obscured the documented article-rights capability | [SC], [BP] |
