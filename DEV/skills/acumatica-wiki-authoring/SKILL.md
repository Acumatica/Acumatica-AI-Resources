---
name: acumatica-wiki-authoring
description: Creates, updates and verifies built-in Acumatica Wiki articles and contextual form Help. Use for missing or stale articles, wrong Help destinations, Wiki markup, package-owned documentation, reader access or republish regressions. Does not manage an external knowledge base or replace package publication guidance.
---

# Acumatica Wiki Authoring

Deliver useful documentation through the complete Help contract:

**Article source -> authoring/package ownership -> publication -> article
identity -> form Help mapping -> rendered destination/content -> intended-reader
access -> normal republish survival.**

This skill targets Acumatica ERP 2026 R2. Use the target release's documentation and installed
behavior for exact mechanisms. A saved article, HTTP 200 or green package
publication establishes only one part of the contract.

Select the applicable contract at intake. A standalone article needs no form
mapping; editor-only content outside a customization project needs no package
republish witness. Verify its article publication state, render, intended reader
and requested Wiki route. Apply the full chain to package-distributed form Help.

## 1. Identify the article and its owner

Record the screen if applicable, installed build, audience, Wiki, Article ID, persistent PageID
when exposed, current Help destination, language and authoritative content source.
Compare the relevant source/package with published content before editing.
Resolve conflicting owners so a later publication does not overwrite the fix.

Preserve working native Help on extended native forms; document additions in
custom content and link them where appropriate. Native GI and Wiki surfaces do
not need custom Modern forms to provide documentation. Keep intentional legacy
article identities and bookmarks unless migration is part of the task.

Review-only work can proceed without a writable site. Inspect source, draft
content and identify the precise missing runtime witness. Existing authorization
for an unchanged scope carries through correction and verification; the skill
does not grant publication or access-rights authority.

## 2. Create or update through the established authoring path

Use [authoring and form linkage](references/authoring.md) for supported 2026 R2
procedures. Choose the existing owner as the default:

- **Package-owned content:** edit the authoritative article source, regenerate
  its existing `WikiArticle` project item and review the package diff. Preserve
  identities, hierarchy, locales and rights. Do not require a redundant editor
  round trip when the project already builds reproducible Wiki items.
- **Editor-owned content:** create/edit through native Wiki forms; when a project
  distributes it, add the custom Wiki or reload the item from the database.
  Review the resulting project diff because reload can affect all included Wiki
  items. Reconcile it back to the source owner before the next build.

If the contextual article is missing, create it and establish form linkage;
do not just repair a link to a nonexistent article. If only the mapping is
wrong, repair that without replacing good prose or creating a duplicate Wiki.
Do not use direct internal-table writes as an authoring shortcut.

Write concise operator guidance: purpose, prerequisites, relevant fields/actions,
steps and expected outcomes. Ground claims in current implementation and observed
behavior. Remove stale status language and omissions even when stored content
exactly matches its old source. Use original examples and [markup guidance](references/markup.md).
Preserve human-owned prose outside the affected sections. If a generator is used,
replace its owned sections in place and verify unchanged input produces no diff.

## 3. Publish and follow Help to the reader

Use [Customization Update](../acumatica-customization-update/SKILL.md) for project
build/publication and installed readback. Article approval/publication state and
customization publication are separate concerns; honor any configured Wiki
approval workflow. Wiki content is tenant-specific, so verify each target in scope.

Apply [independent witnesses](references/verification.md) to the requested change:

1. Read back the published identity and content against the intended source.
2. For contextual Help, invoke **Help from the actual form**. Confirm the resolved nonzero article
   identity and destination. An empty/all-zero PageID, wrong article or global
   educational/search fallback is a failed contextual link even with HTTP 200.
3. Wait for the inner article content, then inspect title, headings, lists,
   tables, images and links actually used. Inspect link destinations as well as
   captions. Direct article access does not prove the form maps to it.
4. Open it as the intended reader. Screen rights and Wiki/folder/article rights
   are separate; inherited permissions and Administrator success are not reader
   proof. Test an appropriate denied case when changing access.
5. For package-distributed articles, establish survival after a normal publication of the owning project: stable
   identity, revised content, Help destination and reader access. Reuse an
   existing later publication witness when it covers the same content; do not
   trigger an unrelated publication solely to repeat this check.

Check Wiki landing/menu navigation if changed or part of the requested route.
Check locale fallback and search/indexing only when those are promised or
affected. Refresh generated plain-text/search summaries when the owning pipeline
produces them; correct rich content must not leave stale excerpts behind.

## 4. Report completion without conflating gates

Use evidence appropriate to each claim. A read-only filter or navigation step
needs an observed result, not a save/persistence witness. An instruction that
changes data needs authorized execution and fresh readback before calling it
runtime-verified. Source-supported draft instructions may still be prepared and
clearly labeled while that witness is pending.

Report what changed, source/package identity, actual Help article, render/reader
results, republish evidence and remaining gates. If one role, browser session or
publication witness is unavailable, continue independent authoring and checks;
leave only the affected claim open. Do not grant broad rights, force sessions or
certify acceptance to clear the gate. Use [troubleshooting](references/troubleshooting.md)
to locate the broken link in the contract.

Maintainers can run the synthetic cases in [evaluation instructions](references/evaluation.md).
They evaluate evidence decisions, not an Acumatica runtime.
