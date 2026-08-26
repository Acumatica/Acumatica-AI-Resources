# Assets with Depreciation: General Information {#_85bed6c4-981d-46c8-a717-86694930f83b .concept}

Assets with accumulated depreciation can be managed in the same way as assets that have not been depreciated yet. You can split them, transfer them, or dispose of them. When you split assets, the accumulated depreciation is also split in the specified proportions. When you transfer assets between branches, the accumulated depreciation is also transferred between the branches. When you dispose of a fixed asset with depreciation, the accumulated depreciation amount is recorded to the Gain/Loss of Fixed Asset Disposal account.

## Learning Objectives { .section}

In this chapter, you will learn how to perform the following operations over assets with accumulated depreciation:

-   Split a part of a fixed asset
-   Transfer a fixed asset
-   Dispose of a fixed asset

## Applicable Scenarios { .section}

You perform additional operations with a fixed asset with depreciation in the following cases:

-   You split the asset if you need to sell or transfer a portion of the asset and still use the rest of the asset
-   You transfer the asset if you need to move it from one department to another one or from one branch to another one
-   You dispose of the asset if the asset is being taken out of service, was damaged, has had a reduction in productivity, or was sold

## Splitting of a Part of an Asset with Depreciation { .section}

You use the [Split Assets](FA_50_60_00.md) \(FA506000\) form to split an asset into parts—that is, to divide a single fixed asset consisting of a group of items into two or more separate assets. You can also use splitting for partial asset disposals and transfers.

If the **Automatically Release Depreciation Transactions** check box is selected on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form, when you are splitting assets, you can select the **Depreciate Before Split** check box on the [Split Assets](FA_50_60_00.md) form. Thus, the system will automatically generate depreciation transactions for the undepreciated periods before splitting the asset.

For the asset that was created when the system split the original asset, the system generates the following transactions:

-   A *Purchasing+* transaction that debits the Fixed Assets account and credits the FA Accrual account in the amount of the asset's cost to record the acquisition of the asset.
-   A *Reconciliation+* transaction that updates the FA Accrual account to reconcile the cost of the split.
-   A *Depreciation Adjusting+* transaction that records the amount of depreciation that was added to the new asset. The transaction debits the Accumulated Depreciation account specified for the new asset and credits the Accumulated Depreciation account specified for the original asset.

For the original asset, the system generates the appropriate *Purchasing–*, *Reconciliation–*, and *Depreciation Adjusting–* transactions to record the split of the asset's cost and the accumulated depreciation.

## Transfer of an Asset with Depreciation { .section}

When it is acquired, an asset belongs to a specific department under a particular company branch. The history of asset locations is displayed on the **Locations** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form.

On the [Transfer Assets](FA_50_70_00.md) \(FA507000\) form, you can transfer an asset from one department to another, from one branch to another, or from both the department and branch to a different department and branch. If the asset has accumulated depreciation, this amount will be transferred as well.

You can also specify the reason for the transfer in the **Reason** box on the [Transfer Assets](FA_50_70_00.md) form. After the transfer has been completed, the reason will be shown in the **Reason** box on the **General** tab of the [Fixed Assets](FA_30_30_00.md) form for the transferred asset.

When the asset is transferred, the system creates the following transactions:

-   A *Transfer Purchasing* transaction that records the transfer of the asset from one department to another or from one branch to another. This transaction debits the Fixed Assets account in the amount of the asset's current cost, and credits the Fixed Assets account in the same amount.

    **Attention:** If subaccounts are used in the system and a subaccount mask is defined for each department, this transaction debits the Fixed Assets account with the subaccount of the destination location in the amount of the asset's current cost, and credits the Fixed Assets account with the subaccount of the original location in the same amount.

-   A *Transfer Depreciation* transaction that transfers the accumulated depreciation between the branches. This transaction credits the Accumulated Depreciation account in the amount of the depreciation accumulated for the asset, and debits the Accumulated Depreciation account in the same amount.

    **Attention:** If subaccounts are used in the system and a subaccount mask is defined for each department, this transaction credits the Accumulated Depreciation account with the subaccount of the destination location in the amount of the depreciation accumulated for the asset, and debits the Accumulated Depreciation account with the subaccount of the original location in the same amount.

    After the transfer transactions are released, the Fixed Asset subaccount and Accumulated Depreciation subaccount are changed on the **GL Accounts** tab on the [Fixed Assets](FA_30_30_00.md) form.


## Disposal of an Asset with Depreciation { .section}

On the [Dispose Assets](FA_50_50_00.md) \(FA505000\) form, you can dispose of an asset at any time for any reason. After the asset is disposed of, it has the net value of *0* and is assigned the *Disposed* status. If the fixed asset is assigned to multiple books, when you dispose of this asset, it is assigned the *Disposed* status in all these books.

The [Dispose Assets](FA_50_50_00.md) form is intended for mass disposal of fixed assets. The **Proceeds Allocation** setting determines the way the disposal amount is entered. If *Automatic* is selected in this box, the **Total Proceeds Amount** value will be distributed among the disposed assets automatically in proportion to their current cost. If you select *Manual*, you will need to manually specify the disposal proceeds amount for each of the assets in the **Proceeds Amount** column in the table.

When an asset is disposed of, the system generates the following transactions:

-   *Depreciation+* transactions that debit the Depreciation Expense account for the depreciation amount and credit the Accumulated Depreciation account for the same amount. The system generates a *Depreciation+* transaction for each period in which the asset is depreciated until the disposal date.
-   A *Purchasing Disposal* transaction that credits the Fixed Asset account and debits the Gain/Loss of Fixed Asset Disposal account in the asset's cost to record the cost disposal.
-   A *Depreciation Adjusting–* transaction that debits the Accumulated Depreciation account in the total amount of the accumulated depreciation for all the depreciation periods, and credits the Gain/Loss of Fixed Asset Disposal account in the same amount.
-   A *Sale/Dispose+* transaction that credits the Gain/Loss of Fixed Asset Disposal account and debits the Proceeds account in the proceeds amount.

**Parent topic:**[Managing Fixed Assets with Depreciation](../UserGuide/FixedAssets_Managing_Depreciable_FA_Mapref.md)

