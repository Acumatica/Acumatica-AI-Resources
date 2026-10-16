# Review: `acumatica-integration-diagnostics` Skill

## Instance verification — 2026-10-16

Verified cookie authentication, the installed Default/26.200.001 OpenAPI schema, nested selection, structured drop-down values/ID filters, nullable schema values, custom-field selection and a disposable CostCode create/read/update/delete lifecycle on build 26.200.0368. Deletion was confirmed by a fresh filtered list. OAuth was excluded by the user and accepted as up-to-date, not tested. Other transports, Version 4, multi-select filters and generated-client compilation remain unverified.

Runtime test fixtures were removed after verification. The test project, REST record, development sources, test article and Wiki were cleaned up. The results and coverage boundaries are summarized above; the documentation-review section below describes the earlier review stage.


## Initial 2026 R2 review — 2026-10-16 (before instance verification)

Reviewed the entrypoint, agent metadata and new contract-migration reference against the imported 2026 R2 contract comparison, system-endpoint comparison, Version 4/5 query guides and OpenAPI topic, using the repository verification checklist and current Skill Creator guidance. Both documentation fallback URLs now pin 2026R2. Intake distinguishes ERP, endpoint and contract versions; the reference preserves supported Version 4 endpoints and describes Version 5 query nesting, custom-field selection, drop-down IDs/structured values, multi-select filters and nullable generated models. The endpoint comparison is explicitly 26.200.001 versus 25.200.001, rather than an invented 2026 R1-to-2026 R2 comparison. Metadata is now 1.1.0.

Manual decision checks covered retaining a supported Version 4 integration after an ERP upgrade and migrating a Version 4 request with nested/custom/drop-down values to Version 5. The guidance selects contract-specific builders and target-schema client generation instead of changing only the URL or guessing package versions. The new nested/custom-field examples address the historical lack of a worked request example. Skill validation, repository contribution validation and local-link validation passed. No new P1 or P2 findings were identified. Historical P3 suggestions about progress tracking and discovery boundaries remain optional.

At this initial review stage, no 2026 R2 endpoint, OAuth flow, generated client build or HTTP request was exercised. Remote fallback URLs were retargeted but not network-verified in this review. Runtime/package availability must be checked on the target instance and package source. The 2026 R1 review below, including old file counts, URLs and version notes, is historical evidence.

## Context (historical 2026 R1 review)

Re-reviewed `DEV/skills/acumatica-integration-diagnostics` on 2026-09-02, refreshing the 2026-08-05 review after the scope-dependent sign-out correction in PR #3, and re-run after the documentation-fallback fix requested in review. Scope included both files in the skill folder — `SKILL.md` (102 lines, 1379 words) and `agents/openai.yaml` — plus the three `Documentation/` paths the instructions point callers at, which were resolved on disk, and the two GitHub URLs the new fallback names, which were resolved over the network. Verification covered folder and frontmatter validity, discovery metadata, description and instruction quality, workflow completeness, size and progressive disclosure, cross-reference integrity, and platform-neutral wording against Skill Authoring Best Practices, Skills Docs, the Complete Guide, and Skill Creator guidance.

The previous review recorded no findings. This one recorded four, none introduced by PR #3. The P2 was fixed in this pull request at the maintainer's request and is closed below; three P3 items remain open. The lines this PR changes (SKILL.md:66–68) pass every applicable rule, and every path and URL they cite was confirmed to resolve.

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

No open P2 findings.

*Closed in this pull request:* the Trusted Sources section ranked `Acumatica-AI-Resources/Documentation/` second while giving `rg` commands that resolve only inside a clone of this repository. From an installed plugin or a partial checkout the searches returned nothing — indistinguishable from the guidance not existing — and with no fallback stated the model would proceed to recalled endpoint behavior, which SKILL.md:26 forbids. SKILL.md:38 now names the condition, forbids that fallback explicitly, points at the release branch on GitHub for both browsing and single-topic retrieval, and requires the model to name an unreadable topic rather than answer from memory. **[CG]** "All files referenced in instructions actually exist on disk", **[BP]** "Explains why behind non-obvious rules rather than just stating them"

### P3 — Low Severity (style/polish issues)

#### 1. Two five-step sequences have no progress checklist

- **Location**: SKILL.md:16–28 (First Pass), SKILL.md:81–92 (Running and Reviewing)
- **Problem**: Both sequences hit the five-step threshold at which a progress checklist is recommended, and neither has one, so on a long diagnostic run there is nothing that makes a skipped step visible. Recorded as P3 rather than the default P2 because these read as an advisory playbook rather than a strictly ordered procedure — steps 1–5 of First Pass are discovery activities that a reviewer may legitimately reorder or skip. Escalate if the intent is that they run in order every time.
- **Reference**: **[BP]** "Complex workflows (5+ sequential steps) include a progress checklist"

#### 2. No negative triggers to separate this skill from its siblings

- **Location**: SKILL.md:3
- **Problem**: The `dev-toolkit` plugin ships two neighbouring Acumatica skills — `acumatica-customization-update` and `acumatica-modern-ui-control-builder` — and this description carries no boundary statement, so a task that touches Acumatica developer work in general has three plausible matches. `acumatica-customization-update` already sets the pattern with an explicit exclusion ("ordinary application-code changes outside that lifecycle are out of scope"); a matching clause here would make the three descriptions mutually exclusive at selection time.
- **Reference**: **[CG]** "Includes negative triggers if the skill could overlap with related skills"

#### 3. No worked example for any scenario

- **Location**: SKILL.md (whole file)
- **Problem**: The skill describes categories of repair — filter-literal changes, minimal key objects for actions, fields moving between owning objects — without a single concrete before/after, so the model has to infer the intended shape of each fix. Lowest-value item in this report: the categories are specific enough to act on, and adding examples would push a currently compact file toward the point where content belongs in `references/`.
- **Reference**: **[CG]** "Examples are provided for key scenarios"

---

## Summary Table

| # | Severity | Finding | Source |
|---|----------|---------|--------|
| 1 | P3 | Two five-step sequences have no progress checklist | [BP] |
| 2 | P3 | No negative triggers separating this skill from its two sibling Acumatica skills | [CG] |
| 3 | P3 | No worked example for any repair scenario | [CG] |

The P2 recorded in the first pass of this review was fixed before merge; see the closed entry above.

---

## Notes on the PR #3 change

The corrected bullets at SKILL.md:66–67 were checked separately and are clean:

- The cited topic, `Documentation/IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_SignOut.md`, exists on this branch, and every claim in the bullet is supported by it: sign-out required for cookie-based sign-in and for `api:concurrent_access`, recommended for `api`-only (one-hour token expiry, API-user limit), not required for `api` with `offline_access` (one session reused per granted access).
- Splitting the original bullet keeps the library-level rule ("do not reuse a generated client's cookie-session logout helper") separate from the protocol-level decision, so neither reads as the other. The mixed vocabulary is deliberate: `logout` names the helper and the endpoint path, while the surrounding prose follows the documentation's own term, "sign out."
- No platform-specific tool names and no new frontmatter fields were introduced. `metadata.version` was bumped to 1.0.1 alongside the three plugin manifests; the fallback added later in review rides the same unreleased version rather than taking a second bump.
- At the time of this historical 2026 R1 review, the fallback URLs pinned the `2026R1` branch, so each release branch points at its own documentation. That is version-scoped rather than time-sensitive, but it does mean the two URLs need updating when a release branch is cut. A branch-agnostic phrasing would avoid that at the cost of naming no concrete location.
