# Revaluation of Bank Accounts: General Information {#_6ba09554-2ff6-48bc-b19a-19427c1e09a4 .concept}

General ledger revaluation is performed for accounts denominated in a foreign currency. Revaluation reflects changes in currency rates between the date when a journal entry in the foreign currency was created and the date of revaluation. GL revaluation is performed with respect to the base currency. Gains or losses resulting from revaluation are posted to the revaluation gain or loss account that is specified for the currency in which the account is denominated.

## Learning Objectives {#section_wqz_3jv_vxb .section}

In this chapter, you will learn how to revalue a bank account denominated in a foreign currency.

## Applicable Scenarios {#section_yqz_3jv_vxb .section}

You perform a revaluation of a GL account denominated in a foreign currency in the following cases:

-   You want to calculate unrealized gains or losses.
-   You need to update the balance of a bank account denominated in a foreign currency.

## Configuration for GL Revaluations {#section_arz_3jv_vxb .section}

For each denominated account, you can specify a rate type in the **Revaluation Rate Type** column on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, so that for revaluation, the system uses the currency rate of the specified type. If you do not assign a rate type to an account, the system uses the default rate type, which you specify in the **GL Revaluation Rate Type** box on the [Currency Management Preferences](CM_10_10_00.md) \(CM506000\) form. For details on the denominated accounts, see [Denominated Accounts](GL__con_Denominated_Accounts.md).

For each foreign currency, you select the accounts to which the system posts gains and losses from revaluations in the **Revaluation Gain and Loss Accounts** section on the [Currencies](CM_20_20_00.md) \(CM202000\) form.

## Revaluation of GL Accounts Denominated in a Foreign Currency {#section_drz_3jv_vxb .section}

You revalue the GL accounts denominated in a foreign currency on the [Revalue GL Accounts](CM_50_60_00.md) \(CM506000\) form. On the form, you specify the period of revaluation, the date of revaluation, the foreign currency, and a description of the revaluation. You can select particular accounts whose balances you want to revalue or perform revaluation for all available accounts on the form. For revaluation, the system uses the currency rate that was effective on the date of revaluation.

**Attention:** Although the [Revalue GL Accounts](CM_50_60_00.md) form may show inactive accounts—those with the **Active** check box cleared on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form—these accounts cannot be selected for revaluation.

You can run GL revaluations as many times as you need to. Each time you perform a revaluation, the balance of the denominated account in the base currency is updated by the calculated difference. Each subsequent revaluation adjusts the results of the previous one.

Gains and losses calculated for GL revaluations are generally included in the net income for the period.

## Reversal of Revaluation Transactions {#section_hrz_3jv_vxb .section}

If a GL transaction generated on the [Revalue GL Accounts](CM_50_60_00.md) \(CM506000\) form requires correction, you can reverse it using the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

To reverse a GL transaction generated during revaluation of GL accounts, you perform the following actions:

1.  On the [Journal Transactions](GL_30_10_00.md) form, you open the GL revaluation batch that you want to reverse.
2.  On the More menu, you click **Reverse**. The system creates a reversing batch, which is a copy of the original batch with the debit and credit amounts swapped to offset the original transaction.
3.  Optional: You edit the **Description** box for the batch. All the other boxes are read-only.
4.  You release the reversing batch by clicking **Release** on the form toolbar.

For details on reversing transactions, see [Reversing Transactions: General Information](Finance_Reversing_Transactions_GeneralInfo.md).

**Important:** You cannot reverse batches created on the [Revalue AP Accounts](CM_50_40_00.md) \(CM504000\) and [Revalue AR Accounts](CM_50_50_00.md) \(CM505000\) forms.

If you performed AR or AP revaluation with incorrect settings such as the period or rate and need to correct the revaluation entries, you should run the process once again with correct settings. For more details, see [Revaluation of AP Documents: General Information](Multicurrency_RevaluationAP_General_Info.md) and [Revaluation of AR Documents: General Information](Multicurrency_RevaluationAR_GeneralInfo.md).

**Parent topic:**[Revaluing Bank Accounts](../UserGuide/Multicurrency_RevaluationGL_Mapref.md)

