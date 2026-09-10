---
name: verifying-skills
description: >-
  Verifies a skill against four authoritative sources — Best Practices,
  Skills Docs, Complete Guide, and Skill Creator — and produces a severity-bucketed
  review report with actionable findings. Use when asked to review a skill, verify a
  skill, audit a SKILL.md, check skill quality, or validate a skill against best practices.
metadata:
  version: 1.0.1
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
| **[SC]** | The current Skill Creator guidance available in the active host |

## Workflow

### Step 1: Resolve the target skill path

Resolve the target supplied by the user to a skill directory (for example, `path/to/skills/my-skill`).

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

Walk through every rule in the checklist and use its applicability notes. For each applicable rule, determine pass or fail. For each failure, record the exact file and line, the problem and its consequence, and the checklist source tags.

### Step 4: Classify findings by severity

Use the checklist's default severity as a starting point and adjust only when the concrete consequence warrants it: P1 for likely runtime or discovery failure, P2 for materially reduced quality, and P3 for optional polish.

### Step 5: Generate the report

Read `references/report-template.md`. Fill in the template:
- Replace `{skill-name}` with the target skill's name
- Write the context paragraph (what was reviewed, how many files, which sources)
- Populate P1, P2, P3 sections with all findings in the prescribed format
- Put `P1 findings open: {count}` and `P2 findings open: {count}` immediately below their respective headings. Count only unresolved findings; clearly labeled closed findings may remain in the report without increasing the count.
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
