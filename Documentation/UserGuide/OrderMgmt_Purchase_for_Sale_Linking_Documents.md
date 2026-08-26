# Purchases for Sale: Linking Sales and Purchase Documents {#_edd708f6-ab46-4b78-a66d-9ed6af7b8ed4 .concept}

The following sections describe how you can establish connections between sales orders and the purchase documents that relate to these sales orders.

## Linking Sales Orders to Purchase Orders { .section}

You can link a line of a sales order with the **Mark for PO** check box selected to an existing purchase order, for instance, if you have created a new sales order that lists the same items as an open purchase order does. To link a sales order line to a purchase order line, on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you need to click the sales order line and then click **PO Link** on the table toolbar. In the **Purchasing Settings** dialog box, which opens, you should select the unlabeled check box in the needed line of the needed purchase order, and click **Save**.

If the linked purchase order or purchase order line has become completed, the **Completed** check box remains cleared in the sales order line, and on the **Details** tab of the [Sales Orders](SO_30_10_00.md) form, the system shows the warning message in this line about the completion of the linked purchase order line. Also, the **Completed** check box remains cleared in the line split in the **Line Details** dialog box. You can do either of the following in the sales order line:

-   Select the **Completed** check box to complete the line
-   Link the line to another purchase order line by clicking **PO Link** and selecting this purchase order in the **Purchasing Settings** dialog box

## Linking Purchase Receipts to Sales Orders { .section}

Items marked for purchase in a sales order may be received to warehouses other than the warehouse specified on the sales order. If the users properly specify the links between the purchase receipts and purchase orders, Acumatica ERP enables the tracking of sales order fulfillment, reserves the received items for sales orders, and automates the transfers of the items to the needed warehouses.

To make it possible to track items in receipts to the original sales orders, when you create these receipts, you need to link each receipt to the corresponding purchase order in one of the following ways:

-   Open the purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, and create a receipt for it by clicking **Enter PO Receipt** on the More menu
-   Create a receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, and link all the related purchase orders or purchase order lines to this new receipt by clicking **Add PO** or **Add PO Line** on the table toolbar

After a purchase receipt has been properly linked to all the related purchase orders, you will be able to track the stage of fulfillment for each line of the original sales order. On release of the purchase receipt, the quantities of items required for the sales orders are deducted from the item quantities available for shipping. If items are received to a warehouse other than the warehouse specified on the sales order, the system will generate a transfer request, which you can use to create a transfer order by using the [Sales Orders](SO_30_10_00.md) \(SO301000\) form for a single transfer order, or by using the [Create Transfer Orders](SO_50_90_00.md) \(SO509000\) form for multiple transfer orders.

**Parent topic:**[Processing Purchases for Sale](../UserGuide/OrderMgmt_Purchase_for_Sale_Mapref.md)

