# Assets with Depreciation: Generated Transactions {#_a49503f1-d45a-4e0c-82d2-a986dcd950a6 .concept}

As you transfer and dispose of assets, the system creates fixed asset transactions. To update the balances of GL accounts, the system generates the GL transactions described in the following sections.

For any of these transactions, you can view the reference number of the GL batch in the **Batch Nbr.** column on the **Transactions** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Attention:** Split transactions are not posted to the general ledger, because they do not change the balances of the GL accounts.

## Transaction Generated for Asset Transfer {#section_agg_ljv_vxb .section}

When you transfer a fixed asset with accumulated depreciation from one branch to another branch, the system generates the following general ledger transaction.

|Branch|Account|Source of Account|Debit|Credit|
|------|-------|-----------------|-----|------|
|Destination branch|Fixed Asset account|The **Fixed Asset Account** box on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form for the asset class|Asset cost|0.00|
|Source branch|Fixed Asset account|The **Fixed Asset Account** box on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) form for the asset class|0.00|Asset cost|
|Source branch|Accumulated Depreciation account|The **Accumulated Depreciation Account** specified for the asset class on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) form|Accumulated depreciation|0.00|
|Destination branch|Accumulated Depreciation account|The **Accumulated Depreciation Account** specified for the asset class on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) form|0.00|Accumulated depreciation|

## Transaction Generated for Asset Disposal {#section_dgg_ljv_vxb .section}

When you dispose of a fixed asset with accumulated depreciation by selling it, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Gain/Loss of Fixed Asset Disposal account|The **Gain Account** and **Loss Account** boxes on the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form for the asset class|Asset cost|0.00|
|Fixed Asset account|The **Fixed Asset Account** box on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) form for the asset class|0.00|Asset cost|
|Accumulated Depreciation account|The **Accumulated Depreciation Account** specified for the asset class on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) form|Accumulated depreciation|0.00|
|Gain/Loss of Fixed Asset Disposal account|The **Gain Account** and **Loss Account** boxes on the [Fixed Asset Classes](FA_20_10_00.md) form for the asset class|0.00|Accumulated depreciation|
|AR Accrual account|The **Proceeds Account** box on the [Disposal Methods](FA_20_70_00.md) \(FA207000\) form|Proceeds amount|0.00|
|Gain/Loss of Fixed Asset Disposal account|The **Gain Account** and **Loss Account** boxes on the [Fixed Asset Classes](FA_20_10_00.md) form for the asset class|0.00|Proceeds amount|

**Parent topic:**[Managing Fixed Assets with Depreciation](../UserGuide/FixedAssets_Managing_Depreciable_FA_Mapref.md)

