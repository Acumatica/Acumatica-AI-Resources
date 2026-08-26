# Sales Taxes: To Configure a Sales Tax for Use in AP {#_90e34a12-31c5-4acf-80eb-9b8e6a006eb5 .task}

By performing this implementation activity, you will learn how to configure a sales tax that will be used in AP documents and purchase orders.

## Story { .section}

The Muffins &amp; Cakes company buys goods from its suppliers and pays the sales tax on these purchases \(input tax\). The rate of the sales tax is 8.31%. You need to configure a sales tax of the *Input* type in the system, which will be applied to AP documents.

## Configuration Overview {#section_chl_5gs_hrb .section}

For the purposes of this activity, in the *U100* dataset, on the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* and *EXEMPT* tax categories have been configured.

## Process Overview { .section}

In this activity, on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, you will open a sales tax; on the **Tax Schedule** tab, you will add a line for the *Input* type of reporting group.

**Important:** Before configuring a sales tax in the production environment, you should know exactly which calculation method should be applied in the **Calculation Rule** box \(**Tax Settings** tab\) of the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\).

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  As a prerequisite activity, make sure the *DENTAX* tax has been configured as described in [Sales Taxes: To Create a Sales Tax for Use in AR](SalesTaxes_Implem_Activity_AR.md).
3.  As a prerequisite activity, make sure the *DENVER* tax zone has been configured as described in [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](TaxZones_and_Categories_SalesTax_Implem_Activity.md).

## Step: Updating the Tax Schedule for the Sales Tax { .section}

To add a line to the tax schedule of the sales tax, proceed as follows:

1.  Open the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form.
2.  In the **Tax ID** box, select *DENTAX*.
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `8.31`
    -   **Reporting Group**: *Input*
4.  On the form toolbar, click **Save** to save your changes.

    The created tax will be applied to all taxable items purchased from vendors assigned to the *DENVER* tax zone.


**Parent topic:**[Sales Taxes](../ImplementationGuide/Taxes_SalesTaxes_Mapref.md)

