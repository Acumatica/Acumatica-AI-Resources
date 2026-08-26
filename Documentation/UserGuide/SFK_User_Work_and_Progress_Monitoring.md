# Shop Floor Kiosk: Work and Progress Monitoring {#_e7c8f725-686d-4c57-876e-592914801f03 .concept}

The Shop Floor Kiosk provides real-time visibility into active shop floor work directly from shared workstation screens and production reporting pages. You can use the landing page and progress indicators to monitor ongoing operations, identify work center activity, and verify production progress without opening the full ERP application. The kiosk is designed to provide immediate visual feedback while minimizing navigation and data-entry complexity for shop floor employees.

## Viewing Active Operations on the Landing Page { .section}

When the Shop Floor Kiosk is idle or waiting for employee sign-in, the landing page displays the **Operations in Progress** list. This list provides real-time visibility into active production operations across the shop floor before any employee signs in.

The **Operations in Progress** list helps you:

-   See which operations are currently active
-   Verify whether a workstation is already in use
-   Review operation progress without opening the employee workflow interface
-   Identify production orders and work centers currently being processed

The landing page automatically refreshes to keep the displayed information current.

The list can display the following information for each active operation:

-   Employee name
-   Production order number
-   Operation ID and description
-   Work center ID and description
-   Planned labor time
-   Remaining time
-   Completed quantity
-   Estimated finish time

After you sign in and open an operation, the **Production Reporting** page becomes the primary workspace for monitoring operation progress and reporting production activity.

## Understanding Progress Indicators { .section}

The **Production Reporting** page includes a concentric gauge widget that visually displays operation progress for both quantity completion and labor time consumption.

The gauge contains two indicators:

-   The **outer ring** represents completed production quantity
-   The **inner ring** represents remaining labor time

**Quantity Progress**

The outer ring grows as completed quantity approaches the planned quantity for the operation.

The quantity indicator uses the following visual states:

-   **Gray**: No quantity has been reported
-   **Green**: Quantity has been reported and is within planned quantity
-   **Dark green**: Reported quantity exceeds the planned quantity

The gauge also displays:

-   Completed quantity
-   Remaining quantity

**Time Progress**

The inner ring acts as a countdown timer for planned labor time. As labor time is consumed, the ring gradually decreases.

The labor-time indicator uses the following visual states:

-   **Gray**: No labor time has been recorded
-   **Yellow**: Labor time is being consumed within planned limits
-   **Red**: Labor time exceeds the planned amount

The gauge can display labor progress even when you are signed out of the kiosk, allowing you to verify ongoing work and elapsed time from the landing page or **Work in Process** workflow.

The **Production Reporting** page may also display:

-   Current operation details
-   Next operation and work center
-   Indicator that the selected operation is the last operation in the production order routing

## Identifying Workstation Status { .section}

The kiosk is designed for shared workstation environments and provides visual confirmation of whether a workstation is available or actively being used.

You can identify workstation status in the following ways:

-   If the landing page displays sign-in options, the workstation is available for use.
-   If operations appear in the **Operations in Progress** list, production activity is currently active.
-   If your operation appears in the **Work in Process** or **Recent Activity** list, your previous reporting activity was successfully recorded.

The kiosk is intentionally designed to remain continuously active on the shop floor without requiring operators to repeatedly launch or reconnect the application.

**Attention:** The Shop Floor Kiosk does not support multiple simultaneous production clock entries for a single employee.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

