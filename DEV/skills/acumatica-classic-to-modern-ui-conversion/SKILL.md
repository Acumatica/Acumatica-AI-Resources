---
name: acumatica-classic-to-modern-ui-conversion
description: Converts custom Acumatica Classic forms to Modern UI and verifies behavioral parity. Use when converting ASPX forms, reviewing generated output, preserving an existing Modern implementation, choosing a native replacement, or retiring a legacy screen. Routine publication and new reusable controls have separate skills.
---

# Classic-to-Modern UI Conversion

Choose the screen's disposition, then implement and prove the smallest complete
change. This skill targets Acumatica ERP 2026 R2. Check the installed build and the target
release's documentation before applying version-specific procedures.

## 1. Establish the surface and disposition

For the requested screen or module, make a short census: screen ID, owner,
graph/primary view, Classic and Modern source, actual rendered surface, launch
paths, and intended audience. A Classic Page item or Modern shell does not prove
which implementation runs. Compare the relevant source revision, built package,
published items and served screen. Reconcile a richer installed successor before
replacing it with older source; keep unavailable runtime facts unverified.

Choose one disposition per surface:

| Disposition | Use when | Next action |
|---|---|---|
| CONVERT CUSTOM SCREEN | A required custom form has no usable Modern implementation | Implement a full screen, or an extension for a customized native form, using step 2. |
| USE NATIVE MODERN SURFACE | A native form, GI or other native surface already provides the needed presentation | Configure and test that surface, including keys, filters, navigation and rights. Do not generate a bespoke screen merely because its route is currently Classic. |
| REPAIR/PRESERVE EXISTING MODERN | Modern files or an accepted implementation already exist | Preserve them, repair demonstrated gaps, and retest affected behavior. Do not overwrite them with converter output. |
| KEEP CLASSIC TEMPORARILY | The target release permits Classic and a needed replacement is not yet accepted | Record the missing capability and migration gate. This is a bounded deferral, not Modern acceptance or a later-release compatibility claim. |
| RETIRE | The function is obsolete or replaced and retirement is in scope | Follow the dependency check below; do not convert unused presentation. |

A native Wiki viewer is not a business form to convert. Preserve native Help on
extended native screens unless replacing it is explicitly part of the task.

## 2. Implement the conversion

Once CONVERT is established, proceed through implementation without another
assessment or approval loop within the authorized development scope.

- Back up existing source and project items. Read [conversion procedures](references/conversion.md)
  to choose the form or project converter. Inspect generated output as a starting
  point. A custom graph without a native Modern base needs a full `PXScreen`;
  customize an existing native Modern screen through its extension points.
- Inventory the affected behavior before editing: views/fields, declarative
  callbacks and commit rules, actions, ASPX JavaScript, ASPX.CS code-behind,
  dialogs, selected context and navigation. The converters omit JavaScript and
  code-behind. Port their necessary behavior using supported Modern mechanisms;
  keep business rules and authorization on the server.
- Repair TypeScript view/action definitions and HTML bindings against the
  graph contract and installed control typings. Preserve field editability,
  formats, precision, validation and action state. Check native extension anchors
  instead of guessing IDs. For reusable control implementation, use
  [Modern UI Control Builder](../acumatica-modern-ui-control-builder/SKILL.md).
- Build, package and publish through [Customization Update](../acumatica-customization-update/SKILL.md)
  within existing authority. Read back the affected installed items and actual
  screen. A successful compile or publication does not prove parity.

Use a small behavior inventory: item, prior contract, intended Modern behavior,
result and evidence. A full conversion needs coverage of all affected controls,
actions and navigation; a narrow repair needs only affected behavior and its
dependencies. Record intentional omissions and improvements. Preserve meaning
and operator outcomes, not pixel positions or every legacy toolbar button.

## 3. Exercise behavior that matters

Use [behavioral checks](references/behavioral-checks.md) for the applicable cases:

- **Callbacks and context:** test one real interaction early. If an action consumes
  the selected row, use a non-first row with distinct destination keys, then change
  the header and verify stale context clears. Do not add row synchronization to
  display-only grids that have no current-row consumer.
- **Scanners:** verify the terminator, exact committed value, one command per
  input, server reset, focus return, repeated scans and error/review recovery.
  Start when the native editor is ready, not merely visible. Use native control
  behavior before inventing focus or loading code.
- **Actions:** distinguish operator, administrator, transport/API and obsolete
  commands. Hide transport presentation without deleting handlers, endpoint
  mappings or rights. Check the API contract if that presentation is changed.
  Avoid requesting endpoint-only snapshot fields in ordinary UI loads.
- **Navigation and Help:** exercise actual menu, GI, deep-link, popup or panel
  routes in scope. Verify destination keys and unsaved-record behavior. Open
  the screen's Help and inspect the actual article and links, not just its shell.
  Use the Wiki Authoring skill, when installed, for article repairs.
- **Roles:** separate screen/action rights, row restrictions, destination rights
  and article rights. A permitted role must see only permitted data; use a
  relevant denied case. Administrator success does not establish reader access.
- **Readiness:** measure first useful render and the relevant interaction with
  the same role, record and conditions. Name each timing boundary; disclose
  harness delays and cold/warm differences. Set budgets from the workload.
  Request counts do not prove database cost. Do not restart a shared worker or
  switch tenant-wide UI mode merely to obtain a witness.

Record declared, visible, enabled and executed behavior separately. Persistence
requires fresh readback only for state-changing actions. Read-only navigation
can be exercised within read-only scope. Reconcile an uncertain write outcome
before retrying. Reuse accepted evidence for unchanged behavior, naming its
revision and limits; reopen changed dependencies.

## Retirement and completion

Before retiring presentation, inspect inbound links/bookmarks, endpoint use,
graph callers, release hooks, shared DACs and retained data. Remove only the
authorized presentation. Preserve dependencies until their own replacement is
proven. If retaining a notice or redirect, verify framework loading completes,
operative controls are gone and a normal unforced forward-link click works.

Finish with dispositions, source/package identity, implemented changes,
applicable parity results, measured readiness and separate unresolved gates.
An unavailable device, role or cold-start witness blocks only that claim;
continue source repair and other authorized checks. Do not certify a failed or
unwitnessed required behavior, and do not require irrelevant witnesses.

For maintainers, [evaluation instructions](references/evaluation.md) describe
small synthetic positive and negative cases. They are not prerequisites for
performing a real conversion.
