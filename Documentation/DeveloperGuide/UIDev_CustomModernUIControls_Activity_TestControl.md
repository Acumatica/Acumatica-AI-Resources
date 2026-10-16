# Custom Frontend Modern UI Controls: To Test the Record Insights Panel

This activity will walk you through the process of testing the Record Insights panel. You’ve developed this custom control and added it to the top of the Repair Work Orders \(RS301000\) form.

## Story

Suppose that you've finished the implementation of the Record Insights panel for the Smart Fix company and added this custom control to the Repair Work Orders \(RS301000\) form. You'll now test it to ensure that it works as expected.

## Process Overview

You'll test the Record Insights panel on the Repair Work Orders \(RS301000\) form by ensuring that its information is updated correctly when you do the following:

-   Add a new repair work order to the form
-   Move the repair work order to the *Ready for Assignment* status
-   Assign the repair work order to an employee
-   Complete the repair work order
-   Create an invoice for the repair work order

## System Preparation

Before you begin performing the steps of this activity, do the following:

1.  Complete the [Custom Frontend Modern UI Controls: To Implement the Record Insights Panel](UIDev_CustomModernUIControls_Activity_CreateControl.md) and [Custom Frontend Modern UI Controls: To Pass Data to the Record Insights Panel](UIDev_CustomModernUIControls_Activity_PassDataToControl.md) activities.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, enable the *Advanced SO Invoices* feature.
3.  On the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form, for the *STOCKITEM* class, select the **Allow Negative Quantity** box and click **Save**.

## Step: Testing the Record Insights Panel

In this step, you'll test the Record Insights panel, which you’ve added to the Repair Work Orders \(RS301000\) form.

Do the following:

1.  Open the Repair Work Orders form in your instance and create a new repair work order with the following settings:
    -   **Customer ID**: *C000000001*
    -   **Service**: *Battery Replacement*
    -   **Device**: *Nokia 3310*
    -   **Description**: `Battery replacement, Nokia 3310`
2.  On the form toolbar, click **Save**. The repair work order is saved with the *On Hold* status. Verify that the Record Insights panel is displayed at the top of the form, as shown below.


    Since the repair work order has the *On Hold* status, the Record Insights panel conveys information as follows:

    -   The status badge displays the *Needs Attention* text in red \(Item 1 above\). This indicates that the repair work order requires user action before processing can continue.
    -   The left border is also displayed in red \(Item 2\).
    -   The warning message box \(Item 3\) tells the user that the repair work order is on hold and needs to be reviewed. You can click the **Dismiss** button \(Item 4\) to hide this box.
    -   The status details \(Item 5\) inform the user about the next action they need to take—in this case, verifying particular data before taking the repair work order off hold. You can click the **Hide Details** button \(Item 6\) to hide the details. You can then click the **Show Details** button to display the details again.
3.  Click **Remove Hold** on the form toolbar to move the repair work order to the *Ready for Assignment* status. Observe how the Record Insights panel changes, as shown below.


    Notice the following in the Record Insights panel:

    -   Its status badge still displays the *Needs Attention* text in red \(Item 1 above\).
    -   The left border also remains red \(Item 2\).
    -   The warning message box \(Item 3\) indicates that no assignee has been selected for the repair work order.
    -   The status details \(Item 4\) tell the user to assign an employee to the repair work order.
4.  Click **Assign** on the form toolbar. In the **Select Assignee** dialog box, which opens, select *Andrews, Michael* as the assignee and click **OK**. The repair work order moves to the *Assigned* status. Observe the changes in the Record Insights panel, as shown below.


    Notice the following in the Record Insights panel:

    -   The status badge displays the *In Progress* text in brown \(Item 1 above\).
    -   The left border \(Item 2\) is now brown—the same color as the status badge text.
    -   The warning message box is not displayed.
    -   The status details \(Item 3\) indicate that the repair work order hasn’t been completed yet.
5.  Click **Complete** on the form toolbar. The repair work order moves to the *Completed* status. Observe the changes in the Record Insights panel, as shown below.


    Notice the following in the Record Insights panel:

    -   The status badge displays the *Completed* text in gray \(Item 1 above\).
    -   The panel's left border \(Item 2\) has changed to gray—the same color as the status badge text.
    -   The warning message box is not displayed.
    -   The status details message \(Item 3\) indicates that the repair work order has been completed but hasn’t yet been billed.
6.  Click **Create Invoice** on the form toolbar. The system creates an invoice for the repair work order. Wait for the process to finish executing and observe the changes in the Record Insights panel, as shown below.


    Since the repair work order is now billed, the Record Insights panel conveys information as follows:

    -   The status badge displays the *Invoiced* text in green \(Item 1 above\).
    -   The panel's left border \(Item 2\) has changed to green—the same color as the status badge text.
    -   The warning message box is still not displayed.
    -   The status details \(Item 3\) indicate that the repair work order has been fully processed.

**Parent topic:**[Creating Custom Frontend Controls for the Modern UI](../DeveloperGuide/UIDev_CustomModernUIControls_Mapref.md)

