# Revaluation of AR Documents: General Information {#_931fd3b6-69db-49f2-a30f-e8346d4d43f3 .concept}

If your company has customers that use foreign currencies, you may process AR documents in foreign currencies and post transactions to the general ledger in foreign currencies. Because currency rates are changed over time, you may need to revalue denominated GL accounts and open AR documents.

## Learning Objectives {#section_ohz_3jv_vxb .section}

In this chapter, you will learn how to do the following:

-   Perform system setup for the revaluation of AR documents
-   Revalue open AR documents

## Applicable Scenarios {#section_qhz_3jv_vxb .section}

You perform the revaluation of open AR documents in the following cases:

-   You want to calculate unrealized gains or losses.
-   For reporting purposes, you need to determine the current value of AR documents in a foreign currency at the end of a financial period.

## Rate Type Setup for Accounts Receivable Revaluations {#section_shz_3jv_vxb .section}

You specify the default rate types for AR revaluations in the **AR Revaluation Type** box on the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form.

You can assign a rate type to each particular customer in the **Curr. Rate Type** box on the **Financial** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form. If a rate type is assigned to a particular customer, the system uses it for revaluations.

If the default rate type is not specified on the [Currency Management Preferences](CM_10_10_00.md) form or for any customer for which an account is selected for the revaluation, you will not be able to perform the revaluation.

## Revaluation of Open Documents {#section_whz_3jv_vxb .section}

If *On Post* is selected in the **Generate Reversing Entries** box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, before you start the revaluation, you should ensure that the next financial period is active on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form. This is because the revaluation batch is an auto-reversing batch—that is, the system will automatically generate a reversing batch whose date is the first day of the next period.

You perform a revaluation of open AR documents on the [Revalue AR Accounts](CM_50_50_00.md) \(CM505000\) form. On the form, you specify the period of revaluation, the date of revaluation, the foreign currency, and a description of the revaluation. You then select the particular accounts whose balances you want to revalue. For revaluation, the system uses the currency rate effective on the date of revaluation.

If needed, you can perform the revaluation of AR accounts more than once for the same period. Subsequent revaluation in the same period adjusts the results of the previous revaluation, and each revaluation generates an auto-reversing batch.

## Revaluation Batches {#section_a3z_3jv_vxb .section}

When an AR revaluation is performed, the system creates a GL batch with the results of the revaluation. The batch updates the unrealized gain \(or loss\) account specified for the currency with the calculated gain \(or loss\) amount on the [Currencies](CM_20_20_00.md) \(CM202000\) form. The system calculates the difference between the revalued balance and the original balance in the **Difference** column for each account in the selected currency. If the difference is positive, the revaluation has resulted in gains, and if the difference is negative, the revaluation has resulted in losses.

As the offset account, the system uses the AR provisioning account specified for the document currency. If the provisioning account is not specified for the currency for which you are performing the revaluation, the resulting unrealized gain or loss is posted directly to the customer's AR account. For details about generated GL batches, see [Revaluation of AR Documents: Generated Transactions](Multicurrency_RevaluationAR_Transactions.md).

## Correction of AR Revaluation Transactions { .section}

The batches created on the [Revalue AR Accounts](CM_50_50_00.md) \(CM505000\) form cannot be reversed.

If you performed AR revaluation with incorrect settings such as the period or rate and need to correct the revaluation entries, you should run the process once again with correct settings.

**Parent topic:**[Revaluing Open AR Documents](../UserGuide/Multicurrency_RevaluationAR_Mapref.md)

