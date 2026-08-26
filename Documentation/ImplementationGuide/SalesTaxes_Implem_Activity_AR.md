# Sales Taxes: To Create a Sales Tax for Use in AR {#_d92c920e-73ed-4e6a-a7a2-1f51f5d59c79 .task}

By performing this implementation activity, you will learn how to configure a sales tax that will be used in AR documents and sales orders.

## Story { .section}

The Muffins &amp; Cakes company, which operates in Denver, Colorado, provides services subject to a 8.31% sales tax. You need to configure the sales tax, assign it to the *TAXABLE* category and the *DENVER* tax zone, and specify the tax calculation method for this tax.

You also need to define a 0% sales tax, because you have to report exempt sales in your tax report. This tax indicates that a sale should be reported as tax exempt.

## Configuration Overview {#section_chl_5gs_hrb .section}

For the purposes of this activity, in the *U100* dataset, on the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* and *EXEMPT* tax categories have been configured.

## Process Overview { .section}

In this activity, on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, you will create a sales tax and specify its tax rate, tax category and tax zone. On the same form, you will also create a sales tax of 0% to represent exempt sales in the tax report. On the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form, you will then review the list of taxes assigned to the tax zone, and on the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, you will review the taxes assigned to each tax category.

**Important:** Before configuring a sales tax in the production environment, you should know exactly which calculation method should be applied in the **Calculation Rule** box \(**Tax Settings** tab\) of the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  As a prerequisite activity, make sure the *DENVER* tax zone has been configured as described in [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](TaxZones_and_Categories_SalesTax_Implem_Activity.md).
3.  As a prerequisite activity, make sure the *COTAXDEP* tax agency has been configured as described in [Tax Agency: To Set Up a Tax Agency for Sales Taxes](TaxAgency_SalesTaxes_Implem_Activity.md).

## Step 1: Creating a Sales Tax { .section}

To create a sales tax, proceed as follows:

1.  Open the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form.
2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Tax ID**: `DENTAX`
    -   **Description**: `Denver Sales Tax`
    -   **Tax Type**: *Sales*
    -   **Calculation Rule**: *Exclusive Document-Level*

        This setting means that the tax amount is calculated on the sum of the line amounts to which this tax is applied.

    -   **Cash Discount**: *Does Not Affect Taxable Amount*
    -   **Tax Agency**: *COTAXDEP*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `8.31`
    -   **Reporting Group**: *Taxable*
4.  On the **Categories** tab, click **Add Row** on the table toolbar, and select *TAXABLE* in the **Tax Category** column.
5.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *DENVER* in the **Tax Zone ID** column.

    The created tax will be applied to all taxable items sold to customers assigned to the *DENVER* tax zone.

6.  On the **GL Accounts** tab, review the GL accounts assigned to this sales tax.

    The Tax Payable account is the liability account that accumulates the tax amounts to be paid to the tax agency. The account is credited in the tax amount when taxable invoices are released.

7.  On the form toolbar, click **Save** to save your changes.

## Step 2: Creating a 0% Sales Tax { .section}

To create a 0% \(exempt\) sales tax, proceed as follows:

1.  While you are still on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Tax ID**: `DENEXEMPT`
    -   **Description**: `Denver Exempt`
    -   **Tax Type**: *Sales*
    -   **Calculation Rule**: *Exclusive Document-Level*
    -   **Cash Discount**: *Does Not Affect Taxable Amount*
    -   **Tax Agency**: *COTAXDEP*
2.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `0` \(inserted by default\)
    -   **Reporting Group**: *Exempt*
3.  On the **Categories** tab, click **Add Row** on the table toolbar, and select *EXEMPT* in the **Tax Category** column.
4.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *DENVER* in the **Tax Zone ID** column.
5.  On the form toolbar, click **Save** to save your changes.

## Step 3: Reviewing the List of Taxes { .section}

To review the list of taxes now available for the Denver tax zone, proceed as follows:

1.  Open the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form.
2.  In the **Tax Zone ID** box, select *DENVER*. Review the list of taxes that currently belong to this zone. Notice that the list includes both *DENTAX* and *DENEXEMPT*.
3.  Open the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form.
4.  In the **Tax Category ID** box, select *TAXABLE* and review the taxes in the table. The *TAXABLE* category now includes the *DENTAX* tax.
5.  In the **Tax Category ID** box, select *EXEMPT* and review the taxes in the table. The *EXEMPT* category now includes the *DENEXEMPT* tax.

**Parent topic:**[Sales Taxes](../ImplementationGuide/Taxes_SalesTaxes_Mapref.md)

