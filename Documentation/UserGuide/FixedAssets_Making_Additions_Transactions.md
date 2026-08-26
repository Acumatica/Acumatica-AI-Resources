# Additions to Assets: Generated Transactions {#_5685c1cf-f9d2-4678-85af-fa0e577cba7a .concept}

As you make an addition to an asset, the system creates *Purchasing+* and *Reconciliation+* transactions. To update the cost of the fixed asset, the system generates the GL transaction described in the following sections.

## Transactions Generated for An Addition to a Fixed Asset {#section_wld_ljv_vxb .section}

When you release a transaction that records an addition to an asset, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Fixed Asset account|The **Fixed Asset Account** box on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form for the asset class|Addition amount|0.00|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form|0.00|Addition amount|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) form|Addition amount|0.00|
|Expense account|The expense account specified for the AP bill line on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|0.00|Addition amount|

You can view the reference number of the GL batch in the **Batch Nbr.** column on the [Fixed Asset Transactions](FA_30_10_00.md) \(FA301000\) form or on the **Transactions** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Making Additions to Fixed Assets](../UserGuide/FixedAssets_Making_Additions_Mapref.md)

