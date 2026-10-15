# Select checks from the behavior

| Behavior present | Small discriminating witness | False positive to reject |
|---|---|---|
| Current-row action | Select row B with keys different from A; verify B at the destination, then switch header | Two rows sharing destination keys cannot expose first-row routing |
| Display-only grid | Render and change selection; verify no unnecessary selection callback | Requiring synchronization without a consumer |
| Commit/callback | Change value; observe the server-bound value and resulting state once | Caption or action declaration alone |
| Scanner | Ready editor, terminator, exact payload, one callback, reset, focus, repeat and invalid/review-state recovery | Visible editor, duplicate commit, or HTTP success without effect |
| Dirty form/dialog | Exercise save/cancel/confirmation rules within scope | Discarded edits or bypassed confirmation |
| API-only action | Operator toolbar omits it; handler/mapping/rights remain; a safe contract probe reaches the expected handler | Removing the action, or treating a domain refusal as a successful mutation |
| Navigation | Launch via the real route; compare record/revision/row keys and role | Popup shell or old URL redirecting to a blank home page |
| Context Help | Invoke Help; compare article identity, content and actual link destinations | Zero/empty identity, generic Help, spinner or misleading caption |
| Restricted data | Compare permitted and restricted records with the intended role | Screen Select rights alone proving row isolation |
| Deferred tab | Observe first activation and repeat use, distinguish metadata from row hydration | Claiming zero DB work from absent rows or few HTTP requests |
| Retired form | Normal launch and unforced link; dependencies/history preserved | Visible notice behind an unfinished loading overlay |

For scanners, consult the actual native control configuration: a command name
and an action-state object are not interchangeable. A native barcode control
may already commit; adding a generic commit flag can duplicate requests. Do not
assume a stable custom-element DOM tag after native dynamic composition.

For timing, record start/end conditions, build, role, sample count, data volume,
network and imposed waits. First visible field, native readiness, callback
response and focus return are different clocks. Compare like phases or disclose
the difference. Warm acceptance leaves an unmeasured cold start open; publication
startup observations should not be silently discarded. Investigate measured
regressions before introducing caches or custom lifecycle code.
