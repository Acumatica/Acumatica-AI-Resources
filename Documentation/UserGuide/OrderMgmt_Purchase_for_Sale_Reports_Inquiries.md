# Purchases for Sale: Related Reports, Inquiry Forms, and Dialog Boxes {#_f54387c9-6455-47dc-b4f8-561c08d9086d .concept}

In the following sections, you can find details about the reports, inquiry forms, and dialog boxes you may want to review to gather information about purchases for sale that have been processed or are being processed in the system.

**Attention:** If you don’t see a particular report or form that is described, you may have signed in to the system with a user account that doesn’t have access rights to the report or form. Contact your system administrator to obtain access to any needed reports or forms.

## Finding Orders Pending Purchase { .section}

You can find purchase requests of the *SO to Purchase* type on the [Create Purchase Orders](PO_50_50_00.md) \(PO505000\) form. On the form, you can filter purchase requests by any of the following criteria: warehouse, vendor, order type, order number, inventory identifier, item class, customer, product manager, and workgroup. For the selected list of purchase requests, you can generate purchase orders for all the lines in the list, or you can select particular lines \(by selecting the unlabeled check boxes in the lines\) and generate these purchase orders.

## Reviewing Allocations for a Sales Order { .section}

On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you can track the stage of fulfillment for each line of a sales order by clicking the line and then **Line Details** on the table toolbar of the **Details** tab. In the **Line Details** dialog box, which opens, you can view an allocation that the system automatically performs to reserve the line item quantity required for the sales order on the purchase receipt.

If a purchase order line that corresponds to a sales order is completed or canceled, the system adds a new allocation line, which can be viewed in the **Line Details** dialog box. This line has the **Mark for PO** check box cleared and indicates that the shipment should be prepared for the item quantity in this line. When the shipment is confirmed for this line, the line is removed from the **Line Details** dialog box.

## Reviewing the Demand for Purchase Orders { .section}

You can find the sales order that is linked to a particular line of a purchase order by clicking the purchase order line on the **Details** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, and then clicking **View Demand** on the table toolbar. The **Demand** dialog box, which opens, lists all the sales orders that are linked to the selected line of the purchase order.

## Reviewing the Links Between Sales Order Lines and Purchase Order Lines { .section}

You can link a sales order line to an existing purchase order line, or find the purchase order that is linked to a particular line of a sales order by clicking the sales order line on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, and then clicking **PO Link** on the table toolbar. The **Purchasing Settings** dialog box, which opens, lists all the purchase orders that are linked to the selected line of the sales order. To link a sales order line to a purchase order line, you select the **Selected** check box next to need line in the table, and click **Save**.

## Reviewing the Item Plans Related to Purchases for Sale { .section}

On the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form, you can select an item in the **Inventory ID** box, and on the **Item Plans** tab, review the quantity of the item that is currently listed in purchase orders. The *SO to Purchase* plan type indicates that a sales order has items marked for purchasing. The *Purchase for SO Prepared* plan type indicates that a purchase order was prepared for the sales-order with items marked for purchasing.

## Printing a Purchase Order { .section}

To prepare a printable version of the purchase order that is being processed, you use the [Purchase Order](PO_64_10_00.md) \(PO641000\) report. While you are viewing a purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, you can print the purchase order by clicking **Print Purchase Order** on the More menu. The system opens the printable version of the document on the [Purchase Order](PO_64_10_00.md) report; then you can review the order and print it by clicking **Print** on the report toolbar.

**Parent topic:**[Processing Purchases for Sale](../UserGuide/OrderMgmt_Purchase_for_Sale_Mapref.md)

