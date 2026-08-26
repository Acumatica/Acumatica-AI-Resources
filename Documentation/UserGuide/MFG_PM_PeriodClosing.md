# Period Closing Tasks {#_8a0d3bde-30f2-4574-9336-3b8913d6cb6b .concept}

There is no closing procedure for production management itself but because of its integration with inventory and general ledger functional areas there are processes that should be completed before closing the integrated modules.

## Release Production Transaction Batches { .section}

There could be transactions that have been entered but not released. Their status can be *Balanced* or *On Hold*.

-   To process balanced batches
    -   The [Release AM Documents](AM_50_30_00.md) \(AM503000\) form lists all of the transaction batches that have a status of *Balanced*. You can open the batch from this form to review the data and release the batch from the form or just select the batches to process.
-   To find batches on hold, do the following:
    -   Use the [Production Batch Register](AM_62_20_00.md) \(AM622000\) report and add the `AMBatch.Status = On Hold` filter on the **Additional Filtering Conditions** tab.

        **Tip:** If you are looking for all unreleased transactions, you can add a second line to the report filter `Or AMBatchStatus = Balanced`.

    -   Use the [Transactions By Production Order](AM_00_00_11.md) \(AM000011\) report to find the all of the unreleased batches.

## Close Production Orders { .section}

Closing completed production order zeros out the WIP balance and generates a WIP adjustment transaction on the [WIP Adjustment](AM_30_80_00.md) \(AM308000\) form. The [Close Production Orders](AM_50_60_00.md) \(AM506000\) form lists the production orders that have been completed. Any order with a significant WIP Balance should be reviewed to determine if transactions were not posted or there have been data entry errors. A production order cannot be closed if it is in an unreleased transaction batch. Even if a production order has a status of *Completed*, additional transactions may be entered to correct the actuals.

**Attention:** Transactions posted to production orders after they have been completed do not update the cost statistics for the item produced. If the received costs must be updated you may be able to reverse the move or labor transaction, post the missing transactions, and do the move labor transactions if the item produced still has a sufficient hand balance.

**Parent topic:**[Production Management](../UserGuide/MFG_PD_00_00.md)

