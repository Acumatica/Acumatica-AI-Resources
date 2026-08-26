# Fixed Asset Creation: To Create an Asset with Multiple Units {#_c4f53ce7-4721-4a7a-a043-5fe3de1abd09 .task}

The following activity will walk you through the process of creating and reconciling a fixed asset with multiple units.

## Story { .section}

Suppose that on May 5, 2026, SweetLife Fruits &amp; Jams purchased five office software licenses. This should be defined in the system as one fixed asset that contains multiple units. Acting as a SweetLife accountant, you need to manually create the asset, specify a quantity of five units for the asset, and reconcile the asset with this purchase.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Fixed Asset Management* feature has been enabled.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the needed GL accounts have been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *OFFICEUP* vendor has been created.
-   On the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form, the **Automatically Release Acquisition Transactions** check box has been selected.

## Process Overview { .section}

In this activity, on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will first create and release an AP bill for the purchase of the software licenses. On the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you will create the needed software asset with five units. On the **Reconciliation** tab of the same form, you will reconcile the fixed asset with the purchase transaction.

## System Preparation { .section}

Before you begin creating a fixed asset with multiple units, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button, and select *5/15/2026* on the calendar.
3.  In the company to which you are signed in, be sure that you have implemented the fixed asset functionality by performing the following prerequisite activities: [Fixed Assets: To Set Up the System for Fixed Asset Management](../ImplementationGuide/config_FixedAssets_Implem_Activity_System.md), [Fixed Assets: To Configure the Fixed Asset Functionality](../ImplementationGuide/config_FixedAssets_Implem_Activity_FixedAssets_Subledger.md), and [Fixed Assets: To Create Fixed Asset Classes](../ImplementationGuide/config_FixedAssets_Implem_Activity_FixedAsset_Classes.md).
4.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Creating an AP Bill { .section}

To create the AP bill that will produce the purchasing transaction, do the following:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Vendor**: *OFFICEUP*
    -   **Date**: *5/15/2026* \(inserted automatically\)
    -   **Post Period**: *05-2026* \(inserted automatically\)
    -   **Description**: `Office software`
3.  On the **Details** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Office software`
    -   **Quantity**: `5`
    -   **Unit Cost**: `150`
    -   **Account**: *15010 \(Accrued Purchases: Fixed Assets\)*
4.  On the form toolbar, click **Remove Hold**, and then click **Release** to release the AP bill.

## Step 2: Creating a Fixed Asset with Multiple Units { .section}

To create a fixed asset, do the following:

1.  On the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, add a new record.
2.  In the Summary area, specify `Office Software` in the **Description** box.
3.  On the **General** tab, specify the following settings:
    -   **Asset Class**: *SOFTWARE*
    -   **Asset Type**: *SOFTWARE* \(inserted automatically from the fixed asset class settings\)
    -   **Quantity**: `5`
    -   **Useful Life, Years**: *3.0000* \(inserted automatically from the fixed asset class settings\)
    -   **Receipt Date**: *5/15/2026*
    -   **Placed-in-Service Date**: *5/15/2026*
    -   **Orig. Acquisition Cost**: `750`
    -   **Branch**: *HEADOFFICE*
    -   **Department**: *ADMIN*
4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Remove Hold**, which causes the asset to be assigned the *Active* status.
6.  On the form toolbar, click **Save** to save the asset.

## Step 3: Reconciling the Fixed Asset { .section}

To reconcile the asset with the purchase, do the following:

1.  While you are still on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form with the asset opened, go to the **Reconciliation** tab.
2.  In the **Account** box, make sure that *15010 \(Accrued Purchases: Fixed Assets\)* is selected.
3.  In the row with the **Orig. Amount** of *750.00*, select the unlabeled check box, and make sure that the **Selected Quantity** is set to *5.00* and the **Selected Amount** is set to *750.00*.
4.  On the table toolbar, click **Process**.
5.  On the form toolbar, click **Save** to save the generated transaction and reconcile the asset.

    **Tip:** You can skip reconciliation for any fixed asset if the **Require Full Reconciliation Before Disposal** check box is cleared on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form.


**Parent topic:**[Creating Fixed Assets](../UserGuide/FixedAssets_Adding_Fixed_Asset_Mapref.md)

