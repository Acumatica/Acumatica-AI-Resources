# Item Costs and Valuation Methods: Items with a Negative On-Hand Quantity {#_09bcbd57-730c-4d3a-aefe-f89ddb107213 .concept}

A negative quantity of a stock item is allowed at a warehouse if the **Allow Negative Quantity** check box is selected in the **General** tab of the [Item Classes](IN_20_10_00.md) \(IN201000\) form for the item's class.

**Attention:**

-   This check box affects items with the *Standard*, *Average Cost*, and *FIFO* valuation methods only. You cannot select this check box for stock items with lot or serial numbers assigned.
-   If you are using Acumatica ERP Manufacturing Edition, you should not allow a negative quantity for stock items with any valuation method other than *Standard*.

Negative quantities at a warehouse location occur when the quantity of the item in the inventory issue on the [Issues](IN_30_20_00.md) \(IN302000\) form or on the **Stock Components** tab of the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form is greater than the on-hand quantity of the item at this location. For the over-issued quantity, a new cost layer is created. The cost is determined as follows:

-   For items with the *Average Cost* valuation method and non-zero quantity on hand, the average cost of the item is used.
-   For items with the *Average Cost* valuation method and on hand quantity equal to zero, the last cost of the item is used.
-   For items with the *FIFO* valuation method, the last cost of the item is used.
-   For items with the *Standard* cost valuation method, the standard cost is used.

On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, the system inserts separate entries for the available quantity of the item and for the over-issued quantity of the item to the GL batch related to the issue.

Suppose that you need to issue *10* pieces of the *APJAM32* item. The item has the *FIFO* valuation method, the available quantity is *6*, and the last cost is *20*. The resulting transaction in the GL batch will look as follows:

|Account|Quantity|Debit|Credit|
|-------|--------|-----|------|
|Inventory account|-6|0.0|120.0|
|AR Accrual Account|6|120.0|0.0|
|Inventory account|-4|0.0|80.0|
|AR Accrual Account|4|80.0|0.0|

When the item is delivered to the warehouse and you create and release a receipt on the [Receipts](IN_30_10_00.md) \(IN301000\) form, in the GL batch which is related to this receipt, the system automatically creates two adjusting entries for the over-issued quantity of the issue, in which the quantity of the item went negative. The first entry debits the inventory account and credits the AR accrual account. The item cost is copied from the cost in the cost layer for the over-issued quantity and the inventory account is copied from the GL batch related to the issue which caused the negative quantity. The second entry debits the AR accrual account and credits the inventory account. The cost is copied from the receipt and the inventory account is copied from the main entry of the GL batch related to the receipt.

Suppose that you have created and released the receipt of *20* pieces of *APJAM32* to the location in which you still have negative quantity of *-4* pieces of *APJAM32* from the issue. The cost of the item in the receipt is *25*. The resulting transaction in the GL batch will look as follows:

|Account|Quantity|Debit|Credit|
|-------|--------|-----|------|
|Inventory Asset|20|500|0.0|
|AP Accrual Account|-20|0.0|500|
|Inventory Asset|4|80.0|0.0|
|AR Accrual Account|-4|0.0|80.0|
|Inventory Asset|-4|0.0|100.0|
|AR Accrual Account|4|100.0|0.0|

The system inserts the reference number of the issue, for which the additional entries are created, to the **Ref. Nbr.** column of the [Journal Transactions](GL_30_10_00.md) form \(**Details** tab\) in the lines of the adjusting entries. Also, the system updates the value of the **Ext. Cost** column on the [Issues](IN_30_20_00.md) \(IN302000\) form in the line which caused the negative quantity of the item.

**Parent topic:**[Managing Item Costs and Valuation Methods](../UserGuide/Item_Costs_Valuation_Methods_Mapref.md)

