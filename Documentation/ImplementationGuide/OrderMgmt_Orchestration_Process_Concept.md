# Order Orchestration: Sales Order Workflow {#_a20229ca-cbe1-4f2b-8474-47291980e406 .concept}

Order orchestration in sales orders is the process where the system automatically selects the most suitable warehouse or combination of warehouses to fulfill each item in the order. You can orchestrate orders individually on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form or process multiple orders at once on the [Process Orders](../UserGuide/SO_50_10_00.md) \(SO501000\) form, with the option to schedule orchestration for high-volume scenarios.

## Start the Orchestration { .section}

To orchestrate a sales order, you click **Orchestrate Order** on the More menu of the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. This command is available only if the sales order meets the following conditions:

-   The settings of the order type of this order support orchestration.
-   The order type has the *Destination Priority* or *Warehouse Priority* selected as **Fulfillment Strategy** on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.
-   The order's **Orchestration Status** is *New* or *Unsuccessful*.
-   The order's status is *On Hold*, *Open*, or *Back Order*
-   On the **Shipping** tab of the [Sales Orders](../UserGuide/SO_30_10_00.md) form, the **Will Call** check box is cleared.

When you click the command, the system analyzes your inventory and opens the **Orchestrate Order** dialog box. It inserts the recommended warehouse or warehouses into the **Orchestration Details** column for each item.

The system excludes sales order lines from orchestration based on the following settings on the **Details** tab of the [Sales Orders](../UserGuide/SO_30_10_00.md) form:

-   **Operation Type** is *Receipt*.
-   The **Orchestrated** check box is selected.
-   The **Mark for Production** check box is selected.
-   The **Mark for PO** check box is selected.
-   The **Open Qty.** is *0*.

The system also excludes lines with the following items:

-   Non-stock kit
-   Non-stock

## Complete the Orchestration { .section}

If you agree with the suggestions in the **Orchestrate Order** dialog box of the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, you click **Save**. The system closes the dialog box and does the following in the sales order:

-   Inserts the suggested warehouse into the order lines
-   Does the following for each orchestrated sales order line:
    -   Selects the **Orchestrated** check box
    -   Inserts the ID of the orchestration plan used for the item into the **Orchestration Plan** column
    -   Selects the **Allocated** check box in the **Line Details** dialog box
-   Changes the orchestration status on the **Shipping** tab to *Processed*.

## Mass-Orchestrate Orders { .section}

You can also orchestrate multiple sales orders simultaneously on the [Process Orders](../UserGuide/SO_50_10_00.md) \(SO501000\) form. To do this, you select *Orchestrate Order* in the **Action** box and do one of the following:

-   Select the unlabeled check box for each listed order that you want to process and then click **Process** on the form toolbar
-   Click **Process All** on the form toolbar

**Tip:** You can also create an automation schedule for order orchestration.

**Parent topic:**[Order Orchestration](../ImplementationGuide/config_OrderMgmt_Order_Orchestration_Mapref.md)

