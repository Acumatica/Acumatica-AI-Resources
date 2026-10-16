# Custom Frontend Modern UI Controls: To Test the Custom UI Event Handler

This activity will walk you through the process of testing the custom UI event handler that you implemented for the Repair Work Orders \(RS301000\) form.

## Story

Suppose that used AI to implement a custom UI event handler for the table \(grid\) on the **Repair Items** tab of the Repair Work Orders form.

The event handler uses the `GetRowCss` event to apply the `bold-row` CSS class to repair item rows whose price is greater than `15`. You now need to verify that the row highlighting works correctly.

In this activity, you'll test the event handler on the Repair Work Orders form.

## Process Overview

To test the custom UI event handler, you’ll first create a repair work order with repair items on the Repair Work Orders \(RS301000\) form. Then you’ll verify that the CSS class is applied to the appropriate rows.

## System Preparation

Before you begin performing this activity, complete the [Custom Frontend Modern UI Controls: To Use AI to Implement a Custom UI Event Handler](UIDev_CustomModernUIControls_Activity_CreateCustomEventHandlerWithAI.md) activity.

## Step: Testing the Custom UI Event Handler

In this step, you'll verify that the custom UI event handler applies the `bold-row` CSS class to the correct repair item rows.

Do the following:

1.  Open the Repair Work Orders \(RS301000\) form.
2.  Create a new repair work order with the following settings, and click **Save** on the form toolbar:
    -   **Customer ID**: *C000000001*
    -   **Service**: *BATTERYREPLACE*
    -   **Device**: *NOKIA3310*
    -   **Description**: *Battery replacement, Nokia 3310*
3.  On the **Repair Items** tab, verify that the repair item lines have been added.
4.  Review the prices for the added lines and verify that any row whose **Price** is greater than *15* is displayed in bold \(shown below\).


    The row is displayed in bold because the event handler returns the `bold-row` CSS class. This class contains the following code.

    ```css
    font-weight: bold !important;
    ```


**Parent topic:**[Creating Custom Frontend Controls for the Modern UI](../DeveloperGuide/UIDev_CustomModernUIControls_Mapref.md)

