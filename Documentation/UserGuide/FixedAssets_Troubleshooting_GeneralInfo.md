# Fixed Asset Troubleshooting: General Information {#_9f2261a8-92b9-4498-9a54-bae0733008ca .concept}

This chapter described how you can correct errors in existing fixed asset records.

## Learning Objectives { .section}

In this chapter, you will learn how to troubleshoot issues with fixed assets.

## Applicable Scenarios { .section}

You perform troubleshooting if issues occur during the lifetime of fixed assets or as a result of maintenance operations.

## Change of the Useful Life of a Fixed Asset { .section}

Adding a fixed asset involves determining the estimated useful life and salvage amount of the asset. By their nature, estimates are subjective and may require revisions during the life of the asset. For example, the rapid technological advances may result in the actual useful life and salvage amount differing from your company's current estimates.

In Acumatica ERP, you can account for changes in the following estimates:

-   The useful life of a fixed asset. For details, see [Fixed Asset Troubleshooting: To Change the Useful Life of an Asset](FixedAssets_Troubleshooting_To_Change_Useful_Life.md).
-   The salvage amount of a fixed asset. For details, see [Fixed Asset Troubleshooting: To Change the Salvage Value of an Asset](FA__how_Change_Salvage_Value.md).

**Attention:** You cannot change the useful life of the fixed asset if a table depreciation method is selected for the asset.

If the estimation of the useful life of an asset has changed, you change the estimated useful life in the asset record accordingly. You use the **General** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form to change the useful life of the selected asset.

The resulting transactions affect the net book value and the current cost of the selected asset displayed on the **Balance** and **Reconciliation** tabs.

The changes in estimates effect the current and future periods. The system uses the revised value for the depreciation throughout entire asset life in periods after the change. You can configure the system to accelerate the depreciation for the assets that use the *Straight-Line* method. In this case, during the asset depreciation the system uses the revised amount as the basis for the depreciation only in the periods after revaluation. For more information, see [Depreciation Configuration](FA__cnf_Depreciation_Methods.md).

## Fixed Asset Reversal { .section}

In Acumatica ERP, if a fixed asset has released transactions associated with it, you cannot delete this asset from the system. In this case, you can reverse the transactions and then annul the asset.

**Attention:** If a fixed asset was created in migration mode, it can be deleted if this asset has no transactions posted to the general ledger. A migrated asset that produced at least one GL transaction cannot be deleted. For details, see [Asset Migration: General Information](FixedAssets_Data_Migration_GeneralInfo.md).

For example, suppose that you have created a new asset by converting a purchase to a fixed asset. Then you have realized that the wrong receipt date is specified in the fixed asset record. This date cannot be edited because the corresponding transactions \(*Purchasing +* and *Reconciliation +* \) have already been released \(for details, see [Types of Fixed Asset Transactions](FA__con_Transaction_Types.md)\). In this case, you can annul this asset and again convert a purchase to a fixed asset with the correct settings.

You annul the asset by using the reverse procedure. When you invoke this procedure, all transactions associated with the fixed asset are reversed in the corresponding book in which the original transactions are posted, and the asset gets the *Reversed* status. For transactions recorded in the non-posting book, the reversal transactions are posted to the same financial period as the period of the original transactions. For transactions recorded in the posting book—that is, in the book that updates the general ledger—the reversal transactions are posted to the period of the original transactions only if this period is open; if the period of the original transactions is closed, the reversal transactions are posted to the nearest open financial period.

To reverse a fixed asset, on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you select the required fixed asset in the **Asset ID** box, and on the More menu \(under **Corrections**\), click **Reverse**.

Reversal of an asset yields the following results:

-   Reversal transactions are generated for all original fixed asset transactions in the corresponding fixed asset book.
-   The annulled asset is displayed as *Reversed* on reports, with the depreciable basis and the amount of accumulated depreciation equal to zero.

The status of the asset at the moment of the reversal must be *Active*. The reversed asset cannot be deleted or edited.

## Reconversion of Purchases to Assets { .section}

Suppose that you have converted a purchase to a fixed asset; the acquisition transaction is released for the asset. Then you have realized that you have converted the full purchase amount instead of the partial amount you intended to convert. You cannot correct the asset's acquisition cost, because the acquisition transaction has been released. To correct the asset, perform the following steps:

1.  On the form toolbar of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you click **Reverse** on the More menu to reverse the wrongly created fixed asset. For details, see [Fixed Asset Troubleshooting: To Reverse an Asset](FA__how_To_Reverse_Fixed_Asset.md).
2.  Release the generated reversal transaction. After you do, the corresponding purchase or purchases will reappear on the [Convert Purchases to Assets](FA_50_45_00.md) \(FA504500\) form.
3.  On the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form, clear the **Automatically Release Acquisition Transactions** check box to be able to review the newly created fixed asset before acquisition.
4.  On the [Convert Purchases to Assets](FA_50_45_00.md) form, again convert the needed purchase with the correct settings.
5.  Review the created fixed asset to make sure that all settings are correct now, and release the generated acquisition transaction.

## Assets with a Placed-in-Service Date Earlier Than the First Calendar Year { .section}

If a fixed asset was acquired before your company started using Acumatica ERP and you need the depreciation to be posted before the system start date, you can shift the first book calendar one year earlier.

In Acumatica ERP, you can shift the first year by using the [Book Calendar Setup](FA_20_60_00.md) \(FA206000\) form, and then generate periods for the book calendar on the [Generate Book Calendars](FA_50_10_00.md) \(FA501000\) form.

**Important:** Shifting the first year to an earlier date can affect statistics and data on reports.

## Revaluation of an Asset { .section}

In Acumatica ERP, you can increase or decrease the net book value of the asset by reconciling the asset record with the financial documents that declare the change in asset value. In that case, the process generates the *Purchasing+* and the *Reconciliation+* transactions.

For details, see [Fixed Asset Troubleshooting: To Change Net Book Value of an Asset](FA__how_Change_Net_Book_Value.md).

After you revalue the asset, the system uses the revalued amount as the basis for the depreciation throughout the entire asset life in periods after revaluation. You can configure the system to accelerate the depreciation for the assets that use the *Straight-Line* method. In this case, during the asset depreciation the system uses the revalued amount as the basis for the depreciation only in the periods after revaluation. For more information, see [Depreciation Configuration](FA__cnf_Depreciation_Methods.md).

## Change of the Depreciable Basis for an Asset { .section}

You can increase and decrease the depreciable basis of a fixed asset. Do do this, you perform the following steps:

1.  On the [Fixed Asset Transactions](FA_30_10_00.md) \(FA301000\) form, you create and release a *Purchasing+* transaction with the **Transaction Amount** a negative value to decrease the depreciable basis or a positive value to increase the depreciable basis.
2.  On the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you review the **Balance** tab to make sure that the amounts in the **Basis** and **Net Value** columns for the needed book have been updated.

    For a posting book, a GL batch will be generated and its number shown in the **Batch Nbr.** column on the **Transactions** tab of the [Fixed Assets](FA_30_30_00.md) form. For a non-posting book, no GL batch will be generated and shown in the **Batch Nbr.** column


**Parent topic:**[Troubleshooting Fixed Assets](../UserGuide/FixedAssets_Troubleshooting_Mapref.md)

