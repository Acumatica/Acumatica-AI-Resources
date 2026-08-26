# Sales with Drop Shipping: Related Report and Inquiry Forms {#_c3683bb8-2643-40d0-ae78-c439e9bc7455 .concept}

In the following sections, you can find details about the reports, inquiry forms, and dialog boxes you may want to review to gather information about sales for drop shipment that have been processed or are being processed in the system.

**Attention:** If you don’t see a particular report or form that is described, you may have signed in to the system with a user account that doesn’t have access rights to the report or form. Contact your system administrator to obtain access to any needed reports or forms.

## Finding Orders Pending Drop Shipment { .section}

You can find purchase requests of the *SO to Drop-Ship* type on the [Create Purchase Orders](PO_50_50_00.md) \(PO505000\) form. On the form, you can filter purchase requests by any of the following criteria: warehouse, vendor, order type, order number, inventory identifier, item class, customer, product manager, and workgroup. For the selected list of purchase requests, you can generate purchase orders of the *Drop-Ship* type for all the lines in the list, or you can select particular lines \(by selecting the unlabeled check boxes in the lines\) and generate these purchase orders.

## Reviewing the Purchase Order Linked to a Sales Order Line { .section}

You can find the purchase order that is linked to a particular line of a sales order by clicking the sales order line on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, and then clicking **PO Link** on the table toolbar. The **Purchasing Settings** dialog box, which opens, lists all the purchase orders that are linked to the selected line of the sales order.

## Reviewing Item Plans Related to Drop-Ship Orders { .section}

On the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form, you can select an item in the **Inventory ID** box, and on the **Item Plans** tab, review the quantity of the item that is currently listed in drop-ship orders. The *SO to Drop-Ship* plan type indicates that a sales order has items marked for drop shipping. The *Drop-Ship for SO Prepared* plan type indicates that a purchase order was prepared for the sales order with items marked for drop shipment.

## Printing Reports and Documents { .section}

To prepare a printable form of the purchase order that is being processed, you use the [Purchase Order](PO_64_10_00.md) \(PO641000\) report. While you are viewing a purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, you can print the purchase order by clicking **Print Purchase Order** on the More menu. The system opens the printable version of the document on the [Purchase Order](PO_64_10_00.md) report; then you can review the order and print it by clicking **Print** on the report toolbar.

## Finding Drop-Ship SO Lines Awaiting Link {#section_ed5_mfk_xvb .section}

To find sales order lines that have the *Drop-Ship* value in the **Source** column on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO30100\) form and do not have a link to lines of a drop-ship purchase order or that have an inactive link, you use the [SO Drop-Ship Lines Awaiting Link](SO_40_20_00.md) \(SO402000\) inquiry form.

## Finding Drop-Ship PO Lines Awaiting Link {#section_ac1_mgk_xvb .section}

To find drop-ship purchase order lines that do not have a link to lines of a sales order or that have an inactive link, you use the [Drop-Ship PO Lines Awaiting Link](PO_40_10_00.md) \(PO401000\) inquiry form.

**Parent topic:**[Processing Sales with Drop Shipping](../UserGuide/OrderMgmt_Drop_Shipment_Sale_Mapref.md)

