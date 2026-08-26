# Revaluation of AP Documents: General Information {#_c40a563e-d5f1-4353-81e3-ed521acc5703 .concept}

If your company has vendors that use foreign currencies, you may process AP documents in foreign currencies and post transactions to the general ledger in foreign currencies. Because currency rates are changed over time, you may need to revalue denominated GL accounts and open AP documents.

## Learning Objectives {#section_bxy_3jv_vxb .section}

In this chapter, you will learn how to do the following:

-   Perform system setup for the revaluation of AP documents
-   Revalue open AP documents

## Applicable Scenarios {#section_dxy_3jv_vxb .section}

You perform the revaluation of open AP documents in the following cases:

-   You want to calculate unrealized gains or losses.
-   For reporting purposes, you need to determine the current value of AP documents in a foreign currency at the end of a financial period.

## Rate Type Setup for Accounts Payable Revaluations {#section_fxy_3jv_vxb .section}

You specify the default rate types for AP revaluations in the **AP Revaluation Type** box on the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form.

You can assign a rate type to each particular vendor in the **Curr. Rate Type** box on the **Financial** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form. If a rate type is assigned to a particular vendor, the system uses it for revaluations.

If the default rate type is not specified on the [Currency Management Preferences](CM_10_10_00.md) form or for any vendor for which an account is selected for the revaluation, you will not be able to perform the revaluation.

## Revaluation of Open Documents {#section_jxy_3jv_vxb .section}

If *On Post* is selected in the **Generate Reversing Entries** box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, before you start the revaluation, you should ensure that the next financial period is active on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form. This is because the revaluation batch is an auto-reversing batch—that is, the system will automatically generate a reversing batch whose date is the first day of the next period.

You perform a revaluation of open AP documents on the [Revalue AP Accounts](CM_50_40_00.md) \(CM504000\) form. On the form, you specify the period of revaluation, the date of revaluation, the foreign currency, and a description of the revaluation. You then select the particular accounts whose balances you want to revalue. For revaluation, the system uses the currency rate effective on the date of revaluation.

If needed, you can perform the AP revaluation more than once for the same period. Subsequent revaluation in the same period adjusts the results of the previous revaluation, and each revaluation generates an auto-reversing batch.

## Revaluation Batches {#section_nxy_3jv_vxb .section}

After the revaluation is performed, the system creates a GL batch with the results of revaluation. The batch updates the unrealized gain \(or loss\) account specified for the currency with the calculated gain \(or loss\) amount. As the offset account, the system uses the AP provisioning account specified for the document currency. If the provisioning account is not specified for the currency for which you are performing the revaluation, the resulting unrealized gain or loss is posted directly to the vendor's AP account.

For details about generated GL batches, see [Revaluation of AP Documents: Generated Transactions](Multicurrency_RevaluationAP_Transactions.md).

## Correction of AP Revaluation Transactions { .section}

The batches created on the [Revalue AP Accounts](CM_50_40_00.md) \(CM504000\) cannot be reversed.

If you performed AP revaluation with incorrect settings such as the period or rate and need to correct the revaluation entries, you should run the process once again with correct settings.

**Parent topic:**[Revaluing Open AP Documents](../UserGuide/Multicurrency_RevaluationAP_Mapref.md)

