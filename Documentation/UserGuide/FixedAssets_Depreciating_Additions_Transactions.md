# Depreciation of Additions: Generated Transactions {#_11cc8c29-85c3-4e7a-8d40-a7f69604ee50 .concept}

As you fully depreciate additions to a fixed asset, you create a manual transaction with the *Depreciation+* type to adjust depreciation. To update the balances of GL accounts, the system generates the GL transaction described in the following section.

## Transaction Generated for the Adjustment Transaction {#section_q1g_ljv_vxb .section}

When you create and release a *Depreciation+* transaction, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Depreciation Expense account|The **Depreciation Expense Account** specified for the asset on the **GL Accounts** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form|Amount|0.00|
|Accumulated Depreciation account|The **Accumulated Depreciation Account** specified for the asset class on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form|0.00|Amount|

You can view the reference number of the GL batch in the **Batch Nbr.** column on the **Transactions** tab of the [Fixed Assets](FA_30_30_00.md) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Depreciating Additions to Fixed Assets](../UserGuide/FixedAssets_Depreciating_Additions_Mapref.md)

