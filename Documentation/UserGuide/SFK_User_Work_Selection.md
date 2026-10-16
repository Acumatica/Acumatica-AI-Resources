# Shop Floor Kiosk: Work Selection

The Shop Floor Kiosk provides multiple ways to select production work, depending on how your production environment is organized. You can select operations from work center dispatch lists, production orders, or your current work in process. After you select an operation, the **Production Reporting** page opens, where you can report labor, completed quantities, scrap, and materials.

## Selecting Work from Work Centers \(Dispatch List\)

Use the **Work Centers** tile when work is assigned based on a dispatch list for a specific work center. This workflow is commonly used in paperless production environments where operators select the next available operation from the work center queue.

To select work from a work center:

1.  On the home page, click **Work Centers**.
2.  On the **Work Centers** page, review the list of active work centers available to you.
3.  Click the work center ID for the work center where you will perform work.
4.  On the operations list, review the available production operations.
5.  Click the operation ID to open the **Production Reporting** page.

The operations list displays production operations associated with the selected work center for production orders in the *Released*, *In Process*, or *Completed* status.

## Selecting an Operation from a Production Order

Use the **Production Orders** workflow when you select work based on a production ticket printed by using the [Production Ticket](AM_62_50_00.md) \(AM625000\) report in the ERP. This workflow is useful when you have the paperwork detailing your next assignment.

To select the operation against which you need to perform work:

1.  On the home page, click **Production Orders**.
2.  On the production order selection page, review the available production orders.
3.  Click the production order number.
4.  If multiple operations are available for the production order, select the required operation from the operations list.
5.  Click the operation ID to open the **Production Reporting** page.

**Attention:** If the selected production order contains only one accessible operation, the system immediately opens this operation on the **Production Reporting** page bypassing the operation selection page.

The **Production Orders** page displays released, in-process, or completed production orders because their operations are available for production reporting. Planned production orders are excluded because they must be released before shop floor employees can begin reporting work on their operations.

## Resuming Work in Process

Use the **Work in Process** workflow to quickly return to operations you have already started. This workflow helps you resume work without searching for the production order or operation again.

To resume work in process:

1.  On the home page, click **Work in Process**.
2.  Review the list of operations you are currently working on.
3.  Click the operation you want to continue.
4.  Continue reporting labor, quantities, scrap, or materials on the **Production Reporting** page.

The **Work in Process** tile on the home page displays the number of active operations associated with your session.

## Resuming Recent Operations

Use the **Recent Activity** page to quickly resume recently worked operations.

1.  On the home page, select **Recent Activity**.
2.  Locate the recent transaction or operation.
3.  Select the operation link.

## Selecting Operations

Regardless of how you navigate to work, the final step is selecting a production operation. When you select an operation, the **Production Reporting** page opens.

On the **Production Reporting** page, you can review:

-   Production order information to identify the finished good you are producing
-   Selected operation details to make sure you have selected the correct operation and work center for reporting time and quantities
-   Next operation information to identify the work center to which partially completed items should be moved after you complete the current operation, or an indication that the current operation is the last operation in the routing before the finished good is received into inventory

The page also includes visual production indicators, such as the concentric gauge widget, which displays:

-   Completed quantity
-   Remaining quantity
-   Labor time progress
-   Quantity or labor overruns

Depending on the operation configuration, you can:

-   Clock in or clock out of labor operations
-   Report completed quantities
-   Report scrap quantities
-   Issue materials
-   Review attached files and operation steps

You can access the **Production Reporting** page from:

-   **Work in Process**
-   **Work Centers**
-   **Production Orders**
-   **Recent Activity**

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

