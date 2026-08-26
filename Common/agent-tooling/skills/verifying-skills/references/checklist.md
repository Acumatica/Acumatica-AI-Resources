# Skill Verification Checklist

Rules are tagged with their source(s): **[BP]** Best Practices, **[SD]** Skills Docs, **[CG]** [Complete Guide](https://resources.anthropic.com/hubfs/The-Complete-Guide-to-Building-Skill-for-Claude.pdf), **[SC]** Skill Creator.

Default severity: **H** = likely P1, **M** = likely P2, **L** = likely P3. Final severity depends on context.

## Table of Contents

1. [Folder Structure](#1-folder-structure)
2. [Frontmatter](#2-frontmatter)
3. [Description Quality](#3-description-quality)
4. [Instructions Quality](#4-instructions-quality)
5. [Workflow Completeness](#5-workflow-completeness)
6. [Size & Progressive Disclosure](#6-size--progressive-disclosure)
7. [Cross-Reference Integrity](#7-cross-reference-integrity)
8. [Scripts & Code](#8-scripts--code)
9. [Reference Lists](#9-reference-lists)

---

## 1. Folder Structure

| ID | Rule | Source | Sev |
|----|------|--------|-----|
| FS-01 | Folder name is kebab-case (no spaces, underscores, or capitals) | [SD], [CG] | H |
| FS-02 | `SKILL.md` exists with exact case (not `skill.md`, `SKILL.MD`, etc.) | [SD], [CG] | H |
| FS-03 | No `README.md` inside the skill folder | [CG] | M |
| FS-04 | Subdirectories follow convention: `scripts/`, `references/`, `assets/` | [CG] | L |

## 2. Frontmatter

| ID | Rule | Source | Sev |
|----|------|--------|-----|
| FM-01 | `name` field is present. *Internal rule: [SD] allows omission (defaults to directory name), but we require it for consistency.* | [CG] | H |
| FM-02 | `name` is kebab-case -- no spaces, underscores, or capitals | [SD], [CG] | H |
| FM-03 | `name` matches the skill's folder name. *Internal rule: sources say "should match"; we enforce strictly.* | [SD], [CG] | H |
| FM-04 | `name` does not contain "claude" or "anthropic" (reserved) | [SD], [CG] | H |
| FM-05 | `description` field is present | [CG] | H |
| FM-06 | `description` is under 1024 characters | [SD], [CG] | M |
| FM-07 | `description` contains no XML angle brackets (`<` or `>`) | [SD], [CG] | H |
| FM-08 | Custom fields should be placed inside `metadata`, not as top-level frontmatter keys (see section 8 for recognized fields). Escalate to H if the field name is a near-miss typo of a recognized field. *Internal rule: unrecognized top-level fields may be silently ignored, but we enforce discipline.* | [SD], [CG] | M |
| FM-09 | `name` field contains no XML angle brackets (`<` or `>`) | [BP] | H |
| FM-10 | YAML frontmatter has `---` delimiters on both sides | [SD], [CG] | H |
| FM-11 | `name` is at most 64 characters | [BP], [SD] | H |
| FM-12 | `name` uses gerund form (verb+-ing) or an acceptable alternative (noun-phrase, action-oriented). *Internal rule: [BP] recommends this; we require it.* | [BP] | H |
| FM-13 | `user-invocable: false` and `disable-model-invocation: true` are not both set. This combination makes the skill unreachable | [SD] | H |

## 3. Description Quality

| ID | Rule | Source | Sev | Applicability |
|----|------|--------|-----|---------------|
| DQ-01 | Description written in third person (no "I", "you", "your") | [BP] | M | All skills |
| DQ-02 | Includes WHAT the skill does | [BP], [CG] | M | All skills |
| DQ-03 | Includes WHEN to use it (trigger phrases or contexts) | [BP], [CG], [SC] | M | All skills |
| DQ-04 | Does not contain behavioral/runtime instructions (those belong in the body) | [BP], [SC] | M | All skills |
| DQ-05 | Trigger phrases sound natural ("Use when..." phrasing) | [BP] | L | All skills |
| DQ-06 | "Pushy" enough for discoverability -- includes edge-case triggers | [SC] | M | Only model-invocable skills (N/A if `disable-model-invocation: true`) |
| DQ-07 | Includes negative triggers if the skill could overlap with related skills | [CG] | L | Skills with sibling skills in similar domains |
| DQ-08 | Primary use case and key trigger phrases appear within the first 250 characters of the description — descriptions are truncated at this point in the skill listing | [SD] | M | All skills (N/A if `disable-model-invocation: true`) |

## 4. Instructions Quality

| ID | Rule | Source | Sev |
|----|------|--------|-----|
| IQ-01 | Instructions are specific and actionable (not vague like "validate things properly") | [BP], [CG] | M |
| IQ-02 | Uses imperative form in instructions body | [SC] | L |
| IQ-03 | Explains "why" behind non-obvious rules rather than just stating them | [BP], [SC] | M |
| IQ-04 | ALWAYS/NEVER in all caps is paired with reasoning for the constraint | [SC] | M |
| IQ-05 | Heavy-handed tone (CRITICAL, FORBIDDEN, bold imperatives) is reframed with reasoning | [SC] | M |
| IQ-06 | Does not explain things Claude already knows -- "default assumption: Claude is already very smart" | [BP] | L |
| IQ-07 | Each piece of content justifies its token cost in the context window | [BP], [SC] | L |
| IQ-08 | No redundant sections that repeat information stated elsewhere in the skill | [BP], [SC] | L |
| IQ-09 | No time-sensitive information (dates, deadlines, "before/after" version cutoffs) unless in a collapsible "old patterns" section | [BP] | M |
| IQ-10 | Consistent terminology throughout — one term per concept, no synonyms (e.g., always "API endpoint", not mixing with "URL", "route", "path") | [BP] | L |
| IQ-11 | Provides one default approach per task; avoids listing multiple alternatives without a clear default | [BP] | L |
| IQ-12 | No malicious, misleading, or surprise content — skill contents must not surprise the user in their intent ("Principle of Lack of Surprise") | [SC] | H |

## 5. Workflow Completeness

| ID | Rule | Source | Sev | Applicability |
|----|------|--------|-----|---------------|
| WF-01 | Multi-step workflows that modify state include a feedback/validation loop | [BP], [CG] | M | Only skills with multi-step state-changing workflows |
| WF-02 | Complex workflows (5+ sequential steps) include a progress checklist | [BP] | M | Only skills with 5+ steps |
| WF-03 | Error handling or troubleshooting guidance is included | [CG] | M | Skills with tool calls, MCP interactions, or file operations |
| WF-04 | Examples are provided for key scenarios | [CG] | L | Skills with non-trivial workflows |
| WF-05 | Degrees of freedom are appropriate -- low for fragile operations, high for creative tasks | [BP] | M | All workflow skills |
| WF-06 | If `context: fork` is set, the SKILL.md body contains an explicit task or action sequence — not just reference/guideline content | [SD] | H | Skills with `context: fork` |

## 6. Size & Progressive Disclosure

| ID | Rule | Source | Sev |
|----|------|--------|-----|
| PD-01 | SKILL.md is under 500 lines | [SD], [SC] | M |
| PD-02 | SKILL.md is under 5000 words | [CG] | M |
| PD-03 | Detailed documentation is moved to `references/` rather than inlined | [BP], [CG], [SC] | L |
| PD-04 | Reference files over 100 lines include a table of contents | [BP] | L |
| PD-05 | Frontmatter metadata is concise (~100 words for name + description) | [SC] | L |
| PD-06 | Reference files are one level deep from SKILL.md (no chained references) | [BP] | M |

## 7. Cross-Reference Integrity

| ID | Rule | Source | Sev |
|----|------|--------|-----|
| XR-01 | Instructions do not reference platform-specific (Cursor or Claude Code) tool names — use behavior-oriented language instead (see section 9 for known platform-specific tools) | [BP], [SD], [CG] | H |
| XR-02 | All files referenced in instructions (references/, scripts/, assets/) actually exist on disk | [CG] | H |
| XR-03 | Templates or reference files exist for every option/choice offered to the user | [BP], [CG] | H |
| XR-04 | MCP tool names use fully qualified format if applicable | [BP] | M |
| XR-05 | File paths use forward slashes only — no Windows-style backslashes (`\`) | [BP] | M |

### How to verify cross-references

**XR-01 -- Platform-specific tools:** Scan the SKILL.md body (not code blocks describing other systems) for words that match known platform-specific tool names (see section 9). Flag any used as direct invocation instructions — the skill should use behavior-oriented language instead (e.g., "ask the user" not "use `AskUserQuestion`") so it works across platforms.

**XR-02 -- Referenced files:** Identify all file paths mentioned in the SKILL.md body (e.g., `references/api-guide.md`, `scripts/validate.py`). Verify each file exists relative to the skill folder.

**XR-03 -- Template completeness:** Look for conditional branches in the skill (e.g., "if user selects X, use template Y"). For each branch, verify the corresponding template file exists. If a choice is offered but no template backs it, flag it.

---

## 8. Scripts & Code

*Applicable only to skills that bundle executable scripts in `scripts/`.*

| ID | Rule | Source | Sev |
|----|------|--------|-----|
| SC-01 | Scripts solve problems rather than punt to Claude — handle error conditions explicitly instead of failing and letting Claude figure it out | [BP] | M |
| SC-02 | No "voodoo constants" — all magic numbers and configuration values are documented and justified | [BP] | L |
| SC-03 | Required packages and dependencies are listed in SKILL.md instructions | [BP] | M |
| SC-04 | Clear intent for each script: whether Claude should execute it or read it as reference | [BP] | L |
| SC-05 | Complex batch or destructive operations use a plan-validate-execute pattern (verifiable intermediate outputs) | [BP] | M |

---

## 9. Reference Lists

### Recognized Frontmatter Fields

From [SD] (Claude Code): `name`, `description`, `disable-model-invocation`, `user-invocable`, `allowed-tools`, `context`, `agent`, `argument-hint`, `model`, `effort`, `hooks`, `paths`, `shell`.

From [CG] (Agent Skills fields not listed in the [SD] table): `compatibility`, `license`, `metadata`.

Any field not in either list should be placed inside `metadata` or flagged (FM-08).

### Known Platform-Specific Tool Names

**Claude Code:** `Read`, `Write`, `Edit`, `Bash`, `Glob`, `Grep`, `AskUserQuestion`, `WebFetch`, `WebSearch`, `Skill`, `ToolSearch`, `Agent`, `NotebookEdit`, `TaskCreate`, `TaskUpdate`, `TaskGet`, `TaskList`, `TaskOutput`, `TaskStop`, `EnterPlanMode`, `ExitPlanMode`, `EnterWorktree`, `ExitWorktree`, `CronCreate`, `CronDelete`, `CronList`, `RemoteTrigger`.

**Cursor:** `read_file`, `edit_file`, `list_dir`, `codebase_search`, `grep_search`, `file_search`, `run_terminal_cmd`, `delete_file`, `AskQuestion`.

**Important:** Ignore tool names that appear inside code blocks describing external systems, in quoted output examples, or in the description field (which is metadata, not instructions). Only flag tool names used as actual invocation instructions in the skill body.
