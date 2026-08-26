# Fixed Asset Creation: Generated Transactions {#_894105e1-a695-4d20-956d-487ff793395a .concept}

As you enter fixed assets, the system creates and processes fixed asset transactions. To update the GL balances, the system generates the general ledger transactions described in the following sections.

## Transaction Generated for Fixed Asset Acquisition { .section}

When you create a fixed asset \(whether or not it is under construction\) and release the acquisition transaction, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Fixed Asset account|The **Fixed Asset Account** box on the **GL Accounts** tab of the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form for the asset class|Asset cost|0.00|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form|0.00|Asset cost|

You can view the reference number of the GL batch in the **Batch Nbr.** column on the [Fixed Asset Transactions](FA_30_10_00.md) \(FA301000\) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated for Fixed Asset Reconciliation { .section}

When you reconcile a fixed asset to two GL transactions and release the reconciliation transaction, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form|Cost of asset 1|0.00|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) form|0.00|Cost of asset 1|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) form|Cost of asset 2|0.00|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) form|0.00|Cost of asset 2|

You can view the reference number of the GL batch in the **Batch Nbr.** column on the [Fixed Asset Transactions](FA_30_10_00.md) \(FA301000\) form. The reference number is also a link that you can click to view the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transaction Generated for Reconciliation of a Fixed Asset Under Construction { .section}

When you reconcile a fixed asset under construction with a GL transaction and release the reconciliation transaction, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form|Asset cost|0.00|
|FA Accrual account|The **FA Accrual Account** on the [Fixed Assets Preferences](FA_10_10_00.md) form|0.00|Asset cost|

**Parent topic:**[Creating Fixed Assets](../UserGuide/FixedAssets_Adding_Fixed_Asset_Mapref.md)

