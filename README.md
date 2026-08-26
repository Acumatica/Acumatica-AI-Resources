# Acumatica AI Marketplace

This is a repository of reusable AI context artifacts such as skills, rules, and plain markdown files.

It is a tool-agnostic plugin marketplace. A plugin is the minimal shareable unit — it can bundle a set of skills, reference an MCP server connection configuration, and more.
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

## Documentation Policy

The `Documentation/` directory is maintained by Acumatica and is not open to external contributions. Do not modify it in an external pull request. Send corrections and other documentation feedback to [training@acumatica.com](mailto:training@acumatica.com).

## License

Except for the `Documentation/` directory, this repository is licensed under the [GNU General Public License version 3](LICENSE). The `Documentation/` directory is excluded from the GPLv3 license and remains subject to its [documentation notice](Documentation/NOTICE.md).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on adding new plugins, skills, prompts, and reference files.
