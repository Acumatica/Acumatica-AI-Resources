# Asset Depreciation: Generated Transactions {#_c5de3777-b0e2-4fde-9daf-45127b0535d8 .concept}

As you depreciate fixed assets, you create and process depreciation transactions. To update the balances of GL accounts, the system generates the GL transaction described in the following section.

## Transaction Generated for Depreciation {#section_clf_ljv_vxb .section}

When you depreciate a fixed asset and release the depreciation transaction, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Depreciation Expense account|The **Depreciation Expense Account** specified for the asset on the **GL Accounts** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form|Depreciation amount|0.00|
|Accumulated Depreciation account|The **Accumulated Depreciation Account** specified for the asset class on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form|0.00|Depreciation amount|

You can view the reference number of the GL batch in the **Batch Nbr.** column on the **Transactions** tab of the [Fixed Assets](FA_30_30_00.md) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Depreciating Fixed Assets](../UserGuide/FixedAssets_Depreciation_Mapref.md)

