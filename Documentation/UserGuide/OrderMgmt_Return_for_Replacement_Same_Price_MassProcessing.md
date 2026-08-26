# Returns for Replacement at the Same Price: Mass-Processing of Documents {#_937aeb1e-c457-41af-a475-a74ca5d68acc .concept}

The following sections explain how to mass-process documents related to the processing of customer returns with replacement, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Creating Shipments { .section}

You can create multiple shipments on the [Process Orders](SO_50_10_00.md) \(SO501000\) form by selecting the *Create Shipment* action, selecting the unlabeled check box in the return order lines to be processed \(which could include replacement lines from the return order or orders you were working with, as well as lines of any other order requiring shipping\), and click **Process** on the form toolbar to generate the shipments.

## Mass-Printing Pick Lists { .section}

For multiple shipments that have the *On Hold* or *Open* status, you can mass-print pick lists by using the [Process Shipments](SO_50_30_00.md) \(SO503000\) form. On this form, you select the *Print Pick List* action, select the unlabeled check boxes in the rows of the shipments for which you need to print pick lists, and click **Process** on the form toolbar.

## Mass-Confirming Shipments { .section}

Shipments can be confirmed in bulk. To confirm multiple incoming and outgoing shipments at a time, you open the [Process Shipments](SO_50_30_00.md) \(SO503000\) form and select the *Confirm Shipment* action. Then you select the unlabeled check boxes in the rows of the shipments to be processed, and click **Process** on the form toolbar. The system confirms the selected shipment documents.

## Mass-Updating Inventory { .section}

To reflect the replacement of the items in inventory for multiple return orders at a time, you can use the [Process Shipments](SO_50_30_00.md) \(SO503000\) form. On this form, you select the *Update IN* action, select the unlabeled check boxes in the rows of the confirmed shipments for which you need to update inventory, and click **Process** on the form toolbar.

**Parent topic:**[Processing Customer Returns for Replacement at the Same Price](../UserGuide/OrderMgmt_Return_for_Replacement_Same_Price_Mapref.md)

