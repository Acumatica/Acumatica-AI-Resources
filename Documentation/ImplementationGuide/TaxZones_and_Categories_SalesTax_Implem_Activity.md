# Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes {#_3d55038c-a5dc-46fe-9d67-b23d88ca1090 .task}

By performing the following implementation activity, you will review tax categories and their settings and learn how to create a tax zone for sales taxes.

## Story { .section}

The Muffins &amp; Cakes company, which operates in Denver, Colorado, provides delivery services that are subject to a 8.31% sales tax. While two tax categories have been already created in Acumatica ERP \(*TAXABLE* and *EXEMPT*\), no other tax configuration has been performed.

You need to assign the *TAXABLE* tax category to the needed non-stock item \(*DELIVERY*\). You also need to create a tax zone for Denver, Colorado, to which you will also assign the *TAXABLE* category as the default tax category of the tax zone.

## Configuration Overview {#section_chl_5gs_hrb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* and *EXEMPT* tax categories have been configured.
-   On the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, the *NYSTATETAX* and *NYNOTAX* taxes has been configured.
-   On the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, the *DELIVERY* item has been configured.

## Process Overview { .section}

In this activity, you will first review the tax categories on the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form and the taxes in these zones, and then assign the *TAXABLE* category to an item on the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form. You will then create the needed tax zone on the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form, assigning the appropriate default tax category to it.

## System Preparation { .section}

Before you begin to work with tax categories and tax zones, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  As a prerequisite activity, make sure a tax report has been configured as described in [Tax Report Configuration: To Create a Tax Report for Sales Taxes](TaxReport_SalesTaxes_Implem_Activity.md).

## Step 1: Reviewing Tax Categories and Assigning a Tax Category to a Non-Stock Item { .section}

To review the existing tax categories and assign a tax category to a non-stock item, proceed as follows:

1.  Open the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form.
2.  In the **Tax Category ID**, select *TAXABLE* and review the taxes included in the tax category.
3.  Click the *NYSTATETAX* link in the **Tax ID** column to open the tax on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form. Notice the **Tax Schedule** settings in the table.

    For the *TAXABLE* category, for the *NYSTATETAX* assigned to this category, the tax rate of 8.875 with the 1/1/2026 date is applied, the **Group Type** is *Output* and the **Tax Agency** in the Summary area is specified. It means that sales with this sales tax will be shown in the tax report generated for this agency.

4.  Close the [Taxes](../UserGuide/TX_20_50_00.md) form and return to the [Tax Categories](../UserGuide/TX_20_55_00.md) form.
5.  In the **Tax Category ID**, select *EXEMPT* and review the taxes included in the tax category.
6.  Click the *NYNOTAX* link in the **Tax ID** column to open the tax on the [Taxes](../UserGuide/TX_20_50_00.md) form.

    The *EXEMPT* category contains the tax with the tax rate of *0*, indicating that the goods assigned to this tax category are exempt from the sales tax, but the **Group Type** is *Output* and the **Tax Agency** in the Summary area is specified. It means that exempt sales will be shown in the tax report generated for this agency because the specified reporting group is associated with report lines.

7.  Close the [Taxes](../UserGuide/TX_20_50_00.md) form and return to the [Tax Categories](../UserGuide/TX_20_55_00.md) form.

    All of the company's current sales taxes fit into the defined categories and will be assigned accordingly.

8.  Open the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form.
9.  In the **Inventory ID** box, select *DELIVERY*.

    You will assign the appropriate tax category to this item, because the delivery services are taxable and you need to change the preconfigured tax category for this item.

10. On the **General** tab \(the **Item Defaults** section\), in the **Tax Category** box, select *TAXABLE*.

    This tax category will be inserted by default into the lines of documents in which this item is specified; however, you can override it.

11. On the form toolbar, click **Save** to save your changes.

## Step 2: Creating a Tax Zone { .section}

Do the following to create the tax zone for Denver:

1.  Open the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form.
2.  On the form toolbar, click **Add New Record**, and create a tax zone with the following settings in the Summary area:

    -   **Tax Zone ID**: `DENVER`
    -   **Description**: `Denver tax zone`
    -   **Default Tax Category**: *TAXABLE*
    The specified tax category will be used by default for this tax zone in document lines in which an item is not specified.

3.  On the form toolbar, click **Save** to save your changes.

    Taxes can then be created and assigned to this tax zone.


**Parent topic:**[Tax Zones and Tax Categories](../ImplementationGuide/Taxes_TaxZones_and_Categories_Mapref.md)

