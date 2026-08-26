# Stock Item Lines in Purchase Orders {#_269d5782-e79f-48d5-b2a0-47a83060b52b .concept}

When you add a stock item to a purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, the system inserts *Goods for IN* as the line type for this line. If a purchase order includes only stock items that are intended for inventory and not linked to a drop-ship order or any other sales order, its processing involves the creation of a purchase receipt \(or multiple receipts if the order is fulfilled by multiple shipments from the vendor\) and the preparation of an accounts payable bill. You can configure a particular vendor so that the AP bill for a purchase order can be created before the purchase receipt is processed.

This topic describes how the system processes stock lines added to a purchase order.

## Processing of the Purchase Receipt for the Purchase Order { .section}

You can create a receipt for a purchase order by clicking **Enter PO Receipt** on the form toolbar of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. Alternatively, on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, you can create a receipt and link it to an existing purchase order or a particular line of the order by clicking **Add PO** or **Add PO Line** on the table toolbar of the **Details** tab. You can also allocate the lines with the *Goods for IN* line type by clicking **Line Details** on the table toolbar of the **Details** tab of the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

The inventory account that is used for a stock item on a receipt by default is selected according to the **Use Inventory/Accrual Account from** setting of the posting class. On release of each purchase receipt linked to the purchase order, the system automatically generates an inventory receipt for the items listed in the purchase receipt and calculates the quantities of the received goods for each order line. These values are displayed in the **Qty. On Receipts** column on the **Details** tab of the [Purchase Orders](PO_30_10_00.md) form.

For each purchase receipt, you can create an AP bill or multiple bills.

## Processing of the Accounts Payable Bill for the Purchase Order { .section}

The general workflow of processing purchase orders with lines of any type is to process a purchase receipt \(if one is needed\) before creating an AP bill \(see [Purchases of Stock Items: General Information](OrderMgmt_Standard_Inventory_Purchase_GeneralInfo.md) for details\). However, if you receive bills from a particular vendor before the ordered items are received to inventory, you can configure this vendor so that for the purchase orders of this vendor, you can create and process an AP bill before the purchase receipt is released.

To do this, you need to select the **Allow AP Bill Before Receipt** check box in the vendor settings on the [Vendors](AP_30_30_00.md) \(AP303000\) form; in addition, you can select this check box for a particular vendor location on the [Vendor Locations](AP_30_30_10.md) \(AP303010\) form. The state of this check box is copied to each purchase order created for this vendor, and can be reviewed on the **Other** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. For a detailed description on how to process a purchase order with the associated bill being prepared before the receipt, see [Purchases with Billing Before Receipt: General Information](OrderMgmt_Purchase_Bill_Before_Receipt_GeneralInfo.md).

## Rules for Closing and Completing Goods for IN Lines { .section}

A *Goods for IN* line of a purchase order is considered closed on release of the purchase receipt or AP bill if the sum of the received quantity for all released purchase receipts prepared for this line is equal to the line quantity in all released AP bills prepared for this line, and the quantity in the AP bill lines is equal to or greater than purchase order line quantity \* \(**Complete On %**/100\). The line is also considered closed on release of the purchase receipt or AP bill if the sum of the received quantity for all released purchase receipts prepared for this line is equal to the line quantity in all released AP bills prepared for this line, and the user has selected the **Completed** check box manually.

A *Goods for IN* line of a purchase order is completed in any of the following cases:

-   Automatically if the system has closed the line \(that is, if the **Closed** check box is selected\)
-   On release of the purchase receipt prepared for the line if the user has selected the **Completed** check box manually
-   If the sum of the received quantity for all released purchase receipts prepared for this line is equal to or greater than the quantity of the purchase order line \* \(**Complete On %**/100\)

If a user processes the lines of a purchase order partially, multiple related purchase receipts and AP bills can be prepared for a single purchase order. The system determines which purchase order lines should be added to the prepared purchase receipt or AP bill depending on the status of the **Completed** and **Closed** check boxes in each line, as follows:

-   Completed purchase order lines are not added to the purchase receipt.
-   Closed lines are added to neither purchase receipts, nor to AP bills.

If all purchase order lines have the **Completed** check box selected, and at least one line still has the **Closed** check box cleared, the purchase order is assigned the *Completed* status. If all purchase order lines have the **Completed** and **Closed** check boxes selected, the purchase order is assigned the *Closed* status.

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

