# Purchase Receipt Correction: Cancellation of a Purchase Receipt {#_cc10b189-049c-48be-b149-b3841b71bbb0 .concept}

This topic explains how you can cancel a released purchase receipt that has been prepared for a purchase order of the *Normal* or *Drop-Ship* type—that is, for a normal or drop-ship purchase order.

**Important:** The functionality of receipt cancellation is unavailable if the *Service Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Cancellation of a Purchase Receipt for a Normal Purchase Order { .section}

You can cancel a purchase receipt related to a normal purchase order if this receipt has the *Released* status. To cancel a purchase receipt, while viewing it on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, you click **Cancel Receipt** on the More menu. The system checks whether all requirements are met for the purchase receipt:

-   It has at least one line of the *Goods for IN*, *Non-Stock for IN*, *Service*, or *Freight* type.
-   It has no related AP bills, except for those that have been fully reversed.
-   It contains no lines of the *Goods for RP*, *Goods for Project*, or *Non Stock for Project* type.
-   It has no lines with non-stock kits.
-   No landed cost documents have been applied to it.
-   No putaway transfers have been prepared for it.
-   It does not have related purchase returns.
-   Its stock is not locked due to a physical inventory count.
-   None of the receipt lines are linked to production order materials, if the *Manufacturing* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   Its related purchase order has no related AP bills, except for those that have been fully reversed. The system checks the purchase order if it has the **Allow AP Bill Before Receipt** check box selected on the **Other** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form.

If all of these conditions are met, the system displays a confirmation dialog box. If you click **OK**, the system validates the state of inventory. That is, it verifies whether it is possible to issue the items with the original quantity and cost. For details on the validation, see [Purchase Receipt Correction: Inventory Validation](OrderMgmt_Inventory_Validation.md).

If the validation fails, the system shows an error message. If the validation is successful, the system generates and releases a reversal inventory issue with the *Issue* type of transactions. This issue will be released automatically, regardless of the state of the **Release IN Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. You can find its link in the **Reversal IN Ref. Nbr.** box on the **Other** tab of [Purchase Receipts](PO_30_20_00.md) form. Then the system assigns the *Canceled* status to the purchase receipt.

**Important:** If a purchase receipt is canceled, the system does not recalculate the cost statistics on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form for items that were included in this receipt.

As soon as the purchase receipt is canceled, the system updates the related purchase order on the [Purchase Orders](PO_30_10_00.md) form as follows:

-   It reopens the linked lines of the related purchase order if these lines have already been completed.
-   If the related purchase order has the *Completed* status, the system assigns the *Open* status to it.
-   In each linked line of the related purchase order, the system updates the value in the **Qty. On Receipts** column on the **Details** tab.

## Cancellation of a Purchase Receipt for a Drop-Ship Purchase Order { .section}

You can cancel a purchase receipt related to a drop-ship purchase order if this receipt has the *Released* status. To cancel a purchase receipt, while viewing it on the [Purchase Receipts](PO_30_20_00.md) form, you click **Correct Receipt** on the More menu. The system checks whether all of the following conditions are met for the purchase receipt:

-   It has at least one line of the *Goods for Drop-Ship* or *Non-Stock for Drop-Ship* type.
-   It contains no lines of the *Goods for IN* or *Non-Stock* types.
-   It has no related AP bills, except for AP bills that have been fully reversed.
-   No landed cost documents have been applied to the it.
-   It does not have related purchase returns.
-   No sales invoices include its lines, except for canceled invoices.
-   Its related purchase order has no related AP bills, except for those that have been fully reversed. The system checks the purchase order if it has the **Allow AP Bill Before Receipt** check box selected on the **Other** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form.

If all of these conditions are met, the system displays a confirmation dialog box. If you click **OK**, the system assigns the *Canceled* status to the purchase receipt.

As soon as the purchase receipt is canceled, the system updates the related documents as follows:

-   It reopens the linked lines of the related purchase and sales order if these lines have already been completed.
-   If the related purchase order has the *Completed* status on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, the system assigns the *Open* status to it.
-   If a related sales order has the *Completed* status on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the system assigns another status based on the order's workflow.
-   In each linked line of the related purchase order, the system updates the value in the **Qty. On Receipts** column on the **Details** tab of the [Purchase Orders](PO_30_10_00.md) form.
-   In each linked line of the related sales order, the system updates the values in the **Qty. On Shipments** and **Open Qty.** columns on the **Details** tab of the [Sales Orders](SO_30_10_00.md) form.

## Cancellation of a Purchase Receipt with a Canceled Invoice {#ReleaseNotes-PurchaseReceiptCorrection_GRC_ForDrop-ShipReceipts-CorrectionorCancellationofDrop-ShipPOReceiptwithCanceledInvoice .section}

If a purchase receipt for a purchase order of the *Drop-Ship* type has a related released sales invoice, this receipt also has a related inventory issue. If you cancel the sales invoice and then cancel the purchase receipt, the system automatically generates and releases a reversal inventory issue with a reversal GL batch of transactions. In this issue, the system fully reverts the transactions that were generated on the release of the original inventory issue. The reversal inventory issue is released automatically, regardless of the state of the **Release IN Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

The link to the reversal inventory issue appears in the **Reversal IN Ref. Nbr.** box on the **Other** tab of the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

**Parent topic:**[Correcting Purchase Receipts](../UserGuide/OrderMgmt_Correcting_Purchase_Receipt_Mapref.md)

