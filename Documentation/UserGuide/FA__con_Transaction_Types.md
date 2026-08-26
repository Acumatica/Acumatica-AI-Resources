# Types of Fixed Asset Transactions {#_e41ba2d8-6efd-412b-8f71-99f51b400873 .concept}

When users perform actions involving fixed assets, the system automatically creates fixed asset transactions, which you can view on the [Fixed Asset Transactions](FA_30_10_00.md) \(FA301000\) form. \(All of these transactions are recorded in the base currency.\) You can also use this form to manually create fixed asset transactions and to view the asset's transaction history.

Depending on the type of generated transaction, the system may use some of the following accounts:

-   Fixed Assets account: The account specified for a fixed asset in the **Fixed Assets Account** box on the **GL Accounts** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form. By default, the system copies this account from the fixed asset class selected for the fixed asset.
-   Fixed Assets Accrual account: This is an asset account that is used to record the cost of purchased items that have not been put into service yet. The account is specified for a fixed asset in the **FA Accrual Account** box on the **GL Accounts** tab of the [Fixed Assets](FA_30_30_00.md) form. By default, the system copies this account from the **FA Accrual Account** box on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form.
-   Document line account: The account that has been specified in the document \(such as an AP bill\) and that has been debited by purchasing of the item that then was converted to a fixed asset.

    **Attention:** Often, the default fixed asset accrual account \(specified in the **FA Accrual Account** box on the [Fixed Assets Preferences](FA_10_10_00.md) form\) is used in a document \(for example, in the AP bill\) because the item that is supposed to be a fixed asset has been purchased. In that case, the same account will be debited and credited by the *Reconciliation+* or *Reconciliation-* transaction.

-   Accumulated Depreciation account: The account specified for a fixed asset in the **Accumulated Depreciation Account** box on the **GL Accounts** tab of the [Fixed Assets](FA_30_30_00.md) form. By default, the system copies this account from the fixed asset class selected for the fixed asset.
-   Depreciation Expense account: The account specified for a fixed asset in the **Depreciation Expense Account** box on the **GL Accounts** tab of the [Fixed Assets](FA_30_30_00.md) form. By default, the system copies this account from the fixed asset class selected for the fixed asset.
-   Gain account: The account specified for a fixed asset in the **Gain Account** box on the **GL Accounts** tab of the [Fixed Assets](FA_30_30_00.md) form. By default, the system copies this account from the fixed asset class selected for the fixed asset.
-   Loss account: The account specified for a fixed asset in the **Loss Account** box on the **GL Accounts** tab of the [Fixed Assets](FA_30_30_00.md) form. By default, the system copies this account from the fixed asset class selected for the fixed asset.
-   Proceeds account: The account specified for a fixed asset in the **Proceeds Account** box on the **GL Accounts** tab of the [Fixed Assets](FA_30_30_00.md) form. By default, the system copies this account from the fixed asset class selected for the fixed asset. If the proceeds account is not specified for a fixed asset, the system copies it from the selected disposal method.

The types of fixed asset transactions are shown in the **Transaction Type** column for every transaction line on the [Fixed Asset Transactions](FA_30_10_00.md) form. These types are described in detail in the remainder of this topic.

**Tip:** In each of chapter of this guide about user actions that cause fixed asset transactions to be produced, you can refer to the *Generated Transactions* topic, which describes the specific transactions that are generated.

## *Purchasing+* {#section_sqb_ljv_vxb .section}

A transaction of the *Purchasing+* type is created when a new asset has been acquired. Through this transaction, the cost of the asset is transferred from the Fixed Asset Accrual account to the Fixed Assets account. The system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Fixed Assets account|Amount|0.00|
|FA Accrual account|0.00|Amount|

The system generates a *Purchasing+* transaction when a user creates an asset in the system either manually on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form or by converting a purchase to an asset on the [Convert Purchases to Assets](FA_50_45_00.md) \(FA504500\) form, or when the user increases the net book value of a fixed asset. To populate the date and period of the *Purchasing+* transaction, the system uses the date \(and its financial period\) of the purchase document \(AP bill or purchase order\) that reflects the fixed asset's purchase. This date is specified in the **Receipt Date** box in the lower table on the [Convert Purchases to Assets](FA_50_45_00.md) form.

A user can also create a *Purchasing+* transaction manually on the [Fixed Asset Transactions](FA_30_10_00.md) \(FA301000\) form to adjust the cost for a fixed asset in a particular book.

## *Purchasing–* {#section_wqb_ljv_vxb .section}

A transaction of this type is created automatically when a user reverses the acquisition of a fixed asset or decreases the net book value of a fixed asset.

Through this transaction, the cost of the asset is transferred from the Fixed Assets account to the account specified in the acquisition document \(by default, the FA Accrual account\). The system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|FA Accrual account|Amount|0.00|
|Fixed Assets account|0.00|Amount|

If a user reverses a fixed asset, the corresponding purchase becomes available to be converted to a fixed asset again on the [Convert Purchases to Assets](FA_50_45_00.md) \(FA504500\) form.

## *Reconciliation+* {#section_arb_ljv_vxb .section}

The system generates a *Reconciliation+* transaction automatically when a user converts a fixed asset from a purchase, increases the net book value of a fixed asset by making an addition, or enters a fixed asset in initialization mode.

Through this transaction, the cost of the fixed asset is reconciled with the appropriate purchasing transaction or transactions. The system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|FA Accrual account|Amount|0.00|
|Document line account|0.00|Amount|

The *Reconciliation+* transaction debits the Fixed Assets Accrual account and credits the account that has been debited by the purchase of the corresponding item.

## *Reconciliation–* {#section_drb_ljv_vxb .section}

The system generates a *Reconciliation–* transaction automatically when a user decreases the net book value of an asset by making a deduction. The system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Document line account|Amount|0.00|
|FA Accrual account|0.00|Amount|

The *Reconciliation–* transaction credits the Fixed Assets Accrual account and debits the account that has been credited by the GL entry that corresponds to the asset's cost deduction.

## *Calculated+* {#section_frb_ljv_vxb .section}

This system-generated transaction occurs automatically when a user calculates depreciation for an asset or makes an addition to a fully depreciated asset. This transaction exists only temporarily: When the transaction is released, the *Calculated+* transaction type is changed to the *Depreciation+* type.

The system generates a *Calculated+* transaction in the following cases:

-   On the [Calculate Depreciation](FA_50_20_00.md) \(FA502000\) form, a user runs the depreciation process \(that is, the user selects *Depreciate* in the **Action** box and clicks **Process** or **Process All**\) for a fixed asset.
-   On the [Convert Purchases to Assets](FA_50_45_00.md) \(FA504500\) or [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, a user makes an addition to an asset that has been fully depreciated. Before the transaction is released, the system creates a *Calculated+* transaction so that the net value of the asset will not change after the transaction is released.

## *Calculated–* {#section_hrb_ljv_vxb .section}

This system-generated transaction occurs automatically when the user disposes of an asset or makes a deduction from a fully depreciated asset. This transaction exists only temporarily: When the transaction is released, the *Calculated–* transaction type is changed to the *Depreciation–* type.

The system generates a *Calculated–* transaction in the following cases:

-   A user disposes of an asset that must be depreciated in the disposal period. That is, the **Depreciate in Disposal Period** check box is selected on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form, and the depreciation amount is negative.
-   A user makes a deduction from an asset that has been fully depreciated. Before the transaction is released, the system creates a *Calculated–* transaction so that the net value of the asset will not change after the transaction is released.

## *Depreciation+* {#section_jrb_ljv_vxb .section}

This transaction type is used to record the depreciation incurred during the financial period. The system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Depreciation Expense account|Amount|0.00|
|Accumulated Depreciation account|0.00|Amount|

The system changes a transaction of the *Calculated+* type to the *Depreciation+* type when you release a *Calculated+* transaction that you have previously prepared for the fixed asset by running the depreciation process \(that is, by selecting *Depreciate* in the **Action** box and clicking **Process** or **Process All**\) for this fixed asset on the [Calculate Depreciation](FA_50_20_00.md) \(FA502000\) form.

A user can also create a *Depreciation+* transaction manually on the [Fixed Asset Transactions](FA_30_10_00.md)\(FA301000\) form to adjust the depreciation for a fixed asset in a particular book.

**Important:** A manual *Depreciation+* transaction can be created only for a period in which depreciation has already been calculated. If an asset has not been depreciated yet, the system does not allow you to specify any period for the transaction.

You depreciate an asset on the [Calculate Depreciation](FA_50_20_00.md) \(FA502000\) form by selecting *Depreciate* in the **Action** box and processing the needed asset. For details, see [Asset Depreciation: To Calculate Depreciation](FixedAssets_Depreciation_To_Calculate_Depreciation.md).

You can then create an adjusting *Depreciation+* transaction on the [Fixed Asset Transactions](FA_30_10_00.md) form.

## *Depreciation–* {#section_nrb_ljv_vxb .section}

This transaction type indicates that the accumulated depreciation amount was decreased on the Accumulated Depreciation account—for example, as a result of the reversal of the asset. The system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Accumulated Depreciation account|Amount|0.00|
|Depreciation Expense account|0.00|Amount|

## *Depreciation Adjusting+* {#section_prb_ljv_vxb .section}

Transactions of this type are generated when the system updates the balance of the Accumulated Depreciation account, for example when the system adjusts the accumulated depreciation amount of an asset in some operations, such as split or reverse disposal of the asset. For example, the system generates this transaction when a user splits a fixed asset with depreciation to transfer a part of the accumulated depreciation to a newly created fixed asset.

The system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Accumulated Depreciation account|Amount|0.00|
|Accumulated Depreciation account|0.00|Amount|

When a user reverses the disposal of an asset, the system generates the *Depreciation Adjusting+* transaction as follows:

|Account|Debit|Credit|
|-------|-----|------|
|Gain account or Loss account|Amount|0.00|
|Accumulated Depreciation account|0.00|Amount|

## *Depreciation Adjusting–* {#section_trb_ljv_vxb .section}

Transactions of this type are generated when the system adjusts the accumulated depreciation amount of an asset in some operations, such as the split or disposal of the asset. For example, the system generates this transaction when you split a fixed asset with depreciation to decrease the accumulated depreciation for this asset by the amount that is transferred to a newly created fixed asset.

|Account|Debit|Credit|
|-------|-----|------|
|Accumulated Depreciation account|Amount|0.00|
|Accumulated Depreciation account|0.00|Amount|

When a user disposes of an asset, the system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Accumulated Depreciation account|Amount|0.00|
|Gain account or Loss account|0.00|Amount|

## *Purchasing Disposal* and *Sale/Dispose+* {#section_wrb_ljv_vxb .section}

Through these transactions, the system records the proceeds from the sale or disposal of the asset.

The system generates a *Purchasing Disposal* transaction to record the proceeds from the sale or disposal of the asset. The *Purchasing Disposal* transaction transfers the asset cost from the Fixed Assets account to the expense account \(Gain account if the disposal proceeds amount is a gain, or Loss account if the disposal proceeds amount is a loss\) to record the cost disposal.

The system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Gain account or Loss account|Amount|0.00|
|Fixed Assets account|0.00|Amount|

The system generates a transaction of the *Sale/Dispose+* type to record the proceeds amount from the sale or disposal of the asset. The system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Proceeds account|Amount|0.00|
|Gain account or Loss account|0.00|Amount|

## *Purchase Reversal* and *Sale/Dispose–* {#section_bsb_ljv_vxb .section}

The system generates a *Purchase Reversal* transaction to record the reverse of the asset disposal. The *Purchasing Reversal* transaction transfers the asset cost from the expense account to which it was previously recorded by the *Purchasing Disposal* transaction to the Fixed Assets account to record the reversal of the cost disposal. The system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Fixed Assets account|Amount|0.00|
|Gain account or Loss account|0.00|Amount|

The system generates a *Sale/Dispose–* transaction to record the reverse of the asset disposal. The system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Gain account or Loss account|Amount|0.00|
|Proceeds account|0.00|Amount|

## *Transfer Purchasing* {#section_esb_ljv_vxb .section}

This transaction type, which is generated for a newly acquired asset that has not yet been depreciated, indicates that the location, custodian, or department of the asset has been changed. The system generates a transaction of this type when a user transfers the fixed asset to another branch, account, or subaccount, if subaccounts are used in the system. If a user changes the subaccount of a fixed asset, the system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Fixed Assets account, destination subaccount|Amount|0.00|
|Fixed Assets or FA Accrual account, original subaccount|0.00|Amount|

## *Transfer Depreciation* {#section_gsb_ljv_vxb .section}

This transaction type, which is generated for an asset that has been depreciated, indicates that the location, custodian, or department of the asset has been changed. The system generates a transaction of this type when a user transfers the accumulated depreciation of a fixed asset to another branch, account, or subaccount, if subaccounts are used in the system. If a user changes the subaccount of a fixed asset, the system generates the following fixed asset transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Accumulated Depreciation account, destination subaccount|Amount|0.00|
|Accumulated Depreciation account, original subaccount|0.00|Amount|

