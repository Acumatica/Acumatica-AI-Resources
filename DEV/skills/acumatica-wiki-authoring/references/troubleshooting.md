# Locate the broken part of Help

| Symptom | Check and repair |
|---|---|
| No article | Create it in the correct Wiki/owner, assign contextual Article ID and include it in distribution. |
| Empty/zero Help identity or generic resources | Inspect form linkage, underscored Article ID, target tenant and publication state. An existing article elsewhere does not close the mapping gate. |
| Nonzero but wrong destination | Compare resolved PageID/Wiki/locale with the intended article; repair mapping or ownership collision. |
| Correct destination, stale instructions | Compare source, package, installed content and actual current behavior; update the owning source, not just the rendered symptom. |
| Administrator works, reader denied | Inspect inherited Wiki/folder/article rights independently of screen rights. Use a least-privilege repair within authority, then witness the reader. |
| Editor fix disappears after publish | Reconcile the editor revision into the owning WikiArticle/source; verify the next normal publication. |
| Package fix disappears after reload | The database/editor is stale or ownership conflicts; reconcile before reloading all Wiki items. |
| Literal markup or bad link | Consult target-release syntax; inspect inner render and actual href. Caption-only evidence is insufficient. |
| Article works, Wiki menu does not | Test the landing/menu route separately; do not replace the native Wiki with a custom business form. |
| Browser/login witness unavailable | Retain the exact open gate, continue independent source/package work and reuse applicable accepted evidence. Do not claim runtime success or change unrelated access/session settings. |
