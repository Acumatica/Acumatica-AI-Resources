# Deductions from Assets: Generated Transactions {#_abe81ad4-44dd-40f1-aa48-7259b211291c .concept}

To process deductions from fixed assets, you create and process a debit adjustment. When making a deduction, the system creates a *Purchasing–* transaction and a *Reconciliation–* transaction. The system generates the GL transactions described in the following sections.

## Transaction Generated for *Purchasing–* {#section_gxd_ljv_vxb .section}

When you process a deduction from a fixed asset, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|FA Accrual account|The **FA Accrual Account** box on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form|Amount|0.00|
|Fixed Asset account|The **Fixed Asset Account** box on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form for the asset class|0.00|Amount|

You can view the reference number of the GL batch in the **Batch Nbr.** column on the **Transactions** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated for *Reconciliation–* {#section_jxd_ljv_vxb .section}

When you process a deduction from a fixed asset, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Expense account|The expense account specified in the **Account** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form for the debit adjustment|Amount|0.00|
|FA Accrual account|The **FA Accrual Account** box on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form|0.00|Amount|

You can view the reference number of the GL batch in the **Batch Nbr.** column on the **Transactions** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Making Deductions from Fixed Assets](../UserGuide/FixedAssets_Making_Deductions_Mapref.md)

