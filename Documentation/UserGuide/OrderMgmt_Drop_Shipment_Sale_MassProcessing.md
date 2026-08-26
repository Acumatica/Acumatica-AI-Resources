# Sales with Drop Shipping: Mass Processing of Documents {#_c94ad7c5-69d0-469a-9fa2-cce310fd15d6 .concept}

This topic explains how to process multiple sales for drop shipment, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Creating Drop-Ship Purchase Orders { .section}

Drop-ship purchase orders can be mass-generated for multiple sales orders at a time. To mass-process sales orders marked for drop shipping, you open the [Create Purchase Orders](PO_50_50_00.md) \(PO505000\) form, on which you can create drop-ship purchase orders based on the drop-ship purchase requests that have been created for this sales order. On this form, you select the unlabeled check boxes in the rows of the lines to be processed \(which could include lines from the sales order you were working with or any other order\) and click **Process** on the form toolbar to generate the purchase order or orders of the *Drop-Ship* type. A sales order can have two or more linked drop-ship orders, but each generated drop-ship order has only one linked sales order. The system creates a consolidated drop-ship order for each group of purchase requests for which both the sales order and the vendor are the same.

## Mass-Creating Sales Invoices { .section}

You can create multiple invoices on the [Process Orders](SO_50_10_00.md) \(SO501000\) form by selecting the *Prepare Invoice* action, selecting the unlabeled check box in the sales order lines to be processed \(which could include lines from the sales order you were working with, or lines of any other order\), and click **Process** on the form toolbar to generate the sales invoice or invoices.

**Parent topic:**[Processing Sales with Drop Shipping](../UserGuide/OrderMgmt_Drop_Shipment_Sale_Mapref.md)

