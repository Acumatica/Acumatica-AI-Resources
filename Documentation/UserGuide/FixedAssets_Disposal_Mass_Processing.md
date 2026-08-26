# Asset Disposal: Mass Processing {#_3a8ce02d-ea04-420c-a401-69d455437d3d .concept}

This topic describes how to dispose of multiple fixed assets simultaneously.

## Disposing of Multiple Assets {#section_odf_ljv_vxb .section}

You use the [Dispose Assets](FA_50_50_00.md) \(FA505000\) form to dispose of any number of assets. You can dispose of multiple assets that are associated with the same branch if the disposal parameters are the same for all assets; the only setting you may specify for each asset individually is the proceeds amount.

To dispose of multiple assets, you perform the following general steps on the form:

1.  In the Selection area, you specify the selection criteria of the assets to be listed in the table and available for disposal.
2.  On the right side of the Selection area, you specify the disposal parameters.

    If you plan to enter the proceeds amount for each asset individually, in the **Disposal Amount Entry** box, you select *Manual*.

3.  If you want to depreciate the assets up to the disposal period \(which is the current financial period\), in the **Before Disposal** box, you select *Depreciate*.

    **Tip:** The system can depreciate the assets automatically during disposal only if the system is configured to release fixed asset transactions automatically—that is, if the **Automatically Release Depreciation Transactions** check box is selected on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form. Otherwise, you need to manually depreciate the assets before disposal.

4.  If you want to suspend the assets before disposal, in the **Before Disposal** box, you select *Suspend*.
5.  To dispose of only some of the listed assets, you select them in the table and click **Prepare** on the form toolbar.
6.  To dispose of all listed assets, you proceed as follows:
    1.  If you have opted to enter the proceeds amount for each asset manually, you enter the proceeds amount in the **Proceeds Amount** box for every listed asset.
    2.  You click **Prepare All** on the form toolbar.
7.  You release the resulting transactions as dictated by your company's workflow.

**Parent topic:**[Disposing of Fixed Assets](../UserGuide/FixedAssets_Disposal_Mapref.md)

