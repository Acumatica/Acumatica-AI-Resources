# Drop Shipments of Non-Stock Items: Mass Processing of Documents {#_db7240b5-6d82-40d5-9829-fb8c77f8d3e3 .concept}

This topic explains how to process multiple documents related to sales with drop shipment, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Creating Drop-Ship Purchase Orders {#section_pyg_yry_klb .section}

Drop-ship purchase orders can be mass-generated for purchase requests related to multiple sales orders at a time. To mass-process sales orders marked for drop shipment, you open the [Create Purchase Orders](PO_50_50_00.md) \(PO505000\) form, on which you can create drop-ship purchase orders based on the drop-ship purchase requests that have been created for sales orders.

On this form, you select the unlabeled check boxes in the rows of the purchase requests of the *Drop-Ship* plan type to be processed and click **Process** on the form toolbar to generate the purchase order or orders of this type. A sales order can have two or more linked drop-ship purchase orders, but each generated drop-ship purchase order can have only one linked sales order. The system creates a consolidated drop-ship purchase order for each group of purchase requests for which both the sales order and the vendor are the same. Instead of processing only selected purchase requests, you can click **Process All** to process all the listed purchase requests.

## Mass-Creating Sales Invoices {#section_qyg_yry_klb .section}

You can create multiple invoices on the [Process Orders](SO_50_10_00.md) \(SO501000\) form by selecting the *Prepare Invoice* action, selecting the unlabeled check box for the sales orders to be processed, and clicking **Process** on the form toolbar to generate the sales invoice or invoices. As an alternative to processing only selected orders, you can click **Process All** to generate sales invoices for all the listed sales orders.

**Parent topic:**[Processing Drop Shipments of Non-Stock Items](../UserGuide/OrderMgmt_Drop_Shipping_of_Non_Stock_Items_Mapref.md)

