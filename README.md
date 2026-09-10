# Acumatica AI Resources

**Published and governed by Acumatica Education**

This repository provides versioned Acumatica documentation and reusable AI resources, including skills, plugins, prompts, rules, and reference files, for Acumatica developers and the AI tools that support their work.

Acumatica Education serves two learners in the modern enterprise: people and machines. For developers, that means making trusted Acumatica knowledge available not only through traditional documentation and learning, but also in structured, versioned formats that AI coding tools can discover and apply during development.

These resources help AI-assisted development stay grounded in Acumatica product context, established development practices, and release-specific documentation. They are intended to augment developer expertise and judgment, not replace them.

The reusable AI resources are organized as a tool-agnostic plugin marketplace. A plugin is the minimal shareable unit — it can bundle a set of skills, reference an MCP server connection configuration, and more.
Skills (`SKILL.md` and related files) are shared across platforms.
Currently, the marketplace supports **Claude Code**, **Cursor**, **Codex**, and **GitHub Copilot**. Each plugin includes the corresponding `.claude-plugin/`, `.cursor-plugin/`, and `.codex-plugin/` configuration directories. GitHub Copilot uses repository instructions and skill adapters under `.github/` instead of a plugin manifest.

## Repository Structure

The repository root contains the **DEV** role plugin, a **Common** directory that hosts shared plugins and artifacts, the imported Acumatica documentation set, and skill-verification reports.

### Layout convention

- `{role}/skills/{skill-name}/SKILL.md` — role plugin skills (for example, `DEV`) discoverable by all supported platforms
- `{plugin}/.claude-plugin/plugin.json`, `{plugin}/.cursor-plugin/plugin.json`, `{plugin}/.codex-plugin/plugin.json` — platform-specific plugin manifests
- `.github/copilot-instructions.md` — repository-wide GitHub Copilot guidance
- `.github/skills/{skill-name}/SKILL.md` — GitHub Copilot discovery adapter that links to the canonical skill in its plugin directory
- `{role}/prompts/`, `{role}/reference/` — role-level prompts and reference files, alongside the plugin without autodiscovery by agents
- `{role}/README.md` — describes the role plugin and its skills, lists role-level prompts and reference files
- `Common/{plugin-name}/skills/{skill-name}/SKILL.md` — plugin skills

## Available Plugins

See the README of each directory for a detailed list of skills, prompts, and reference files:

- [**DEV**](DEV/) — Developer Toolkit
- [**Common**](Common/) — Additional plugins and artifacts

## Additional Resources

- [**Documentation**](Documentation/index.md) — read-only Markdown snapshot of the official Acumatica product and developer documentation for Version 2026 R1; see the [documentation notice](Documentation/NOTICE.md)
- [**Verification**](Verification/) — Skill-verification reports

## Publishing and Governance

Acumatica Education publishes and governs this repository as part of Acumatica’s developer education and AI-readiness infrastructure.

Resources are organized by Acumatica release and reviewed for technical accuracy, applicability, portability, security, and maintainability. Official Acumatica documentation is published through a controlled synchronization process and is not open to direct external modification.

Community contributions to eligible resources are welcome. Contributions are subject to the repository’s applicable proposal, verification, review, and approval requirements before publication.

## Documentation Policy

The `Documentation/` directory is maintained by Acumatica and is not open to external contributions. Do not modify it in an external pull request. Send corrections and other documentation feedback to [training@acumatica.com](mailto:training@acumatica.com).

## License

Except for the `Documentation/` directory, this repository is licensed under the [GNU General Public License version 3](LICENSE). The `Documentation/` directory is excluded from the GPLv3 license and remains subject to its [documentation notice](Documentation/NOTICE.md).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on adding new plugins, skills, prompts, and reference files.
