# Shop Floor Kiosk: Production Operations

The **Production Reporting** page is the primary workspace where you perform production reporting tasks for a selected operation. From this page, you can review operation details, monitor progress, record labor time, report quantities, issue materials, and access related files and work instructions.

## Opening the Production Reporting Page

You can open the **Production Reporting** page for the selected operation from multiple workflows in the Shop Floor Kiosk, depending on how work is assigned on your shop floor. For details, see [Shop Floor Kiosk: Work Selection](SFK_User_Work_Selection.md).

**Opening an Operation from Work in Process**

Use the **Work in Process** tile on the home page to return to operations you are currently working on.

1.  Sign in to the kiosk.
2.  On the home page, select **Work in Process**.
3.  Select the operation you want to continue.

**Opening an Operation from Work Centers**

Use the **Work Centers** workflow when work is organized by dispatch lists.

1.  On the home page, select **Work Centers**.
2.  Select a work center.
3.  Select an operation from the work center operation list.

**Opening an Operation from Production Orders**

Use the **Production Orders** workflow when you work from travelers, job packets, or production order numbers.

1.  On the home page, select **Production Orders**.
2.  Select a production order.
3.  Select an operation.

**Attention:** If the selected production order contains only one accessible operation, the system immediately opens this operation on the **Production Reporting** page bypassing the operation selection page.

**Opening an Operation from Recent Activity**

Use the **Recent Activity** page to quickly resume recently worked operations.

1.  On the home page, select **Recent Activity**.
2.  Locate the recent transaction or operation.
3.  Select the operation link.

## Understanding Operation Information

The top area of the **Production Reporting** page displays information about the selected production order and operation.

The page displays the following production order information:

-   Production order number
-   Production order description

You can use this information to confirm that you selected the correct production order before reporting production activity.

The displayed details about the selected operation include:

-   Operation ID
-   Operation description

These details identify the operation for which reporting transactions will be recorded.

Additionally, the **Production Reporting** page displays routing information to help you identify where partially completed items move next.

If another operation follows the current operation, the page displays:

-   The next operation ID
-   The next operation description
-   The next work center

If the current operation is the final routing step, the page displays an indicator showing that this is the last operation in the production order.

## Viewing Operation Progress

The **Production Reporting** page includes a concentric gauge that shows quantity and labor time progress for the selected operation. The gauge reflects activity reported by all employees working on the operation, including active clock entries and previously reported transactions.

The **outer ring** shows production quantity progress. The gauge displays the completed and remaining quantities. As completed quantities are reported, the outer ring fills clockwise toward the planned quantity:

-   *Gray* indicates that no quantity has been reported.
-   *Green* indicates that the reported quantity is within the planned quantity.
-   *Dark green* indicates that the reported quantity exceeds the planned quantity.

The **inner ring** shows labor time progress. The gauge displays the remaining planned labor time for the operation. As labor time is consumed, the inner ring decreases clockwise:

-   *Gray* indicates that no labor time has been recorded.
-   *Yellow* indicates that labor time is within the planned amount.
-   *Red* indicates that actual labor time exceeds the planned amount.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

