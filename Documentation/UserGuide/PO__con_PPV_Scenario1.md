# Purchase Price Variance Allocation: Example 1 {#_4463d447-d28d-4c0a-b380-e8b77db4f28d .concept}

This topic describes all the documents that you would need to create and the transactions generated for the following scenario:

-   The *_Inventory Account_* mode is selected for allocation of purchase price variance \(PPV\) amounts.
-   Purchased items have the *Average* cost valuation method assigned.
-   All the quantities of the items remain in stock at the date when a bill is created.

.

## Step 1: Creating a Purchase Receipt { .section}

By using the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, you create a purchase receipt for the following items.

|Item|Quantity|Unit Cost|Amount|
|----|--------|---------|------|
|**Item1**|10|250|2500|
|**Item2**|23|120|2760|
|**Item3**|15|380|5700|
|**Total:**|10960|

As a result, an inventory receipt is created and released. On its release, the following transactions are generated.

|Account|Debit Amount|Credit Amount|
|-------|------------|-------------|
|**Inventory \(Item1\)**|2500|0|
|**Inventory \(Item2\)**|2760|0|
|**Inventory \(Item3\)**|5700|0|
|**PO Accrual**|0|10960|

## Step 2: Creating a Bill { .section}

Later, you receive and enter the vendor bill for the initial quantities of the items with the following information.

|Item|Quantity|Unit Cost|Amount|
|----|--------|---------|------|
|**Item1**|10|450|4500|
|**Item2**|23|120|2760|
|**Item3**|15|180|2700|
|**Total:**|9960|

On release of the bill, the following transactions have been generated.

|Account|Debit Amount|Credit Amount|
|-------|------------|-------------|
|**PO Accrual**|9960|0|
|**Vendor AP**|0|9960|

Also, on release of this bill, an inventory adjustment has been generated with the following lines.

|Item|Extended Cost|
|----|-------------|
|**Item1**|2000|
|**Item3**|-3000|

|Account|Debit Amount|Credit Amount|
|-------|------------|-------------|
|**Inventory \(Item1\)**|2000|0|
|**Inventory \(Item2\)**|0|3000|
|**PO Accrual**|1000|0|

**Parent topic:**[Allocating the Purchase Price Variance](../UserGuide/IN__con_PPV_Allocation.md)

