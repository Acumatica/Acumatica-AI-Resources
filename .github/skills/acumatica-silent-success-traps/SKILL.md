---
name: acumatica-silent-success-traps
description: Detect and prevent Acumatica ERP API calls that report success while doing nothing, or return an empty result instead of an error. Use when issuing a contract-based REST write and reporting its outcome, when concluding that a query returned no matching records, when parsing a 2xx response body, when choosing between a Generic Inquiry's plain and _WithParameters forms, or when diagnosing "the API returned success but nothing changed", "the field did not save", or "the inquiry is empty but the UI shows rows". Applies when writing or reviewing code that issues these calls; not for upgrading endpoint versions, migrating authentication, or repairing legacy integration clients.
---

# Acumatica Silent-Success Traps

Read and follow the canonical skill at [DEV/skills/acumatica-silent-success-traps/SKILL.md](../../../DEV/skills/acumatica-silent-success-traps/SKILL.md) in full before acting. Treat `DEV/skills/acumatica-silent-success-traps/` as the skill root and resolve all relative reference paths from that directory.
