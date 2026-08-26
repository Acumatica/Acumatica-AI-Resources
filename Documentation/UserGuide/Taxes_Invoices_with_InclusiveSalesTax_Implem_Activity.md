# Invoices with Inclusive Sales Taxes: Implementation Activity {#_303f39f7-faa6-4e95-bb75-802f7d9ce7cc .task}

In the following implementation activity, you will learn how to create an inclusive sales tax.

## Story {#section_v43_fjv_vxb .section}

Suppose that the SweetLife Fruits &amp; Jams company provides services subject to 8.875% sales tax. This is a tax of the *Inclusive* type calculated at the document level. You need to create the sales tax, assign it to the *TAXABLE* category and the *NYSTATE* tax zone, and specify the tax calculation method.

## Configuration Overview {#section_x43_fjv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *NYTAXDEP* vendor has been configured as a tax agency.
-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* tax category has been configured.
-   On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, the *NYSTATE* tax zone has been configured.

## Process Overview {#section_z43_fjv_vxb .section}

In this activity, you will review the needed system configuration on the [Tax Preferences](TX_10_30_00.md) \(TX103000\) form. You will then create an inclusive output sales tax on the [Taxes](TX_20_50_00.md) \(TX205000\) form, specifying its tax rate, tax category, and tax zone. Finally, on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, you will update the settings of the *NYSTATE* tax zone, so that only one tax is applied to documents.

## System Preparation { .section}

Before you begin creating an inclusive sales tax, launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.

## Step 1: Specifying Tax Preferences {#section_dp3_fjv_vxb .section}

To specify tax preferences in the system, do the following:

1.  Open the [Tax Preferences](TX_10_30_00.md) \(TX103000\) form.
2.  In the **Tax Rounding Gain Account** box, make sure that *83110 - Tax Rounding Gain / Loss* is specified.
3.  In the **Tax Rounding Loss Account** box, make sure that *83110 - Tax Rounding Gain / Loss* is specified.

## Step 2: Creating the Sales Tax {#section_fp3_fjv_vxb .section}

To create the sales tax, proceed as follows:

1.  Open the [Taxes](TX_20_50_00.md) \(TX205000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Tax ID**: `NYINCTAX`
    -   **Description**: `NY Inclusive Sales Tax`
    -   **Tax Type**: *Sales*
    -   **Calculation Rule**: *Inclusive Document-Level*

        This setting means that the tax amount is calculated on the sum of the line amounts to which this tax is applied and should be extracted from the total document amount.

    -   **Cash Discount**: *Does Not Affect Taxable Amount*
    -   **Tax Agency**: *NYTAXDEP*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `8.875`
    -   **Reporting Group**: *Taxable*
4.  On the **Categories** tab, click **Add Row** on the table toolbar and select *TAXABLE* in the **Tax Category** column.
5.  On the **Zones** tab, click **Add Row** on the table toolbar and select *NYSTATE* in the **Tax Zone ID** column.

    The created tax will be applied to all taxable items sold to customers assigned to the *NYSTATE* tax zone.

6.  On the **GL Accounts** tab, review the GL accounts assigned to this sales tax.
7.  On the form toolbar, click **Save** to save your changes.

## Step 3: Updating the Tax Zone {#section_jp3_fjv_vxb .section}

To update the settings of the *NYSTATE* tax zone, proceed as follows:

1.  Open the [Tax Zones](TX_20_60_00.md) \(TX206000\) form.
2.  In the **Tax Zone ID** box, select *NYSTATE*.
3.  On the **Applicable Taxes** tab, remove the *NYSTATETAX* and *NYNOTAX* taxes from the table. Deleting these rows is needed to avoid the application of two sales taxes to one document.
4.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Processing Invoices with Inclusive Sales Taxes](../UserGuide/Taxes_Invoices_with_InclusiveSalesTax_Mapref.md)

