# Asset Disposal: Generated Transactions {#_6c4de519-2f7c-488a-84c2-6bc5656d50f3 .concept}

As you dispose of a fixed asset, you create and process disposal transactions. To update the balances of GL accounts, the system generates the GL transactions described in the following sections.

## Transactions Generated for Asset Disposal {#section_vz2_ljv_vxb .section}

When you create and release a disposal transaction, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Gain/Loss of Fixed Asset Disposal account|The **Gain Account** and **Loss Account** boxes on the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form for the asset class|Asset cost|0.00|
|Fixed Asset account|The **Fixed Asset Account** box on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) form for the asset class|0.00|Asset cost|
|AR Accrual account|The **Proceeds Account** box on the [Disposal Methods](FA_20_70_00.md) \(FA207000\) form|Proceeds amount|0.00|
|Gain/Loss of Fixed Asset Disposal account|The **Gain Account** and **Loss Account** boxes on the [Fixed Asset Classes](FA_20_10_00.md) form for the asset class|0.00|Proceeds amount|

For the asset that was disposed of, you can view the reference number of the GL batch in the **Batch Nbr.** column on the **Transactions** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Disposing of Fixed Assets](../UserGuide/FixedAssets_Disposal_Mapref.md)

