# Asset Transfers: Generated Transactions {#_7700f267-3b4e-4156-9244-d35648677d9e .concept}

As you transfer fixed assets, you create and process transfer transactions. To track the locations of items and update the GL balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for Asset Transfer {#section_f32_ljv_vxb .section}

When you create and release a transfer transaction from one branch to another branch, the system generates the following general ledger transaction.

|Branch|Account|Source of Account|Debit|Credit|
|------|-------|-----------------|-----|------|
|Destination branch|Fixed Asset account|The **Fixed Asset Account** box on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form for the asset class|Asset cost|0.00|
|Source branch|Fixed Asset account|The **Fixed Asset Account** box on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) form for the asset class|0.00|Asset cost|

You can view the reference number of the GL batch in the **Batch Nbr.** column on the **Transactions** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form for the transferred asset. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Transferring Fixed Assets](../UserGuide/FixedAssets_Transfers_Mapref.md)

