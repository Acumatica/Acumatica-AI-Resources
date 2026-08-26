# Purchases with Inclusive Sales Taxes: Implementation Activity {#_7b9594c9-a7bf-480a-8473-1d6a0df79009 .task}

In the following implementation activity, you will learn how to update the settings of an inclusive sales tax so that it can be used for purchases.

## Story {#section_sgk_fjv_vxb .section}

Suppose that the SweetLife Fruits &amp; Jams company buys goods from its vendors and pays the sales tax on these purchases \(input tax\). The rate of the sales tax is 8.875% and this tax should be applied at the document level.

Acting as an implementation consultant, you need to configure a sales tax of the *Input* type in the system, which will be applied to AP documents.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, on the [Taxes](TX_20_50_00.md) \(TX205000\) form, the *NYINCTAX* has been configured and assigned to the *TAXABLE* category and the *NYSTATE* tax zone.

## Process Overview {#section_wgk_fjv_vxb .section}

In this activity, on the [Taxes](TX_20_50_00.md) \(TX205000\) form, you will open an inclusive sales tax; on the **Tax Schedule** tab, you will add a line for the *Input* type of reporting group.

## System Preparation {#section_ygk_fjv_vxb .section}

Before you begin to work with sales taxes, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  As a prerequisite activity, ensure an inclusive sales tax has been created, as described in [Invoices with Inclusive Sales Taxes: Implementation Activity](Taxes_Invoices_with_InclusiveSalesTax_Implem_Activity.md).

## Step: Updating the Tax Schedule for the Inclusive Sales Tax {#section_ahk_fjv_vxb .section}

To update the tax schedule of the inclusive sales tax, do the following:

1.  Open the [Taxes](TX_20_50_00.md) \(TX205000\) form.
2.  In the **Tax ID** box, select *NYINCTAX*.
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `8.875`
    -   **Reporting Group**: *Input*
4.  On the **Categories** tab, make sure that the *TAXABLE* category has been added.
5.  On the **Zones** tab, make sure that the *NYSTATE* tax zone is added.
6.  On the form toolbar, click **Save** to save your changes.

    The created tax will be applied to all taxable items purchased from vendors assigned to the *NYSTATE* tax zone.


**Parent topic:**[Processing Purchases with Inclusive Sales Taxes](../UserGuide/Taxes_Purchases_with_InclusiveSalesTax_Mapref.md)

