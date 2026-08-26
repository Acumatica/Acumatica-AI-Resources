# Purchases for Sale: Mass-Processing of Documents {#_cb33bea6-79b6-4748-a726-40632f1ee11f .concept}

This topic explains how to process multiple documents related to purchases for sale, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Creating Purchase Orders { .section}

Purchase orders related to sales orders can be mass-generated for multiple sales orders at a time. To mass-process sales order lines that have been marked for purchase, you open the [Create Purchase Orders](PO_50_50_00.md) \(PO505000\) form, on which you can create purchase orders based on the purchase requests \(which are the lines with the *SO to Purchase* plan type\) that have been created for these sales order lines. On this form, you select the unlabeled check boxes in the rows of the lines to be processed and click **Process** on the form toolbar to generate the purchase order or orders of the *Normal* type.

When multiple purchase orders are generated from purchase requests, the system creates consolidated purchase orders grouped by order type, vendor, vendor location, and warehouse; if the project accounting functionality is in use, the purchase orders are also grouped by project. In each prepared purchase order, purchase order lines are grouped by item, subitem, and date on which they are requested; if the project accounting functionality is in use, the purchase order lines are also grouped by project, project task, and cost code.

## Mass-Creating Shipments {#section_mnn_2vy_wvb .section}

Shipments can be mass-generated for sales orders. To generate shipments for multiple sales orders at a time, you open the [Process Orders](SO_50_10_00.md) \(SO501000\) form and select the *Create Shipment* action. Then you select the unlabeled check boxes in the rows of the orders to be processed, and click **Process** on the form toolbar. The system prepares shipment documents for the selected sales orders.

## Mass-Creating Sales Invoices { .section}

You can create multiple invoices on the [Process Orders](SO_50_10_00.md) \(SO501000\) form by selecting the *Prepare Invoice* action, selecting the unlabeled check box in the sales order lines to be processed, and clicking **Process** on the form toolbar to generate the sales invoice or invoices.

**Parent topic:**[Processing Purchases for Sale](../UserGuide/OrderMgmt_Purchase_for_Sale_Mapref.md)

