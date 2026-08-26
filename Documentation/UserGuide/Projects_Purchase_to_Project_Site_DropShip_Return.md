# Purchases to the Project Site: Return of Project Drop Shipments {#_73875322-6a36-4b4c-8ec0-3beb26c62699 .concept}

In Acumatica ERP, you can process a return of drop-shipped items directly from a customer to a vendor, without receiving the items to your inventory. For the project drop shipments that have been processed without receipt, you handle these vendor returns by creating and processing a debit adjustment.

**Attention:** You can create a debit adjustment for a project drop shipment if no lines of the accounts payable bill that corresponds to this purchase are linked to a purchase receipt.

## Return for Project Drop Shipment { .section}

To process the return, you open the accounts payable bill that has been prepared for the purchase order of the *Project Drop-Ship* type and click **Reverse** on the More menu of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The system creates a debit adjustment on the [Bills and Adjustments](AP_30_10_00.md) form with the line details copied from the bill. The unit cost specified by default in the debit adjustment lines is the unit cost of the corresponding purchase order lines.

You can process a complete return of purchased items or return the purchase partially. To process a partial return of items, you need to decrease the quantities of items in the debit adjustment lines or remove the lines that are not subject to return.

**Attention:** You can adjust the quantity, extended cost, and unit cost in the lines of the created debit adjustment if the **Apply Retainage** check box is cleared for the debit adjustment in the Summary area on the [Bills and Adjustments](AP_30_10_00.md) form.

When the debit adjustment is released, the system generates a general ledger transaction; on release of this GL transaction, the corresponding project transaction is generated. The project transaction updates the cost budget lines of the project with the same project budget key \(that is, with the same project, project task, account group, inventory item, and, optionally, cost code\) on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.

Also, on release of the debit adjustment, the system changes the status of the corresponding drop-ship purchase order from *Closed* to *Completed*. In the lines of this purchase order, the system clears the **Closed** check box to indicate that the lines of the purchase order have not been billed in full.

## Update of Project Budget Lines { .section}

On release of the debit adjustment, the system updates the values for the corresponding project budget lines on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form as follows:

-   Increases **Committed Open Quantity** and **Committed Open Amount** by the quantity and amount being returned
-   Reduces the **Actual Quantity** and **Committed Invoiced Quantity** by the quantity being returned
-   Reduces the **Actual Amount** and **Committed Invoiced Amount** by the amount being returned

**Parent topic:**[Purchasing Materials to Project Site](../UserGuide/Projects_Purchase_to_Project_Site_Mapref.md)

