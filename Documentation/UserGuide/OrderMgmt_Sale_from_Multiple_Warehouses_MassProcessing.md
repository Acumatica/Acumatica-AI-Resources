# Sales from Multiple Warehouses: Mass Processing of Documents {#_f15badb7-b2c8-43c0-abed-75c413134c7c .concept}

The following sections explain how to create multiple transfer orders and related documents, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Creating Transfer Orders { .section}

Transfer orders can be mass-generated for multiple sales orders at a time. To mass-create transfer orders, you open the [Create Transfer Orders](SO_50_90_00.md) \(SO509000\) form, on which you can create transfer orders based on the transfer requests that have been created for sales orders.

On this form, after you specify any needed criteria to limit the requests listed, you select the unlabeled check boxes in the rows of the transfer requests to be processed \(which are the lines with the *SO Allocated* plan type\) and click **Process** on the form toolbar to generate the applicable transfer orders. The system creates a consolidated transfer order for each group of transfer requests with the same source warehouse–destination warehouse pair.

## Mass-Creating Shipments { .section}

Shipments can be mass-generated for transfer orders. To generate shipments for multiple transfer orders at a time, you open the [Process Orders](SO_50_10_00.md) \(SO501000\) form and select the *Create Shipment* action, as well as any selection criteria for filtering the orders. Then you select the unlabeled check boxes in the rows of the orders to be processed, and click **Process** on the form toolbar. The system prepares a consolidated shipment document for each group of the selected transfer orders with the same source warehouse–destination warehouse pair; the lines in the prepared shipments are grouped by stock items in these lines.

## Mass-Confirming Shipments { .section}

Shipments can be confirmed in bulk. To confirm multiple shipments at a time, you open the [Process Shipments](SO_50_30_00.md) \(SO503000\) form and select the *Confirm Shipment* action, as well as any selection criteria for filtering the shipments. Then you select the unlabeled check boxes in the rows of the shipments to be processed, and click **Process** on the form toolbar. The system confirms the selected shipment documents.

## Mass-Printing Pick Lists { .section}

For multiple shipments with the *On Hold* and *Open* statuses, you can mass-print pick lists by using the [Process Shipments](SO_50_30_00.md) \(SO503000\) form. On this form, you select the *Print Pick List* action \(and any other needed selection criteria for filtering the shipments\), select the unlabeled check boxes in the rows of the shipments for which you need to print pick lists, and click **Process** on the form toolbar.

**Parent topic:**[Processing Sales from Multiple Warehouses](../UserGuide/OrderMgmt_Sale_from_Multiple_Warehouses_Mapref.md)

