# Project Transactions: Reversal of Project Transactions {#_891c821b-4c7b-4fec-aa81-b4b52b42e9fa .concept}

On the [Project Transactions](PM_30_40_00.md) \(PM304000\) form, you can reverse direct and imported project transactions with the *PM* source in just one click. You can also reverse project transactions with the *AR* source that were uploaded in migration mode.

These capabilities streamline error correction during manual entry and give you more control when you’re cleaning up historical data.

## Reversal of Transactions with the PM Source { .section}

Suppose that you’ve recorded labor, overhead, or warranty costs by manually creating and releasing a project transaction with the *PM* source on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form. Later, you analyze the budget of the corresponding project and discover an incorrect amount.

Or perhaps during data migration, some incorrect project transactions with the *PM* source were uploaded to the system via an Excel file, an import scenario, or a third-party system.

You can reverse the erroneous transaction by clicking **Reverse** on the form toolbar. When you do this, the system creates and releases the reversal transaction and excludes the reversed transaction from billing and allocation. Here what you'll see in the reversal transaction:

-   The number of the original project transaction in the **Orig. Doc. Nbr.** box
-   The *Project transaction reversal* description so that you can quickly identify the reversal record
-   Each line with an amount that has the opposite sign of the line in the original project transaction
-   The same date and post period of the original project transaction
-   The selected **Excluded from Allocation** check box

**Attention:** If a project transaction has the *PM* source but originates from another document, such as a time card or time activity, you cannot reverse it.

## Reversal of Historical Transactions with the AR Source { .section}

Suppose that migration mode was activated on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. In this mode, some incorrect project transactions with the *AR* source were uploaded to the system from an Excel file or through an import scenario. You can reverse these transactions by clicking **Reverse** on the form toolbar of the [Project Transactions](PM_30_40_00.md) \(PM304000\) form.

**Parent topic:**[Processing Project Transactions](../UserGuide/Projects_Transactions_Mapref.md)

