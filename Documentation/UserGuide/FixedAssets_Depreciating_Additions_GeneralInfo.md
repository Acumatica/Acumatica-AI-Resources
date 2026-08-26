# Depreciation of Additions: General Information {#_f16cf5d7-d346-48c1-a6e1-dad8cfaceda6 .concept}

When you make an addition to a fixed asset, you can depreciate it along with this asset. You can fully depreciate the asset in one particular book or in multiple books. After you fully depreciate an asset though its lifetime, the net value of the asset becomes *0.00*. If additions were made to the asset during its lifetime, you may need to change the asset's depreciation method and make a manual depreciation adjustment so that at the end of the lifetime, the asset and its additions are fully depreciated.

## Learning Objectives {#section_hwf_ljv_vxb .section}

In this chapter, you will learn how to do the following:

-   Perform full depreciation of an addition to a fixed asset
-   Fully depreciate the fixed asset
-   Make a depreciation adjustment

## Applicable Scenarios {#section_jwf_ljv_vxb .section}

You depreciate additions to fixed assets if you need to capitalize these expenses. You make manual adjustment transactions to change fixed asset amounts posted in the system, such as the following:

-   The amount of the depreciation of the selected fixed asset in a particular period \(for example, when you need to allocate the depreciation expenses between the financial periods\)
-   The depreciable basis for the asset \(when the cost of an asset has been changed, usually decreased, since you acquired it\)

## Depreciation of Additions to Fixed Assets {#section_lwf_ljv_vxb .section}

You fully depreciate additions to fixed assets by performing the following actions:

1.  On the [Calculate Depreciation](FA_50_20_00.md) \(FA502000\) form, select the needed period in the **To Period** box and select *Depreciate* in the **Action** box. You can calculate or depreciate the asset in one particular book or in multiple books.

    **Tip:** If you have two or more depreciation books, to get up-to-date depreciation in all these books, in the **To Period** box, you should select the period that corresponds to the date through which you need to depreciate the assets. If you have two or more depreciation books with different book calendars, we recommend that you depreciate the fixed assets separately in each book.

2.  In the Selection area, specify any other needed selection criteria to narrow the range of listed assets.
3.  In the table, select the fixed assets whose additions you want to depreciate.
4.  Click **Process** on the form toolbar to depreciate the selected assets. For each processed asset, the system generates depreciation transactions for the selected books for all periods, from the asset being placed into service through the end of its useful life.
5.  Run the report on the [FA Balance](FA_63_00_00.md) \(FA630000\) form to make sure that the net value of the asset is *0.00* in the selected books.

    Depending on the depreciation method of the book, some amount of the addition may not be depreciated at the end of the asset's lifetime. In this case, you can depreciate this amount manually by making an adjustment transaction.


An asset gets the *Fully Depreciated* status in a book after it has been depreciated in the **Depr. To Period**, which is the last period of its useful life. Once it gets the *Fully Depreciated* status in all books, the asset itself gets the *Fully Depreciated* status which is shown on the **General** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form.

If an asset has multiple additions in the middle of its useful life and is using the *Straight-Line* depreciation method, the system calculates depreciation separately for each of the additions by using the specified depreciation method and the asset's useful life. To get the amount of monthly depreciation for the asset, the system adds up the depreciation amounts calculated for each of the additions.

If you want the asset to have a zero net value at the end of its useful life, you can do either of the following:

-   Switch from the *Straight-Line* depreciation method to the *Remaining Value* depreciation method that allocates the remaining net value evenly among the remaining periods. The *Remaining Value* depreciation method can be used to completely recover the cost of the addition during the rest of the useful life of the original asset to which the addition has been made.

    For more details, see [Predefined Depreciation Methods](FA__con_Depreciation_Methods.md).

-   Process the additions on the **Reconciliation** tab of the [Fixed Assets](FA_30_30_00.md) form only. By default, the system will use the asset's placed-in-service period as the addition period. It means that the depreciation base will be increased in this period. If the period is closed in the fixed asset subledger, the batch corresponding to the addition will be created in the earliest open period, but the depreciation base will be increased in the selected period anyway.

    **Attention:** You cannot use the [Convert Purchases to Assets](FA_50_45_00.md) \(FA504500\) form to process such additions, because the addition period is unavailable on this form and is the same as the period of the transaction.


## Adjustment Transactions {#section_pwf_ljv_vxb .section}

Generally, transactions related to fixed asset maintenance \(such as the acquisition or depreciation of assets\) are created in the system automatically right after you create or depreciate an asset. You can review the list of transactions related to a particular asset on the **Transactions** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form.

You create an adjusting transaction manually by using the [Fixed Asset Transactions](FA_30_10_00.md) \(FA301000\) form. The amount of the transaction that you create on this form will update a required amount \(depending on the transaction type that you have specified\).

When you create a new transaction, you need to select the asset, the book that will be affected, and the type of transaction being created; you should also specify the transaction amount.

You can manually create the following types of adjusting transactions:

-   *Purchasing+*: Through this transaction, the depreciable basis of the fixed asset specified in the transaction will be updated, so that since the period of this transaction, the depreciation will be calculated according to the recalculated depreciable basis.

    This transaction can be illustrated as follows \(if the default accounts are selected\).

    |Account|Debit|Credit|
    |-------|-----|------|
    |Fixed Assets Account|Amount|0.00|
    |FA Accrual Account|0.00|Amount|

    As a result of this transaction, the system updates the current cost of the fixed asset \(in the **Current Cost** box on the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) form\) and the depreciable basis \(in the **Basis** box on the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) form\) to calculate the depreciation expenses of the selected asset. The changes will affect the selected book only.

-   *Depreciation+*: Through this transaction, the depreciation amount calculated in a particular period for the fixed asset specified in this transaction will be updated. This transaction can be illustrated as follows.

    |Account|Debit|Credit|
    |-------|-----|------|
    |Depreciation Expense Account|Amount|0.00|
    |Accumulated Depreciation Account|0.00|Amount|


Immediately after you have released the *Depreciation+* transaction, the system updates the amount in the corresponding cell of the table \(in the **Depreciated** column on the **Depreciation** tab on the [Fixed Assets](FA_30_30_00.md) form\). This adjusting transaction will affect the selected book only.

**Parent topic:**[Depreciating Additions to Fixed Assets](../UserGuide/FixedAssets_Depreciating_Additions_Mapref.md)

