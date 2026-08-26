---
name: verifying-skills
description: >-
  Verifies a skill against four authoritative sources — Best Practices,
  Skills Docs, Complete Guide, and Skill Creator — and produces a severity-bucketed
  review report with actionable findings. Use when asked to review a skill, verify a
  skill, audit a SKILL.md, check skill quality, or validate a skill against best practices.
disable-model-invocation: false
argument-hint: "<path-to-skill-directory>"
metadata:
  version: 1.0.0
---

# Verifying Skills

Performs a structured review of any skill against four verification sources and writes a severity-bucketed report to `Verification/` in the current working directory. This exists because skills that violate conventions can silently fail (wrong tool names, invalid frontmatter fields) or produce poor results (vague descriptions, missing templates). Catching these issues before deployment saves debugging time.

## Verification Sources

These abbreviation tags are used throughout the checklist and in the output report.

| Tag | Source |
|---|---|
| **[BP]** | [Skill Authoring Best Practices](https://code.claude.com/docs/en/best-practices) |
| **[SD]** | [Claude Code Skills Docs](https://code.claude.com/docs/en/skills) |
| **[CG]** | [The Complete Guide to Building Skills for Claude](https://resources.anthropic.com/hubfs/The-Complete-Guide-to-Building-Skill-for-Claude.pdf) (official Anthropic guide) |
| **[SC]** | Skill Creator (`/skill-creator`) — built-in Claude Code skill |

## Workflow

Before starting, create a task for each step below. Mark each task `in_progress` when you begin it and `completed` when done.

### Step 1: Resolve the target skill path

The target skill directory path is provided as the argument (e.g., `/verifying-skills configs/.claude/skills/my-skill`).

If no argument is provided, ask the user for the path.

Resolve the path to an absolute path. Verify:
- The directory exists
- It contains a file named `SKILL.md`

If either check fails, report the error to the user and stop.

### Step 2: Read the target skill

Perform all of these reads:

1. **Read `SKILL.md`** in its entirety with line numbers visible (needed for precise location references in findings).
2. **List the skill directory contents** recursively — identify all files and subdirectories present.
3. **Read all reference files** (`references/*.md`, `scripts/*`, `assets/*`) that are mentioned in the SKILL.md body. Also note any files mentioned but not present — these are XR-02 violations.

Parse the YAML frontmatter to extract `name`, `description`, and all other fields.

### Step 3: Apply the verification checklist

Read `references/checklist.md`.

Walk through each rule in the checklist. For every rule:

1. **Check applicability.** Some rules only apply to specific skill types:
   - Workflow rules (WF-01 through WF-05) only apply to skills with multi-step workflows, not minimal context-injection skills.
   - DQ-06 (pushy description) is N/A for skills with `disable-model-invocation: true`.
   - DQ-07 (negative triggers) only applies when sibling skills exist in similar domains.
   - WF-02 (progress checklist) only applies to workflows with 5+ sequential steps.
   - WF-03 (error handling) only applies to skills that invoke tools, MCP calls, or file operations.
   - WF-04 (examples) only applies to skills with non-trivial workflows.
   - WF-06 (fork has task) only applies to skills with `context: fork` in frontmatter.

2. **Evaluate the rule.** For each applicable rule, determine pass or fail.

3. **Record findings.** For each failure, capture:
   - The specific location (file path and line number)
   - A description of the problem and its consequence
   - The source tag(s) from the checklist

   **Example finding:**
   - **Location**: SKILL.md:12
   - **Problem**: Description uses first person ("I verify skills"), which causes discovery problems because the description is injected into the system prompt where point-of-view inconsistency confuses skill selection.
   - **Reference**: **[BP]** "Always write in third person"

### Step 4: Classify findings by severity

Apply severity using these criteria:

**P1 — High Severity** (likely to cause functional problems at runtime):
- Wrong or non-existent tool names — Claude will try to call a tool that doesn't exist
- Missing required frontmatter fields — skill may not load
- SKILL.md missing or wrong case — skill won't be discovered
- Referenced files that don't exist — Claude will have no instructions for that code path
- Invalid frontmatter field names (`globs` instead of `paths`) — filter silently fails
- XML tags in description — security rejection risk
- Reserved name violations — blocked by platform

**P2 — Medium Severity** (skill works but produces suboptimal results):
- Description in wrong voice or missing trigger phrases — hurts discovery
- Behavioral instructions in description instead of body — wrong progressive disclosure level
- ALWAYS/NEVER without reasoning — may cause brittle behavior
- Missing feedback loop in multi-step workflow — errors accumulate undetected
- Vague instructions — Claude must guess intent
- Exceeds size guidelines — excessive context consumption

**P3 — Low Severity** (style and polish):
- Missing optional frontmatter fields (e.g., `argument-hint`)
- Awkward phrasing in triggers
- Redundant sections wasting tokens
- Reference files over 300 lines without TOC
- Missing examples or error-handling section for simple skills

Use the checklist's default severity column as a starting point, but adjust based on context. For example, an unrecognized frontmatter field that is clearly a typo of a real field is P1, but a custom `metadata` sub-field is fine.

### Step 5: Generate the report

Read `references/report-template.md`. Fill in the template:
- Replace `{skill-name}` with the target skill's name
- Write the context paragraph (what was reviewed, how many files, which sources)
- Populate P1, P2, P3 sections with all findings in the prescribed format
- Number findings sequentially across all severity levels
- Build the summary table

### Step 6: Write the report

Write the completed report to `Verification/{skill-name}-review.md` relative to the current working directory, where `{skill-name}` is the `name` field from the target skill's frontmatter. Create the `Verification/` directory if it does not exist. If the file already exists, overwrite it — each review supersedes the previous one.

### Step 7: Summarize to the user

Print a short summary:
- Count of findings by severity (e.g., "4 P1, 5 P2, 4 P3")
- The output file path
- One-line recommendation:
  - If any P1 findings: "**Fix P1 issues before deploying** — these are likely to cause functional problems."
  - If P2 but no P1: "No critical issues. Address P2 findings to improve quality."
  - If only P3 or clean: "Skill looks good. P3 items are optional polish."

## Avoiding False Positives

Not every rule applies to every skill. Be judicious:

- **Minimal context-injection skills** (e.g., a 10-line skill that just loads domain context) should not be flagged for missing examples, error handling, feedback loops, or progress checklists. These rules target workflow skills.
- **User-invocable-only skills** (`disable-model-invocation: true`) have weaker discovery requirements — the description doesn't need aggressive trigger phrases since the user must explicitly invoke it.
- **Skills without conditional branches** cannot violate XR-03 (templates for all options) — this rule only applies when the skill offers discrete choices that map to different templates or reference files.
- **When genuinely uncertain** whether a rule applies, include the finding but note it as "potentially applicable — verify based on the skill's intended use case." Let the reviewer decide.
