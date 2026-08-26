# Purchase Price Variance Allocation: Example 2 {#_5148836e-1dca-40f2-9659-0633580e1472 .concept}

This topic describes all the documents that you would have to create and the transactions generated for these documents for the following scenario:

-   The *_Inventory Account_* mode is selected for allocation of purchase price variance \(PPV\) amounts.
-   Purchased items have the *Average* cost valuation method assigned.
-   Between the date of the receipt and the date of the bill, some quantities of the purchased items were issued \(sold\).

## Step 1. Creating a Purchase Receipt { .section}

By using the [Purchase Receipts](PO_30_20_00.md) \(PO302000\), suppose that you create a purchase receipt for the following items.

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

## Step 2. Creating an Inventory Issue { .section}

During the next few days, you sell some quantities of the items. The inventory issue is generated with the following lines.

|Item|Quantity|Unit Cost|Amount|
|----|--------|---------|------|
|**Item1**|7|250|1750|
|**Item2**|23|120|2760|
|**Item3**|5|380|1900|
|**Total:**|6410|

And this issue generates the following transactions.

|Account|Debit Amount|Credit Amount|
|-------|------------|-------------|
|**Inventory \(Item1\)**|0|1750|
|**Inventory \(Item2\)**|0|2760|
|**Inventory \(Item3\)**|0|1900|
|**Expense \(COGS\)**|6410|0|

## Step 3: Creating a Bill { .section}

Later, you receive and enter the vendor bill for the initial quantities of the items with the following information.

|Item|Quantity|Unit Cost|Amount|
|----|--------|---------|------|
|**Item1**|10|450|4500|
|**Item2**|23|200|4600|
|**Item3**|15|180|2700|
|**Total:**|11800|

On release of this bill, the following transactions are generated.

|Account|Debit Amount|Credit Amount|
|-------|------------|-------------|
|**PO Accrual**|11800|0|
|**Vendor AP**|0|11800|

Also, on release of this bill, an inventory adjustment is generated with the following lines.

|Item|Extended Cost|
|----|-------------|
|**Item1**|600|
|**Item3**|-2000|
|**Item1 \(PPV expense\)**|1400|
|**Item2 \(PPV expense\)**|1840|
|**Item3 \(PPV expense\)**|-1000|

On release of the adjustment, the following transactions are generated.

|Account|Debit Amount|Credit Amount|
|-------|------------|-------------|
|**Inventory \(Item1\)**|600|0|
|**Inventory \(Item3\)**|0|2000|
|**PPV expense \(Item1\)**|1400|0|
|**PPV expense \(Item2\)**|1840|0|
|**PPV expense \(Item3\)**|0|1000|
|**PO Accrual**|0|2000|
|**PO Accrual**|0|1840|
|**PO Accrual**|3000|0|

**Parent topic:**[Allocating the Purchase Price Variance](../UserGuide/IN__con_PPV_Allocation.md)

