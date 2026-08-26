# Purchase Returns at the Calculated Cost: Generated Transactions {#_e84df978-1be8-4834-8189-dc3bbd65b0e1 .concept}

The costs of items purchased from vendors may change over time, so the correct costs must be reflected on the purchase return document. To specify that items to be returned should be issued from inventory at the cost calculated by the system according to the items' valuation methods, you need to select the *Cost by Issue Strategy* option in the **Cost of Inventory Return From** box in the Summary area of the purchase return document on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

On release of the purchase return, the system prepares an inventory issue document to update inventory, which you can review on the [Issues](IN_30_20_00.md) \(IN302000\) form, and a debit adjustment to decrease the vendor balance in the system, which you can review on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. If the calculated cost at the time of the return differs from the cost at which the items were purchased, the purchase price variance difference is posted to general ledger.

## Rules of Cost Calculation { .section}

In the general ledger transactions that are posted during the processing of a purchase return, posted amount is the calculated unit cost of the item multiplied by the returned quantity \(which is specified in the **Receipt Qty.** column of the purchase return line on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form\). The cost is calculated according to the issue rules of the item's valuation method specified for the item in the **Valuation Method** box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. \(For instance, for items with *Average* as the valuation method, it is the current unit cost calculated at the moment of release of the issue that corresponds to the vendor return. For items with the *Specific* valuation method, the return cost is calculated as the accumulated quantity of items in the warehouse divided by the accumulated cost.\)

## Transactions Generated for a Return of Stock Items { .section}

Once the purchase return of a stock item at calculated cost is released on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system automatically generates a corresponding inventory issue and releases it immediately; when the inventory issue is released, the availability data for the included stock items in inventory is updated. For each line with a stock item being returned, the following general ledger transactions are generated on release of the corresponding inventory issue.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|PO Accrual account|Original purchase order line|Amount = Calculated Cost \* Qty.|0.0|
|Inventory account|Posting class|0.0|Amount|

The processing of a purchase return also includes the processing of the debit adjustment that is generated when the purchase return is released. On release of the debit adjustment, the following general ledger transactions are generated for each line with a stock item being returned.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|Amount = Calculated Cost \* Qty.|0.0|
|PO Accrual account|Original purchase order line|0.0|Amount|

## Transactions Generated for a Return of Non-Stock Items { .section}

On the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, you can process purchase return of non-stock items requiring a purchase receipt \(lines with the *Non-Stock* line type specified on the **Details** tab\). Purchase return lines of this type are added to the inventory issue generated on the release of the purchase return. For a line with a non-stock item, the following general ledger transactions are generated on release of the inventory issue that corresponds to the purchase return.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|PO Accrual account|Original purchase order line|Amount = Calculated Cost \* Qty.|0.0|
|Expense account|Posting class|0.0|Amount|

On release of the debit adjustment that is generated when the purchase return is released, the following general ledger transactions are generated.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|Amount = Calculated Cost \* Qty.|0.0|
|PO Accrual account|Original purchase order line|0.0|Amount|

## Record of the Purchase Price Variance { .section}

For stock items included in a purchase return on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system records any PO accrual difference to the Purchase Price Variance account defined in the posting class of the stock item.

For non-stock items included in a purchase return on the [Purchase Receipts](PO_30_20_00.md) form, the system records any PO accrual difference based on the **Allocation Mode** selected on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form as follows:

-   If *Purchase Price Variance Account* is selected, the system posts the PO accrual difference to the Purchase Price Variance account specified in the posting class of the item on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form.
-   If *Inventory Account* is selected, the system posts the PO accrual difference to the Expense account specified in the purchase return line.

**Parent topic:**[Processing Purchase Returns at the Calculated Cost](../UserGuide/OrderMgmt_Purchase_Return_Calc_Cost_Mapref.md)

