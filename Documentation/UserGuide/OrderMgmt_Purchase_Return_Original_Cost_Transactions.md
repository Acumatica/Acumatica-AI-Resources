# Purchase Returns at the Original Cost: Generated Transactions {#_d9edcb1d-eb6f-4836-89cb-c20db2075cd6 .concept}

The costs of items purchased from vendors may change over time, so the correct costs must be reflected on the purchase return document. To specify that items to be returned should be issued from inventory at exactly the same cost at which the items were purchased, you need to select the *Original Cost from Receipt* option in the **Cost of Inventory Return From** box in the Summary area of the purchase return document on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

On release of the purchase return, the system prepares an inventory issue document to update inventory, which you can review on the [Issues](IN_30_20_00.md) \(IN302000\) form, and a debit adjustment to decrease the vendor balance in the system, which you can review on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## Rules of Original Cost Calculation { .section}

In the general ledger transactions that are posted during the processing of a purchase return, the posted amount is the original cost of the item multiplied by the returned quantity.

The original cost for stock items is defined depending on the valuation method specified for each item in the **Valuation Method** box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form:

-   For items with the FIFO valuation method, the system uses the average cost of the cost layer that corresponds to the purchase receipt for which the return is processed.
-   For items with the average, specific, and standard valuation methods, the system uses the cost specified in the line of the original inventory receipt or purchase receipt.

For any of the valuation methods, the cost adjustments, such as landed costs or purchase price variance, are not included in the original cost. For more information on how the system calculates items' costs depending on valuation methods, see [Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md).

## Transaction Generated for a Return of Stock Items { .section}

Once the purchase return of a stock item at original cost is released on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system automatically generates a corresponding inventory issue and releases it immediately; when the inventory issue is released, the availability data for the stock item or items in inventory is updated. For each line with a stock item being returned, the following general ledger transactions are generated on release of the corresponding inventory issue.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|PO Accrual account|Original purchase order line|Amount = Original Cost \* Qty.|0.0|
|Inventory account|Posting class|0.0|Amount|

The processing of a purchase return also includes the processing of the debit adjustment that is generated when the purchase return is released. On release of the debit adjustment, the following general ledger transactions are generated for each line with a stock item being returned.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|Amount = Original Cost \* Qty.|0.0|
|PO Accrual account|Original purchase order line|0.0|Amount|

## Transaction Generated for a Return of Non-Stock Items { .section}

On the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, you can process a purchase return of non-stock items requiring a purchase receipt \(lines with the *Non-Stock* line type specified on the **Details** tab\). Purchase return lines of this type are added to the inventory issue generated on the release of the purchase return. For a line with a non-stock item, the following general ledger transactions are generated on release of the inventory issue corresponding to the purchase return.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|PO Accrual account|Original purchase order line|Amount = Original Cost \* Qty.|0.0|
|Expense account|Purchase return line|0.0|Amount|

On release of the debit adjustment that is generated when the purchase return is released, the following general ledger transaction is generated.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|Amount = Original Cost \* Qty.|0.0|
|PO Accrual account|Original purchase order line|0.0|Amount|

**Parent topic:**[Processing Purchase Returns at the Original Cost](../UserGuide/OrderMgmt_Purchase_Return_Original_Cost_Mapref.md)

