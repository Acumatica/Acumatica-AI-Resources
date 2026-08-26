# Conversion of a Purchase: Generated Transactions {#_7fa089cf-96fd-475a-a642-367646f581c2 .concept}

As you convert a purchase to a fixed asset, you create and process an acquisition transaction. To update the GL balances, the system generates the general ledger transaction described in the following section.

## Transaction Generated for Fixed Asset Acquisition {#section_o4c_ljv_vxb .section}

When you create a fixed asset and release an acquisition transaction, the system generates the following GL transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Fixed Asset account|The **Fixed Asset Account** box on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form for the asset class|Asset cost|0.00|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form|0.00|Asset cost|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) form|Asset cost|0.00|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) form|0.00|Asset cost|

You can view the reference number of the GL batch in the **Batch Nbr.** column of the table on the [Fixed Asset Transactions](FA_30_10_00.md) \(FA301000\) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Converting Purchases to Fixed Assets](../UserGuide/FixedAssets_Converting_Purchase_Mapref.md)

