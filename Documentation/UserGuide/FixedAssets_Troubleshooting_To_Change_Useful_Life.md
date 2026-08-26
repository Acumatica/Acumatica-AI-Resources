# Fixed Asset Troubleshooting: To Change the Useful Life of an Asset {#_cabff1be-6286-47b0-8616-54d748915a92 .task}

The following activity will walk you through the process of changing the useful life of an asset.

## Story {#section_a2h_ljv_vxb .section}

Suppose that an accountant at SweetLife Fruits &amp; Jams created the *Office software* fixed asset with an acquisition cost of $750, a useful life of three years, and the *SL* \(Straight-Line\) depreciation method, and depreciated the asset for two periods. Then the accountant decided to increase the useful life of the asset to five years. Acting as the SweetLife accountant, you need to change the useful life of the asset and depreciate the asset from 07-2026 to 08-2026.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Fixed Asset Management* feature has been enabled.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the needed GL accounts have been created.

## Process Overview {#section_d2h_ljv_vxb .section}

In this activity, you will change the useful life of an asset on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form. On the [Calculate Depreciation](FA_50_20_00.md) \(FA502000\) form, you will depreciate the asset for two periods and review the depreciation amounts on the **Depreciation** tab of the [Fixed Assets](FA_30_30_00.md) form.

## System Preparation {#section_f2h_ljv_vxb .section}

Before you begin changing the useful life of the asset, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button, and select *7/1/2026* on the calendar.
3.  In the company to which you are signed in, be sure that you have implemented the fixed asset functionality by performing the following prerequisite activities: [Fixed Assets: To Set Up the System for Fixed Asset Management](../ImplementationGuide/config_FixedAssets_Implem_Activity_System.md), [Fixed Assets: To Configure the Fixed Asset Functionality](../ImplementationGuide/config_FixedAssets_Implem_Activity_FixedAssets_Subledger.md), and [Fixed Assets: To Create Fixed Asset Classes](../ImplementationGuide/config_FixedAssets_Implem_Activity_FixedAsset_Classes.md).
4.  Make sure that you have completed the [Fixed Asset Creation: To Create an Asset with Multiple Units](FixedAssets_Adding_Fixed_Asset_To_Add_FA_with_Multiple_Units.md) prerequisite activity to create the *Office software* fixed asset.
5.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Changing the Useful Life of the Asset {#section_h2h_ljv_vxb .section}

To change the useful life of the fixed asset, do the following:

1.  On the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, open the *Office software* fixed asset.
2.  On the **General** tab, enter `5` in the **Useful Life, Years** box.
3.  On the form toolbar, click **Save** to save the changes.

## Step 2: Depreciating the Asset {#section_j2h_ljv_vxb .section}

To depreciate the fixed asset, do the following:

1.  Open the [Calculate Depreciation](FA_50_20_00.md) \(FA502000\) form.
2.  In the Selection area, specify the following settings:
    -   **Company/Branch**: *HEADOFFICE*
    -   **Book**: *FIN*
    -   **To Period**: *08-2026*
    -   **Action**: *Depreciate*
3.  In the table, select the unlabeled check box for the *Office software* asset and click **Process** on the form toolbar.
4.  On the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, open the *Office software* fixed asset.
5.  Review the **Depreciation** tab.

    The system has calculated depreciation for 07-2026 and 08-2026, and recalculated depreciation for the previous periods. Because the depreciation expenses for 07-2026 exceed the newly calculated amount, the system posts a negative depreciation amount in 07-2026.


**Parent topic:**[Troubleshooting Fixed Assets](../UserGuide/FixedAssets_Troubleshooting_Mapref.md)

