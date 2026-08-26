# Asset Migration: General Information {#_65a866ca-40ec-43f7-8684-fed5d4076488 .concept}

You can migrate assets with accumulated depreciation into Acumatica ERP without updating the general ledger. To migrate these assets, you can create a record for each asset manually or create an import scenario to import the existing records from another application.

## Learning Objectives {#section_cwg_ljv_vxb .section}

In this chapter, you will learn how to do the following:

-   Manually create a partially depreciated asset
-   Migrate multiple fixed assets from an Excel file to the system
-   Apply the Section 179 deduction

## Applicable Scenarios {#section_ewg_ljv_vxb .section}

You create partially depreciated assets and migrate assets if you want to import assets from a legacy system so that you can maintain them in Acumatica ERP.

## Manual Entry of Fixed Assets {#section_gwg_ljv_vxb .section}

Migration involves adding a fixed asset with accumulated depreciation to Acumatica ERP. If your company has a small number of fixed assets, you might decide to migrate these assets by manually entering them. Also, if you plan to create an import scenario, you typically begin the process by manually entering an asset so that you can learn the sequence of actions involved in entry.

To add an asset with accumulated depreciation manually, you first need to switch the fixed asset subledger to initialization mode. To manually import any number of fixed assets, you perform the following general steps:

1.  On the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form, you turn on initialization mode by clearing the **Update GL** box. Optionally, you can select the **Show Accurate Depreciation** check box, as described below.
2.  On the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you add each new asset record and specify the asset’s settings, such as the date when the asset was acquired, the original acquisition cost, the start of the depreciation, and the asset class.

    Also, you must specify the accumulated depreciation amount and the last depreciation period. When you create fixed assets in initialization mode, acquisition and reconciliation transactions are marked as released. However, they do not update the general ledger and thus will not affect account balances.

    **Important:** The original acquisition cost is used as the basis for depreciation of the asset. After you save the asset for the first time, you will not be able to change the depreciation basis, even if you change the original acquisition cost.

    You can select the **Show Accurate Depreciation** check box on the [Fixed Assets Preferences](FA_10_10_00.md) form. When this check box is selected, on the **Depreciation** tab of the [Fixed Assets](FA_30_30_00.md) form, the system shows the depreciation amounts recorded for the previous financial periods along with the depreciation adjustment calculated for the current period.

    If the calculated depreciation for the previous periods is not equal to the entered accumulated depreciation, the system calculates the depreciation adjustment and posts it the next time you run depreciation for the asset. If the **Show Accurate Depreciation** check box is selected on the [Fixed Assets Preferences](FA_10_10_00.md) form, you can review the depreciation adjustment on the **Depreciation** tab of the [Fixed Assets](FA_30_30_00.md) form before you depreciate the asset in the current period.

3.  On the [Fixed Assets](FA_30_30_00.md) form, you calculate the depreciation and check the results. If the resulting depreciation amounts match the depreciation in the legacy application, you can turn off initialization mode on the [Fixed Assets Preferences](FA_10_10_00.md) form.

    For details, see [Asset Migration: To Create a Partially Depreciated Asset](FixedAssets_Data_Migration_To_Create_Partially_Depr_Asset.md).


## Fixed Asset Migration by Using an Import Scenario {#section_nwg_ljv_vxb .section}

To speed data migration, you can use an import scenario. An import scenario is a set of instructions for the system that specifies the actions to be executed for each record of the imported data as if the data is being entered manually on the specified form.

To import fixed assets by using an import scenario, you perform the following instructions:

1.  You convert the data in the external format to data in the format of Acumatica ERP. For this purpose, on the [Data Providers](SM_20_60_15.md) \(SM206015\) form, you create a data provider. The data provider defines the data source type \(Excel\), the name of the spreadsheet that should be used for the data import, the list of the columns on the spreadsheet, and the data type of each column.
2.  You need to prepare the import scenario that uses the data provider. An import scenario defines the mapping of the source columns to the destination fields of the entry in the system. On the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, you create a new scenario or update a predefined scenario by specifying this data provider for it.
3.  On the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form, you prepare and import the data.

    **Tip:** In a production environment, after you have imported the data, you need to reconcile the fixed assets with the general ledger to make sure that all account balances are correct.


## Application of the Section 179 Deduction {#section_rwg_ljv_vxb .section}

**Attention:** This section covers concepts that are relevant for only businesses with operations in the United States.

One of the features of the U.S. tax system is Section 179 of the United States Internal Revenue Code. If this section is applied for an asset, you may deduct the full cost of the asset in the first year of its useful life instead of depreciating the asset over its useful life, or deduct a part of the cost and depreciate the remaining amount. For details on how to apply the Section 179 deduction to a fixed asset, see [Asset Migration: To Apply the Section 179 Deduction \(Optional\)](FixedAssets_Data_Migration_To_Apply_Section_179_Deduction.md).

To apply the Section 179 deduction to a fixed asset, you perform the following general steps:

1.  On the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form, for the needed asset class, you select the **Sect. 179** check box for a specific book.

    If the **Sect. 179** check box is selected for a specific book in a particular class, you can specify the deduction amount to be applied in this book for an asset of this class on the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form.

2.  You create an asset on the [Fixed Assets](FA_30_30_00.md) form, specifying the asset class that has the **Sect. 179** check box selected.
3.  On the [Calculate Depreciation](FA_50_20_00.md) \(FA502000\) form, you depreciate the asset and make sure that the deduction has been applied on the **Depreciation** tab.

**Tip:** Another possible way to enter a Section 179 deduction is to disable the auto-release of acquisition transactions on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form by clearing the **Automatically Release Acquisition Transactions** check box; you then convert the related purchase to an asset on the [Convert Purchases to Assets](FA_50_45_00.md) \(FA504500\) form. After converting the purchase, you need to open the created asset on the [Fixed Assets](FA_30_30_00.md) form. On the **Balance** tab, you can enter the **Tax 179 Amount** for the appropriate book.

**Parent topic:**[Migrating Fixed Assets](../UserGuide/FixedAssets_Data_Migration_Mapref.md)

