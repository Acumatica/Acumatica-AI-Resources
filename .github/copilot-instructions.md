# GitHub Copilot repository instructions

This repository contains reusable AI skills and supporting resources for Acumatica ERP. Canonical skill implementations live under `DEV/skills/` and `Common/*/skills/`. Files under `.github/skills/` are GitHub Copilot discovery adapters; when an adapter applies, read and follow the canonical `SKILL.md` that it links to, resolving that skill's relative references from the canonical skill directory.

- Use `DEV/skills/acumatica-customization-update/SKILL.md` for updating, upgrading, validating, or publishing customization projects and packages.
- Use `DEV/skills/acumatica-integration-diagnostics/SKILL.md` for integration modernization and diagnostics.
- Use `DEV/skills/acumatica-modern-ui-control-builder/SKILL.md` for Modern UI custom controls.
- Use `Common/agent-tooling/skills/distill/SKILL.md` to extract reusable guidance from an interaction.
- Use `Common/agent-tooling/skills/verifying-skills/SKILL.md` to verify a skill package.

Keep skills tool-agnostic. Put platform-specific discovery metadata in the platform adapter or manifest, not in the canonical workflow. When changing a canonical skill, keep its Copilot adapter description synchronized, update the plugin version in all platform manifests, and update its report under `Verification/`.

Do not add, edit, move, rename, or delete anything under `Documentation/` in an external contribution. It is a read-only snapshot of official Acumatica 2026 R1 documentation. Send documentation feedback to training@acumatica.com.

External pull requests must target the latest published Acumatica release branch. Follow `CONTRIBUTING.md`, including proposal requirements and DCO sign-off. Before submitting changes, run `.github/scripts/validate-contribution.ps1` in PowerShell and the relevant GitHub Actions checks.

Except for `Documentation/`, repository content is licensed under GPL-3.0. The documentation has separate terms in `Documentation/NOTICE.md`.
