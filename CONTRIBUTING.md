# Contributing to Acumatica AI Resources

Thank you for helping improve the Acumatica AI Resources marketplace. External contributions are accepted through GitHub pull requests and reviewed by `@acumatica/ai-resources-reviewers`.

By participating in this project, you agree to follow the repository's code of conduct and contribution requirements.

## What You Can Contribute

External contributions may include:

- Corrections and improvements to existing skills.
- New skills accepted through the proposal process.
- New shared plugins accepted through the proposal process.
- Improvements to prompts, reference files, manifests, marketplace metadata, verification tooling, and repository guidance.
- Bug reports, feature proposals, and documentation feedback submitted through the appropriate issue channel.

Keep each pull request focused on one contribution or closely related set of changes.

## Documentation Is Read-Only

On each Acumatica release branch, the `Documentation/` directory contains a Markdown conversion of the official documentation for that release. For example, the `2026R1` branch contains the documentation for Version 2026 R1. The directory is maintained by Acumatica and is not open to external contributions.

- Do not add, edit, move, rename, or delete files under `Documentation/` in an external pull request.
- Pull requests containing changes under `Documentation/` will not be accepted.
- Send corrections and other documentation feedback to [training@acumatica.com](mailto:training@acumatica.com).
- Only Acumatica maintainers may update the directory through the controlled documentation synchronization process.

See [`Documentation/NOTICE.md`](Documentation/NOTICE.md) for provenance, copyright, and use restrictions.

## Release Branches

The repository is organized by Acumatica release instead of using a single `main` branch for all versions. Each major release has a branch named without spaces, such as:

- `2026R1` for Acumatica 2026 R1.
- `2026R2` for Acumatica 2026 R2.

Each release branch contains the documentation and AI resources intended for that Acumatica version. External pull requests are accepted only for the latest published release branch. For example, after `2026R2` becomes the latest release branch, external pull requests must target `2026R2`; pull requests targeting `2026R1` or an earlier branch will not be accepted.

Before starting work:

1. Identify the latest published Acumatica release branch.
2. Use that release branch as the base for your work.
3. Target that same latest release branch when opening the pull request.

Do not create release branches in an external contribution. Acumatica maintainers create and publish them. Changes are not automatically backported to older release branches. If an issue also affects an older version, describe that impact in the related issue or pull request; Acumatica maintainers will decide whether an internal backport is appropriate.

## Before You Start

You may submit a pull request directly for a small correction or a focused improvement to an existing artifact.

Open a proposal issue and wait for maintainer acceptance before you:

- Add a new skill.
- Create a new plugin.
- Substantially redesign or rename an existing skill.
- Change the marketplace structure, contribution policy, or platform-support model.

An accepted proposal confirms that the contribution fits the repository. It does not guarantee that the resulting pull request will be merged.

## Prepare Your Contribution

1. Fork the repository on GitHub.
2. Select the latest published Acumatica release branch.
3. Create a topic branch from the latest commit on that release branch.
4. Use a short, descriptive branch name such as `skill/improve-integration-diagnostics` or `fix/broken-reference-link`.
5. Make the smallest complete change that addresses the issue or accepted proposal.
6. Verify the contribution as described below.
7. Commit every change with a DCO sign-off.
8. Push the topic branch to your fork and open a pull request against the latest published release branch in this repository.

## General Requirements

- Use kebab-case for contributor-created directories and ordinary files. Keep required canonical filenames such as `SKILL.md` and `README.md` unchanged.
- Every `SKILL.md` must include `name` and `description` in its YAML frontmatter.
- The frontmatter `name` must match the skill directory name.
- Skills must be tool-agnostic. Platform-specific discovery and presentation belong in plugin manifests or supported metadata files.
- Do not include secrets, credentials, private URLs, customer data, confidential information, or proprietary third-party content.
- Include only material that you have the right to contribute and redistribute under the repository license.
- Review and take responsibility for AI-assisted content before submitting it.
- Use repository-relative links and verify that all referenced local files exist.
- Put guidance useful to more than one role in `Common/` instead of duplicating it.
- Keep factual background material in reference files and actionable workflows in skills.

Plain Markdown prompts and reference files are accepted but discouraged when a discoverable skill would be more useful:

- `prompts/*.md` files are one-shot, copy-and-paste instructions and are not auto-discovered.
- `reference/*.md` files contain factual or technical information and are not auto-discovered.

## Add a Skill to an Existing Plugin

1. Create `{plugin-path}/skills/{skill-name}/`, where `{plugin-path}` is a top-level role plugin such as `DEV` or a shared plugin under `Common/{plugin-name}`.
2. Add `SKILL.md` with the required frontmatter:

   ```yaml
   ---
   name: skill-name
   description: Describe what the skill does and when an agent should use it.
   ---
   ```

3. Add only the references, scripts, assets, and agent metadata the skill requires.
4. Verify the skill with the `verifying-skills` skill from `Common/agent-tooling`.
5. Commit the resulting report as `Verification/{skill-name}-review.md`.
6. Resolve all P1 and P2 findings before requesting review. Document any intentionally retained P3 finding in the pull request.
7. Add or update `.github/skills/{skill-name}/SKILL.md` as a GitHub Copilot discovery adapter. Keep its name and description aligned with the canonical skill and link it to the canonical `SKILL.md`; do not duplicate the canonical workflow or resources.
8. Increment the plugin version in its Claude, Cursor, and Codex manifests.
9. Add the skill to the plugin's README.

## Create a Shared Plugin

Create a shared plugin only after its proposal issue has been accepted and no existing plugin is suitable.

1. Create `Common/{plugin-name}/`.
2. Add the platform manifest files:

   - `Common/{plugin-name}/.claude-plugin/plugin.json`
   - `Common/{plugin-name}/.cursor-plugin/plugin.json`
   - `Common/{plugin-name}/.codex-plugin/plugin.json`

3. Add at least one skill at `Common/{plugin-name}/skills/{skill-name}/SKILL.md` and add its GitHub Copilot discovery adapter at `.github/skills/{skill-name}/SKILL.md`.
4. Start all plugin manifests at version `1.0.0` and keep their versions synchronized.
5. Register the plugin in the root Claude, Cursor, and Codex marketplace manifests. GitHub Copilot discovers its skills through the `.github/skills/` adapters added in step 3 and does not use a plugin marketplace manifest.
6. Create `Common/{plugin-name}/README.md` and add the plugin to `Common/README.md`.
7. Verify every included skill with `verifying-skills` and commit the reports under `Verification/`.

## Publish a Prompt or Reference File

1. Place the file in the appropriate `prompts/` or `reference/` directory.
2. Update the relevant role or plugin README with its name and purpose.
3. Explain in the pull request why a plain Markdown artifact is preferable to a discoverable skill.

## Versioning

Use semantic versioning consistently across all manifests for the affected plugin:

- **PATCH**: Correct or refine an existing skill or plugin without adding a new skill.
- **MINOR**: Add a backward-compatible skill or capability.
- **MAJOR**: Make an incompatible structural or behavioral change.

New plugins start at `1.0.0`. A pull request that changes a plugin must update every corresponding `.claude-plugin`, `.cursor-plugin`, and `.codex-plugin` manifest to the same version.

## Verify Your Changes

Before opening a pull request:

1. Confirm that the contribution is based on and targets the latest published Acumatica release branch.
2. Run the `verifying-skills` skill from `Common/agent-tooling` for every added or changed skill.
3. Resolve all P1 and P2 findings.
4. Commit or update the applicable report under `Verification/`.
5. Confirm that local links resolve and referenced files exist.
6. Confirm that all affected plugin manifests contain valid JSON and matching versions.
7. Confirm that the relevant README and marketplace entries are current.
8. Confirm that the pull request does not modify `Documentation/`.

Describe the verification performed and any retained P3 findings in the pull request.

## Developer Certificate of Origin

Every commit must include a `Signed-off-by` line to certify compliance with the [Developer Certificate of Origin 1.1](https://developercertificate.org/).

Create signed-off commits with:

```console
git commit --signoff -m "Describe the change"
```

The sign-off uses the name and email configured for Git:

```text
Signed-off-by: Your Name <your.email@example.com>
```

The sign-off certifies that you created the contribution or have the right to submit it under the project's license. It is not the same as cryptographically signing a commit.

## License and Content Rights

Except for `Documentation/`, accepted contributions are licensed under the [GNU General Public License version 3](LICENSE). The `Documentation/` directory is excluded from that license and remains subject to [`Documentation/NOTICE.md`](Documentation/NOTICE.md).

By submitting a contribution, you confirm that:

- You have the right to submit the material.
- The contribution may be distributed under GNU GPL version 3.
- The contribution contains no confidential, customer-specific, or improperly copied content.
- Any third-party material is clearly identified and compatible with the repository license.

## Pull Request Checklist

Before requesting review, confirm that the pull request:

- Links its accepted proposal or related issue when required.
- Targets the latest published Acumatica release branch.
- Explains the purpose and scope of the change.
- Contains no changes under `Documentation/`.
- Includes required skill verification reports.
- Resolves all P1 and P2 verification findings.
- Updates all affected manifests to the same version.
- Updates relevant README and marketplace entries.
- Identifies the source and license of third-party material.
- Contains no secrets or confidential information.
- Has a DCO sign-off on every commit.

## Review and Merge

The `@acumatica/ai-resources-reviewers` team reviews external pull requests. Reviewers may request changes for correctness, scope, discoverability, portability, licensing, security, or maintainability.

A pull request requires approval from the review team and all required checks must pass before it can be merged into the latest published release branch. Acumatica maintainers retain final merge authority and may close contributions that target an older release branch or do not fit the repository's goals or policies.
