# Capable to Promise: Process Activity {#_5b14d52c-9ad4-4827-899a-452e43ccad96 .task}

The following activity will walk you through the process of calculating projected dates for producing ordered items by using the capable-to-promise functionality.

## Story { .section}

Suppose that on January 30, 2026, the Thai Food Restaurant customer has ordered two configurable citrus juicers and 10 pounds of oranges from the main office of SweetLife. Further suppose that the customer wanted the juicers to be shipped in three weeks. You, as the customer service manager, need to make sure that the production department can produce the juicers by the requested date and negotiate a new shipping datewith the customer if the requested shipping date cannot be met.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Order Types](SO_20_10_00.md) \(SO201000\) form, the *SO* sales order type has been predefined and activated.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *TOMYUM* customer has been predefined.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *CFJCITRUS* and *ORANGES* stock items have been predefined.
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *WORKHOUSE* and *WHOLESALE* warehouses have been predefined.

## Process Overview { .section}

In this activity, to calculate the projected date by using the capable-to-promise functionality, on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you will create a sales order with the items the customer has ordered and use the **Process CTP** command to open the [Process Capable to Promise](AM_51_50_00.md) \(AM515000\) form for the sales order. On this form, the system will calculate the projected date for the configurable citrus juicers, and you will view available quantities of the juicer and reject the projected date. Then on the [Sales Orders](SO_30_10_00.md) form, you will change the requested date for the configurable citrus juicer and again open the [Process Capable to Promise](AM_51_50_00.md) form. On this form, the system will recalculate the projected date, which you will accept. Finally, on the [Sales Orders](SO_30_10_00.md) form, you will view the changes the system made to the sales order.

## System Preparation { .section}

Do the following:

1.  As a prerequisite to the current activity, complete [Capable to Promise: Implementation Activity](MFG_CTP_Implem_Activity.md), so that the system is configured for you to use the capable-to-promise \(CTP\) functionality in a company with the *U100* dataset preloaded.
2.  Sign in to the company in which the prerequisite activities have been performed as a customer service manager by using the *blevy* username and *123* password.
3.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button, and select *1/30/2026* on the calendar. For simplicity, in this activity, you will create and process all documents in the system on this business date.
4.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, make sure that the *Advanced Planning and Scheduling* feature has been enabled.
5.  On the **General** tab \(**Manufacturing Settings** section\) of the [Order Types](SO_20_10_00.md) \(SO201000\) form for the *SO* order type, make sure that the **Enable Linking to Production Orders** check box is selected and that the *Open* and *On Hold* statuses are specified in the **Linkable Sales Order Statuses** list.

## Step 1: Creating a Sales Order { .section}

To create a sales order, do the following:

1.  Open the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings:
    1.  **Order Type**: *SO*
    2.  **Customer**: *TOMYUM*
    3.  **Date**: *1/30/2026*
    4.  **Requested On**: *1/30/2026*
    5.  **Description**: `Sale of 2 configurable juicers for fruit and 10 pounds of oranges`
4.  On the **Details** tab, add rows with the settings shown in the following table.

    |**Inventory ID**|**Warehouse**|**Quantity**|**Unit Price**|**Requested On**|
    |----------------|-------------|------------|--------------|----------------|
    |*CFJCITRUS*|*WORKHOUSE*|`2`|`3000.00`|*02/19/2026*|
    |*ORANGES*|*WHOLESALE*|`10`|`2.1500`|*1/30/2026*|

5.  On the form toolbar, click **Save**.

You have created the sales order, and now you will calculate the projected date for the *CFJCITRUS* item. The *ORANGES* item has not been configured to be included in calculation of CTP dates so you could immediately create a shipment for this item, which is outside of the scope of this activity.

## Step 2: Calculating the Projected Date { .section}

To calculate the projected date on which the *CFJCITRUS* stock item can be shipped to the customer, do the following:

1.  While you are still viewing the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, on the form toolbar, click **Process CTP** on the More menu. The system opens the [Process Capable to Promise](AM_51_50_00.md) \(AM515000\) form with the line for the *CFJCITRUS* stock item shown in the table.

    **Attention:** For the *ORANGES* item, the **CTP Item** check box is cleared on the **Manufacturing** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form; therefore the line with this item is not displayed on the form.

2.  Make sure that *Process CTP* is selected in the **Actions** box of the Selection area.
3.  Select the check box in the unlabeled column of the *CFJCITRUS* line.
4.  On the form toolbar, click **Process**; wait while the system completes the processing.

    Notice that the system has specified the type and reference number of the planning order \(which the system has created during processing\) in the **Prod. Order Type** and **Prod. Order Nbr.** columns. In the **CTP Date** column, notice that the system has calculated the projected date as *3/2/2026*, which is 12 days later than the customer expected the juicers to be shipped.


## Step 3: Viewing the Available Quantities { .section}

Suppose that you would like to see if any configurable citrus juicers are available in a warehouse or in production, so that you can negotiate a new requested date with the customer. Do the following on the [Process Capable to Promise](AM_51_50_00.md) \(AM515000\) form, which is still open:

1.  In the row with the *CFJCITRUS* stock item, click the link in the **Open Qty.** column.
2.  In the **Quantity Available** dialog box, which opens, notice that all quantities except **Requested** are *0*. This means that the *CFJCITRUS* stock item is not currently available.
3.  Close the dialog box.

## Step 4: Rejecting the Projected Date { .section}

Suppose that you have decided to reject the projected date, call the customer, and negotiate the new requested date. Do the following on the [Process Capable to Promise](AM_51_50_00.md) \(AM515000\) form, which is still open:

1.  In the **Action** box of the Selection area, select *Reject*.
2.  Select the check box in the unlabeled column of the *CFJCITRUS* line.
3.  On the form toolbar, click **Process**; wait while the system completes the processing. The system has deleted the planning order and cleared the **Prod. Order Type**, **Prod. Order Nbr.**, and **CTP Date** columns for the line with the *CFJCITRUS* item.

Now you need to negotiate a new requested date with the customer.

## Step 5: Recalculating the Projected Date { .section}

Suppose that the customer has agreed to receive the juicers on *3/2/2026* and you need to recalculate the projected date and send the order to production. Do the following:

1.  Open the [Sales Orders](SO_30_10_00.md) \(SO301000\) form with the sales order you created in Step 1.

    **Tip:** You will not change the requested date in the line for the *CFJCITRUS* stock item because it will be changed automatically when you accept the CTP date.

2.  On the form toolbar, click **Process CTP** on the More menu. The system opens the [Process Capable to Promise](AM_51_50_00.md) \(AM515000\) form with the line for the *CFJCITRUS* stock item shown in the table.

    **Tip:** You open the More menu by clicking the More button \(…\) on the form toolbar.

3.  Make sure that *Process CTP* is selected in the **Actions** box of the Selection area.
4.  Select the check box in the unlabeled column of the *CFJCITRUS* line.
5.  On the form toolbar, click **Process**; wait while the system completes the processing.

    Notice that the system has again specified the type and reference number of the planning order \(which the system has created during processing\) in the **Prod. Order Type** and **Prod. Order Nbr.** columns. In the **CTP Date** column, notice that the system has calculated the same projected date, *3/2/2026*, as it did in Step 2.


Now you can accept the projected date and send the order to production.

## Step 6: Accepting the Projected Date { .section}

To accept the projected date, do the following on the [Process Capable to Promise](AM_51_50_00.md) \(AM515000\) form, which is still open:

1.  In the **Action** box of the Selection area, select *Accept*.
2.  Select the check box in the unlabeled column of the *CFJCITRUS* line.
3.  On the form toolbar, click **Process**; wait while the system completes the processing.
4.  Make sure that the system has done the following:
    -   Inserted the type and reference number of the production order that has been created in the **Prod. Order Type** and **Prod. Order Nbr.** columns, respectively.

        **Tip:** Note: You can click the number in the **Prod. Order Nbr.** column to view the production order on the [Production Order Details](AM_20_90_00.md) \(AM209000\) form.

    -   Selected the **CTP Accepted** check box.
    -   Copied the CTP date to the **Requested On** and **Ship On** columns.
    -   Copied the original requested date to the **Original Request Date** column.

You have accepted the projected date, and now you will view the changes the system made in the sales order.

## Step 7: Viewing the Sales Order { .section}

To view the changes the system made in the sales order when you accepted the CTP date, do the following:

1.  Open the [Sales Orders](SO_30_10_00.md) \(SO301000\) form with the sales order you created in Step 1.
2.  In the **Requested On** and **Ship On** columns of the *CFJCITRUS* line of the **Details** tab, make sure that the *3/2/2026* date is specified \(which is the accepted projected date\).
3.  In the **Production Nbr.** column, make sure that the system has copied the production order number created when you accepted the projected date. You can click the link to view the production order on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

You have successfully calculated and accepted the projected dates for the customer's order by using the capable-to-promise functionality.

**Parent topic:**[Processing Capable to Promise](../UserGuide/MFG_CTP_Mapref.md)

