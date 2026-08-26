# Reversal of Production Receipts {#_ed311f5b-9773-489a-bb74-71ba5df9d97b .concept}

When a production order receipt is incorrect you can adjust production order and the inventory on hand balance by creating and releasing a negative move transaction on the [Move](AM_30_20_00.md) \(AM302000\) form. This also applies to labor transactions on the [Labor](AM_30_10_00.md) \(AM301000\) form when a quantity completed is reported. The receipt transaction cost have been incorrect for a number reasons:

-   The quantity may have been wrong.
-   The lot or serial numbers were incorrect.
-   The receipt cost was wrong because transactions were not reported. This is particularly important when you are using Actual Costing.

## Creating the Move or Labor Batch { .section}

You can directly enter the transaction or paste the original batch into the form. In either case the quantity to be reversed is entered as a negative. The following must be observed:

1.  You cannot reverse more than you have completed on the last operation.
2.  If you are reversing labor also, you cannot reverse more than the actual hours reported.
3.  You cannot drive the on hand balance of the warehouse location negative if the **Allow Negative Inventory** check box is cleared on the [Item Classes](IN_20_10_00.md) \(IN201000\) form.
4.  If the inventory item is lot controlled, you must select an existing lot and the quantity cannot exceed the on hand balance. For multiple lots, you must enter each lot on a separate line.
5.  If the inventory item is serialized, you must enter each serial number on a separate line.
6.  If the inventory item has a FIFO valuation method, you must select the receipt number to adjust and the quantity cannot exceed the receipt quantity. If more than one receipt number, each receipt must be on a separate line.

These business rules are validated and enforced by the inventory adjustment on the [Adjustments](IN_30_30_00.md) \(IN303000\) form.

## Transaction Processing Details { .section}

If the transaction is valid, then:

-   The Inventory Adjustment batch is released and updates the on hand balance and unit cost.
-   The production order *Quantity Completed* and *Quantity Remaining* are adjusted
-   The production order total for *MFG to Inventory* is reduced by the extended cost.
-   The production order total for *WIP Total* is increased by the extended cost.
-   A cost batch is created to credit WIP and debit the labor \(when the backflush is checked\), overhead, machine, and tool costs.

**Note:** Materials batches created by the initial transaction because of backflushing will not be reversed.

**Parent topic:**[Production Management](../UserGuide/MFG_PD_00_00.md)

