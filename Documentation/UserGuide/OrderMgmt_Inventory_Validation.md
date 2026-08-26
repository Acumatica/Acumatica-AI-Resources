# Purchase Receipt Correction: Inventory Validation {#_9db3870c-907e-4f69-ab66-a27b0ff55c57 .concept}

In correction purchase receipts for a normal purchase order, you can make these types of corrections:

-   A correction that does not update the state of the inventory or the information in the original inventory receipt. For example, suppose that you change the vendor reference number or the transaction description.
-   A correction that updates the state of the inventory or the information in the original inventory receipt, such as the correction of the receipt quantity or unit cost.

For the first type of correction, the system does not perform any additional actions. For the second type, the system performs inventory validation when the correction receipt is released. That is, it verifies whether stock items can be issued in the quantity of the original receipt and at the original cost based on the current inventory state. This validation is required because some quantities could have already been sold, shipped, or transferred by the time the correction receipt is released.

**Attention:** An item can be issued at a cost that differs from the cost in the original receipt if the resulting on-hand quantity is *0* in the cost layer from which the item is issued.

If the inventory validation fails, the system shows an error message, and you can make additional changes if you want to proceed with the correction. You can also delete the correction receipt if the correction cannot be performed. For example, the correction will not be possible if the correction receipt includes a serial-tracked item that has already been sold. If the validation is successful, the system generates and releases a correction inventory issue for the correction receipt. For details on this issue, see [Purchase Receipt Correction: Correction Inventory Issue](OrderMgmt_Correction_Inventory_Issue.md).

The system validates only stock items from the original inventory receipt. For items with the *FIFO* and *Specific* valuation methods, the validation is performed for the cost layers that have been updated on release of the original inventory receipt as follows:

-   *FIFO* valuation method: The system verifies if these items can be issued from a cost layer of the original inventory receipt.
-   *Specific* valuation method: The system verifies the cost layers of the lot or serial numbers included in the original inventory receipt.

To determine whether the original quantity of a stock item can be issued, the system validates its available-for-issue quantity. For an item with the *FIFO*, *Average*, or *Standard* valuation method, if this quantity is not sufficient in the cost layer of the item, the system also checks whether a negative quantity is allowed. That is, it checks the state of the **Allow Negative Quantity** check box on the [Item Classes](IN_20_10_00.md) \(IN201000\) form for the item's class. Depending on the state of the check box, the system does either of the following:

-   **If the check box is cleared:**The system prohibits the issue. The validation fails, and the system shows an error message.
-   **If the check box is selected:**The system allows the issue if the original quantity of the item is greater than the available-for-issue quantity and is not greater than the quantity on hand.

**Important:** The system does not allow the release of a correction receipt if an included stock item's resulting on-hand quantity in the inventory will remain or become negative due to the correction. This is true regardless of the state of the **Allow Negative Quantity** check box for the item's class.

The inventory validation applies a specific rule if the original receipt was prepared for a purchase order linked to a sales order that is marked for purchase. If this sales order has a prepared shipment for an item, the quantity of this item in the correction receipt cannot be less than the quantity in the shipment.

The system does not validate the quantity and cost of lines with non-stock items.

**Parent topic:**[Correcting Purchase Receipts](../UserGuide/OrderMgmt_Correcting_Purchase_Receipt_Mapref.md)

