# Review: `acumatica-wiki-authoring` Skill

## Instance verification — 2026-10-16

Created a native Wiki and published article on build 26.200.0368, verified markup rendering, summary/keywords, stable PageID update, actual contextual Help resolution, rendered link and destination. Added the Wiki project item and refreshed it from the database; unchanged refresh was byte-identical. Admin evidence does not establish Reader or denied-role acceptance; approval-required and multitenant workflows remain unverified.

Runtime test fixtures were removed after verification. The test project, REST record, development sources, test article and Wiki were cleaned up. The results and coverage boundaries are summarized above; the documentation-review section below describes the earlier review stage.


## Evaluation schema correction — 2026-10-16

Closed the outcome-label ambiguity by replacing the Wiki evaluation's single `outcome` field with independent `work_required` (`none`/`repair`) and `verification_status` (`complete`/`pending`) fields. Definitions are supplied to the evaluator in cases.json and the evaluation instructions. `complete` describes availability of all applicable current witnesses, including failing witnesses; it does not imply success. `repair` includes creating missing articles. Classification uses the supplied current evidence, before hypothetical repairs. Acceptance requires `none` and `complete`. Cases w6 and w7 now consistently require repair with verification pending. Added w10 for the independent combination of no established defect and pending reader verification.

A fresh evaluator read the skill, operational references, evaluation instructions and cases without the rubric or prior answers. Frozen [new-schema answers](skill-evals/wiki-status-answers.json), SHA256 `983E791AB104B54F7F6EDF583B8AC2967FD763D74C5B4ED2699FDF2F7BFC08FE`, passed all ten cases. Reasons distinguish known defects, unavailable witnesses and acceptance without inventing a rights defect in w10. The shared scorer's mutation self-test now checks incorrect valid values, unsupported values, null and missing fields for every scalar dimension: 135 Wiki controls and 156 conversion controls passed. The unchanged conversion answers still pass all eight cases.

Preserved the original frozen answers and an [old-schema baseline](skill-evals/wiki-outcome-baseline/assets/) so the historical 8/9 result can be reproduced with evaluate.py by passing `Verification/skill-evals/wiki-outcome-baseline` as the skill path and `wiki-answers.json` as the answers. The baseline still fails only w7's original outcome label. The current schema does not reinterpret old answers or make the rubric accept both labels. At that stage, DEV plugin manifests were synchronized at 1.3.1. Contribution and local-link validation passed. These are synthetic decision checks, not a Wiki runtime test.

## Initial 2026 R2 revalidation — 2026-10-16 (historical)

Reviewed the entrypoint, all five references, cases and rubric against the imported 2026 R2 article-creation, form-linkage, Wiki project-item, access, approval, markup and multitenant-publication topics, using the repository verification checklist and current Skill Creator guidance. The checked authoring and linkage procedures remain applicable. Updated the release scope, reference heading and explicit standalone fixture release. The Wiki markup topic's changed table representation does not establish a change in native Wiki syntax.

A fresh evaluator received only the skill, operational references and cases, with rubric and historical answers withheld. Frozen [2026 R2 answers](skill-evals/wiki-answers.json), SHA256 `0655095A71FF3F53C73E8833465F5A7C5525BB575E23D89999941D3AB26D9644`, passed eight of nine cases. Case w7 returned `partial` where the rubric requires `repair`; its findings and required actions all passed. Its reason correctly preserves native Help, repairs stale content, href and summaries, continues source work and leaves unavailable Reader acceptance open. This is an outcome-label ambiguity, not a claim that all nine scored successfully. Neither the frozen answer nor rubric was changed to obtain a pass. Scorer self-test passed 56 controls. Skill validation and local-link validation passed. No new P1 or P2 instruction defect was identified.

Historical P3 observation (closed by the evaluation schema correction above): the single-label scorer could not express both repair work and pending runtime acceptance. At this initial review stage, no 2026 R2 Wiki editor, publication, Help resolver or reader session was exercised. Documentation alignment and synthetic reasoning do not certify runtime compatibility. The 2026 R1 review below, including its dates, hashes and results, is historical evidence.

## Context (historical 2026 R1 review)

Independent review on 2026-10-07 covered seven skill files: SKILL.md, all five references and cases.json. The rubric, fixture generator, prior reports and dogfood conclusions were withheld from the evaluator. Ten linked vendor topics were checked for article creation, form linkage, Wiki project items, reload effects, access, approval, tenant behavior, markup and links. The repository checklist and report template were applied using the four sources below. This review assesses authoring guidance and synthetic decisions; it does not certify a deployed Wiki or reader session.

The initial entrypoint had 106 lines and approximately 864 words. Names, portable frontmatter, forward-slash references and linked file targets were checked. The skill uses concise original guidance and a small original markup example, with vendor detail linked rather than reproduced. It supports existing package generators, preserves human-owned prose and article identities, and distinguishes actual Help mapping from direct article access. Its source-work continuation and read-only navigation rules are useful and proportionate. Version-specific instructions are explicitly scoped to 2026 R1.

In the historical 2026 R1 evaluation, answers were frozen before scoring. Those previous-release answer artifacts are not retained on this branch. All eight cases passed. Positive cases w1 and w8 accepted the supplied complete observations without another publication or indexing run. Negative cases separately identified zero/wrong mapping, current reader denial, publication reversion, missing articles, stale prose, stale summaries and malformed destinations. Case w6 continued package-source authoring with runtime gates open; w7 preserved native Help. Scorer self-test passed 50 controls. These results do not prove actual authoring or runtime behavior.

An additional adversarial case exposed the applicability gap below: edit a standalone, editor-owned Wiki article reached through the Wiki menu, with no associated screen or customization project. The authorized editor can publish it, the revised content and links render, and the intended reader can open it. The correct decision is to accept those applicable observations and mark contextual mapping and customization republish as not applicable. The initial skill instead presented both as general completion gates. A second boundary case gives an authorized user Delete-level rights on the article but no Administrator role; documented article-rights capability should determine whether the user can change access.

A focused correction review checked only the resulting intake, verification-gate and rights wording changes. They now select the applicable contract and identify Delete-level article access plus task authority. Both findings below are closed. The added w9 fixture was answered without reading its rubric, frozen separately, and then scored with the unchanged eight original answers. All nine cases passed; the updated scorer self-test passed 56 controls. This focused recheck does not turn the synthetic results into runtime acceptance.

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

#### 3. Closed: Outcome vocabulary did not distinguish pending acceptance from repair work

- **Location**: `DEV/skills/acumatica-wiki-authoring/assets/cases.json`, outcome choices; `assets/rubric.json`, w7.
- **Problem**: The fresh evaluator chose `partial` for w7 because reader acceptance is unavailable, while the rubric expects `repair` because content needs correction. All required findings and actions pass. A single outcome label conflates remaining runtime gates with the type of work, reducing the precision of the score.
- **Reference**: **[SC]** verify observable behavior and meaningful invariants; **[CG]** test intended behavior.
- **Suggested correction**: In a future fixture revision, define the outcome vocabulary before evaluation or model repair need separately from acceptance status. Preserve this run's frozen answers and report the mismatch.
- **Closure evidence**: The new independent fields and pre-repair evidence definitions remove the competing meanings. The fresh ten-case evaluation and scalar mutation checks pass; w7 now reports repair with verification pending, and w10 reports no changes needed with verification pending. Historical results remain reproducible from the archived baseline.

---

## Summary Table

| # | Severity | Finding | Source |
|---|----------|---------|--------|
| 1 | P2, closed | Standalone articles inherited irrelevant form and package gates | [SC], [CG] |
| 2 | P3, closed | Administrator wording obscured the documented article-rights capability | [SC], [BP] |
| 3 | P3, closed | 2026 R2 outcome-label ambiguity for repair with unavailable reader acceptance | [SC], [CG] |
