# Non-Default Asset Settings: General Information

When you are creating a fixed asset on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you specify the needed fixed asset class, and the system fills in the default settings for the created fixed asset with the settings of the class. You can change most of these default settings before you release the acquisition transaction of the fixed asset.

## Learning Objectives

In this chapter, you will learn how to create and reconcile a fixed asset with settings that differ from those copied by the system from the fixed asset class.

## Applicable Scenarios

You change the default settings when creating a fixed asset if the asset should have some settings that are different from those provided by its asset class.

## Class Settings That Can Be Overridden

When creating a fixed asset on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you can override the following settings that have been copied from the selected fixed asset class.

<table id="_adb9ac19-22ca-452c-93ac-4dc7a2c32a98"><thead><tr><th>

Tab

</th><th>

UI Element That Can be Overridden

</th><th>

Comments

</th></tr></thead><tbody><tr><td rowspan="4">

**General**

</td><td>

**Asset Type**

</td><td>

You can create the required fixed asset type or edit an existing one by using the [Fixed Asset Types](FA_20_10_10.md) \(FA201010\) form.

</td></tr><tr><td>

**Useful Life, Years**

</td><td>

If you change the useful life for an existing asset that was already depreciated for some periods, the system recalculates the depreciation starting from the placed-in-service date and generates a *Depreciation Adjustment* transaction.

 **Attention:** The useful life cannot be changed for the fixed assets that are depreciated by using any of the table depreciation methods.

</td></tr><tr><td>

**Depreciable**

</td><td>

 

</td></tr><tr><td>

**Placed-in-Service Date**

</td><td>

For a depreciable fixed asset, this box will be unavailable for editing once the first depreciation transaction \(of the *Depreciation+* type\) has been created.

</td></tr><tr><td>

**GL Accounts**

</td><td>

All boxes available on this tab

</td><td>

 

</td></tr><tr><td rowspan="3">

**Balance**

</td><td>

**Depreciation Method**

</td><td>

On this tab, you can also add other depreciation books that are assigned to the fixed asset class.

</td></tr><tr><td>

**Averaging Convention**

</td><td>

This column is not available for a non-depreciable fixed asset \(one for which the **Depreciate** box is cleared on the **General** tab\).

</td></tr><tr><td>

**Useful Life, Years**

</td><td>

This column is unavailable for editing for listed books that have the *Australian Prime Cost*, *New Zealand Straight-Line*, and *New Zealand Straight-Line Evenly by Periods* methods.

</td></tr></tbody>
</table>

**Parent topic:**[Changing an Asset's Default Settings](../UserGuide/FixedAssets_Changing_Default_Settings_Mapref.md)

