---
name: acumatica-silent-success-traps
description: Detect and prevent Acumatica ERP API calls that report success while doing nothing, or return an empty result instead of an error. Use when issuing a contract-based REST write and reporting its outcome, when concluding that a query returned no matching records, when parsing a 2xx response body, when choosing between a Generic Inquiry's plain and _WithParameters forms, or when diagnosing "the API returned success but nothing changed", "the field did not save", or "the inquiry is empty but the UI shows rows". Applies when writing or reviewing code that issues these calls; not for upgrading endpoint versions, migrating authentication, or repairing legacy integration clients.
metadata:
  version: 1.0.0
---

# Acumatica Silent-Success Traps

## The rule

For the Acumatica API, **a 2xx is not evidence of effect, and an empty result is not
evidence of absence.** A setting that reports itself as enabled is also not evidence that
the thing it enables is reachable.

Several distinct Acumatica behaviors return success and do nothing, or return empty rather
than an error. There is no exception to catch and no error code to branch on, so an
integration reports success to its caller and an agent reports a confident wrong answer.
Verify by reading back, not by reading the status code.

Each behavior below was observed on **Acumatica 2025 R2 SaaS**. These are platform
behaviors rather than tenant configuration, so they are expected to hold broadly — but
confirm any single one against the release you target before depending on it, since none
of them is documented as a contract.

## Before you report a write as done

Resolve it to a verified 2xx **and** a read-back that confirms the specific fields you
sent. Two causes discard a write with an identical HTTP 200:

- **The principal lacks edit rights on the target form.** The PUT succeeds at the HTTP
  layer and persists nothing. Confirm per-form and per-entity grants for the account you
  authenticate as — a read-only role produces this exact result.
- **The field is not writable through the endpoint.** A DAC field the endpoint or screen
  does not expose as settable is accepted and dropped. "The API accepted it" never proves
  a field saved.

Because both look the same, the check is the same: re-GET the record and compare the
fields you intended to change. Do not compare whole payloads — unrelated server-side
defaulting will produce false differences.

**Never escalate an unverified write to the user as done.** If you could not read it back,
say so and name what is unconfirmed.

## Before you report that no records matched

Distinguish three cases that all look like "nothing found":

- **A body-less 200.** Standard OData returns `{"value":[]}` for a genuinely empty result,
  so a response with *no body* is anomalous — the query did not really run. Parsing it
  throws a raw JSON parser error; do not surface that as the explanation, and do not treat
  it as zero rows. The two are a byte apart and mean opposite things:

  ```
  200 OK   Content-Length: 0        <- query never ran; cause is below. NOT zero rows.
  200 OK   {"value":[]}             <- genuine empty result set. Zero rows.
  ```

  Branch on whether a body arrived, before parsing it.
- **A `$filter` referencing a calculated column.** Acumatica documents that fields
  computed by a formula cannot be sorted or filtered, but reports the violation as an
  empty-body 200 rather than a 400. Filter only on stored columns — keys, dates, statuses,
  codes — and apply conditions on calculated columns to the returned rows yourself. A
  column whose Results Grid row is a `=…` expression is calculated.
- **A parameterized Generic Inquiry queried by its base name.** Its declared parameters
  stay NULL, the WHERE clause fails, and you get 0 rows with a 200 and no error.
  Parameters bind only through the separate `_WithParameters` FunctionImport, addressed by
  that distinct name with the arguments in parentheses. The `$metadata` document lists an
  `EntitySet` for the plain form and a `FunctionImport` with the `_WithParameters` postfix
  for the parameterized one — which is also the reliable way to detect that an inquiry
  takes parameters at all.

For an unattended consumer, and for any agent that cannot inspect the design, prefer a
parameter-free copy of the inquiry, or read the underlying contract entity.

## Before you trust that an inquiry is exposed

An inquiry whose **name contains a URL path separator** cannot be addressed over OData. It
is accepted by the *Expose via OData* setting and appears in `$metadata`, but requests to
it 404 and it never appears in the service document, so it is undiscoverable as well as
unqueryable. Nothing flags the name as unusable — the inquiry looks published and simply
never works. If an inquiry is configured as exposed but absent from the service document,
check its name before investigating permissions.

## Reporting

- State separately what you **verified** and what you **inferred**. A read-back is
  verification; a 2xx is not.
- When a write is unconfirmed, say which record and which fields, and what would confirm it.
- Never report "no records exist" from a response that could be any of the empty cases
  above. Say the query did not return usable results and why you cannot distinguish.
- When a filter was rejected in one of these silent ways, say the query **never executed**
  — otherwise a rejected filter gets reported to the user as a real, empty answer.
