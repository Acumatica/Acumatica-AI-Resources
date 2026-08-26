# Non-Default Asset Settings: Generated Transactions {#_a26efa1b-067e-4cf2-a99f-e37a8899ebb5 .concept}

As you create a fixed asset, you create and process purchasing transactions. To update GL balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for the Fixed Asset Purchase {#section_cgd_ljv_vxb .section}

When you create a fixed asset on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Fixed Asset account|The **Fixed Asset Account** box on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form for the asset class|Asset cost|0.00|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form|0.00|Asset cost|

You can view the reference number of the GL batch in the **Batch Nbr.** column on the [Fixed Asset Transactions](FA_30_10_00.md) \(FA301000\) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated for Fixed Asset Reconciliation {#section_fgd_ljv_vxb .section}

When you reconcile a fixed asset with the GL account generated on release of an AP bill, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form|Amount|0.00|
|Expense account|The expense account specified in the **Account** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form for the bill line|0.00|Amount|

You can view the reference number of the GL batch in the **Batch Nbr.** column on the [Fixed Asset Transactions](FA_30_10_00.md) \(FA301000\) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Changing an Asset's Default Settings](../UserGuide/FixedAssets_Changing_Default_Settings_Mapref.md)

