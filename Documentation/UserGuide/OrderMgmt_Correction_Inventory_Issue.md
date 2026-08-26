# Purchase Receipt Correction: Correction Inventory Issue {#_52fa8fc4-a733-493e-bc5e-0098bb1d3fb9 .concept}

Inventory validation is performed on release of a correction purchase receipt for a normal purchase order. If the validation succeeds, the system generates and releases a corresponding correction inventory issue. You can find the link to this issue in the **IN Ref. Nbr.** box on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form. This issue will be released automatically, regardless of the state of the **Release IN Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

The inventory issue includes transactions of the following types:

-   *Issue*
-   *Receipt*
-   *Adjustment* \(optional\)

The transactions of the *Issue* and *Receipt* type are generated for each corrected line of the purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, excluding the following lines:

-   Those whose correction does not update the state of the inventory.
-   Those whose quantity was changed to *0*. For these lines, only transactions with the *Issue* type are generated.
-   Those with the *Service* or *Freight* type. These lines are not included either in the inventory receipt for the original receipt or in the inventory issue for the correction receipt.

On release of the correction inventory issue, the system first processes the transaction with the *Receipt* type and then processes the transaction with the *Issue* type.

The correction inventory issue can also include transactions of the *Adjustment* type if one of the following conditions is met for an item in the correction purchase receipt:

-   The unit cost or extended cost of the item has been changed while part of the received quantity has already been issued, sold, or transferred from the receiving warehouse.
-   The item is issued with a cost that differs from the original cost and the resulting quantity on hand for the item is *0*.

In the *Adjustment* transactions, the system does the following:

-   Debits the inventory account
-   Credits the account specified in the **Purchase Receipt Correction Reason Code** box on the of the [Posting Classes](IN_20_60_00.md) \(IN206000\) form for the posting class of the stock item

If the correction purchase receipt has lines with non-stock items, the system includes them in the related correction inventory issue if at least one of the following values has been changed in the line:

-   **Warehouse**
-   **Location**
-   **UOM**
-   **Receipt Qty.**
-   **Unit Cost**
-   **Ext. Cost**
-   **Account**
-   **Sub.**
-   **Accrual Account**
-   **Accrual Sub.**

## Example of a Correction Inventory Issue for Stock Items with FIFO and Specific Valuation Methods { .section}

The following example illustrates the process of the correction and the generated inventory issue for stock items with the *FIFO* and *Specific* valuation methods. Suppose that the company has the following items in stock:

-   An item with the *FIFO* valuation method whose on-hand quantity is *100*. This quantity has been received in a single purchase in which the unit cost of the item is *100*.
-   A serial-tracked item with the *Specific* valuation method. The serial numbers from *LRF00001* to *LRF000015* are on hand.
-   A lot-tracked item with the *Specific* valuation method.

On the [Purchase Receipts](PO_30_20_00.md) \(PO302000\), a purchase manager releases a purchase receipt for a purchase order of the *Normal* type. The purchase receipt includes lines with the following items:

-   An item with the *FIFO* valuation method whose quantity is *100* and unit cost is *90*.
-   Two serial-tracked items with the following numbers: *LRF000016* and *LRF000017*. Both items have a unit cost of *150*.
-   A lot-tracked item whose quantity is *10* and unit cost is *250*.

On the [Purchase Receipts](PO_30_20_00.md) form, the purchase manager clicks **Correct Receipt** on the More menu. The system creates a correction receipt. The manager changes the unit cost of the *FIFO* item from *90* to *95* and the serial number of one of the serial-tracked items from *LRF000016* to *LRFC00016*.

The purchase manager releases the correction receipt, and the system generates a correction inventory issue with the following lines:

-   A line with the *Issue* transaction type and the following settings for the item with the *FIFO* valuation method:

    -   **Receipt Qty.**: *100*
    -   **Unit Cost**: *90*
    The item is issued from the cost layer of the original purchase receipt.

-   A line with the *Issue* transaction type and the following settings for the serial-tracked item:
    -   **Lot/Serial Nbr.**: *LRF000016* and *LRF000017*
    -   **Qty.**: *2*
    -   **Unit Cost**: *150*
-   A line with the *Receipt* transaction type and the following settings for the item with the *FIFO* valuation method:
    -   **Receipt Qty.**: *100*
    -   **Unit Cost**: *95*
-   A line with the *Receipt* transaction type and the following settings for the serial-tracked items:
    -   **Lot/Serial Nbr.**: *LRFC00016* and *LRF000017*
    -   **Qty.**: *2*
    -   **Unit Cost**: *150*

The system does not include the line with the lot-tracked item in the correction inventory issue because the purchase manager did not make any changes to this line in the correction purchase receipt.

## Example of General Ledger Transactions for a Correction with Cost Adjustments { .section}

Suppose that on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, a purchase manager has processed a purchase receipt with a line that contains 10 items with the *Average* valuation method and a unit cost of *10*. Once the purchase receipt is released, the on-hand quantity of the item is *10*, and its total cost is *100*.

On the same day, a sales manager has sold five units of the item with a unit cost of *10*. The remaining on-hand quantity of the item is *5*, and the total cost is *50*.

The purchase manager finds out that the unit cost of the received item should be *7*, not *10*. The manager clicks **Correct Receipt** on the [Purchase Receipts](PO_30_20_00.md) form and specifies *7* as the unit cost in the line of the correction receipt. On release of the correction receipt, the system generates and releases a correction inventory issue. On release of the issue, the system posts the following transactions to the general ledger.

|Account|Debit Amount|Credit Amount|
|-------|------------|-------------|
|Inventory account|70 \(the receipt of the item with the corrected unit cost\)|0|
|PO accrual account|0|70|
|Inventory account|15 \(the difference in cost for the sold units\)|0|
|The account of the correction reason code|0|15 \(the difference in cost for the offset units\)|
|Inventory account|0|100 \(the issue of the item with the original cost\)|
|PO accrual account|100|0|

**Parent topic:**[Correcting Purchase Receipts](../UserGuide/OrderMgmt_Correcting_Purchase_Receipt_Mapref.md)

