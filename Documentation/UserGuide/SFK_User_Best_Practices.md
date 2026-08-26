# Shop Floor Kiosk: Best Practices {#_d033156c-4aa4-4a3c-9654-98bb81f0dd8c .concept}

The following best practices can help you use the Shop Floor Kiosk efficiently and reduce reporting mistakes during daily production activities. These recommendations are based on the supported workflows and behaviors of the kiosk application.

## Efficient Work Selection { .section}

Use the workflow that best matches your production environment and assignment method. The kiosk supports both dispatch-list \(“pull”\) workflows and production-order \(“push”\) workflows.

When selecting work:

-   Use the **Work in Process** tile to quickly resume operations you have already started.
-   Use the **Work Centers** tile when work is assigned by dispatch list or by work center priority.
-   Use the **Production Orders** tile when you are working from printed travelers or production packets.
-   Use the **Recent Activity** tile to return to operations you recently worked on without searching again.

Before starting work, verify:

-   The production order number
-   The selected operation
-   The work center
-   Whether the operation is the final operation in the routing

The **Production Reporting** page displays this information to help you confirm that you are reporting against the correct operation.

If your operation includes setup instructions, drawings, or supporting documents, review the **Steps** and **Files** tabs before beginning work.

## Avoiding Reporting Errors { .section}

Review quantities carefully before submitting completed or scrap quantities. The kiosk immediately creates and processes production transactions after submission.

To reduce reporting errors:

-   Verify the completed quantity and remaining quantity shown on the **Production Reporting** page before entering new values.
-   Review lot or serial numbers carefully when reporting tracked items.
-   Confirm production attribute values before submission for operations that require attribute tracking.
-   Clock out before reporting final quantities on non-backflushed labor operations when required by the workflow.

Use the **Recent Activity** page to verify:

-   Clock-in and clock-out actions
-   Completed quantity submissions
-   Scrap reporting
-   Material transactions

The **Recent Activity** page helps you confirm that actions were processed successfully and avoid duplicate reporting.

If you discover that completed quantities were entered incorrectly, use the **Subtract from Reported Qty.** button instead of creating compensating manual entries.

When issuing materials:

-   Review required quantities before issuing
-   Confirm warehouse locations and lot/serial numbers
-   Issue only the quantity needed for the current work stage when partial completion is expected

Monitor the concentric gauge widget during work:

-   The outer ring shows quantity progress
-   The inner ring shows labor time progress
-   Color changes may indicate quantity or labor overruns

Use these indicators to identify delays or reporting inconsistencies early.

## Working in Shared Environments { .section}

The kiosk is designed for shared workstations on the shop floor. Always verify the signed-in employee name before reporting labor or quantities.

When using a shared kiosk:

-   Sign out when leaving the workstation.
-   Confirm that the landing page or sign-in screen appears before another employee begins using the kiosk.
-   Do not continue reporting in another employee’s session.
-   If the kiosk appears to remain active unexpectedly, return to the home page and verify the signed-in user before continuing.

The landing page displays operations currently in progress so employees and supervisors can quickly identify active work on the shop floor.

Because the kiosk uses shared workstation sessions, avoid leaving operations open unintentionally. Active clock entries continue to affect labor tracking and operation visibility until they are closed.

For environments with multiple operators sharing the same workstation, use the home page and navigation tiles instead of leaving the **Production Reporting** page open between users.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

