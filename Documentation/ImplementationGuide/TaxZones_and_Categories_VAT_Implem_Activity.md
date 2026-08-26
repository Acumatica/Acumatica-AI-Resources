# Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT {#_d446b874-dc01-4056-a393-8507b14a8c65 .task}

By performing the following implementation activity, you will review tax categories and their settings and learn how to create a tax category and a tax zone for VAT.

## Story { .section}

The SweetLife Fruits &amp; Jams company provides advertising services that are subject to a 7% value-added tax \(VAT\). While two tax categories have been already created in Acumatica ERP \(*TAXABLE* and *EXEMPT*\), no other tax configuration has been performed.

You need to assign the *TAXABLE* tax category to the needed non-stock item \(*ADVERT*\). You also need to create a tax zone associated with all VAT-registered vendors and customers in Canada. You will assign the *TAXABLE* category as the default tax category of the tax zone.

To make it possible for SweetLife Fruits &amp; Jams to process pending VAT, you need to create a tax category for this type of VAT.

## Configuration Overview {#section_chl_5gs_hrb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* and *EXEMPT* tax categories have been configured.
-   On the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, the *ADVERT* item has been configured.

## Process Overview { .section}

In this activity, you will first review the tax categories on the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, and then assign the *TAXABLE* category to an item on the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form. On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, you will create a tax category for pending VAT. Finally, you will create the needed tax zone on the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form, assigning the appropriate default tax category to it.

## System Preparation { .section}

Before you begin to work with tax categories and tax zones, do the following:

1.  As a prerequisite activity, configure a tax report as described in [Tax Report Configuration: To Create a Tax Report for VAT](TaxReport_VAT_Implem_Activity.md).
2.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded.
3.  To sign in as an implementation consultant, use the *gibbs* username and the *123* password.

## Step 1: Reviewing Tax Categories and Assigning a Tax Category to a Non-Stock Item { .section}

To review the existing tax categories and assign a tax category to a non-stock item, do the following:

1.  Open the Tax Categories \(TX2055PL\) list of records.
2.  Review the existing tax categories—*EXEMPT* and *TAXABLE*.
3.  Open the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form.
4.  In the **Inventory ID** box, select *ADVERT*.

    You will assign the appropriate tax category to this item, because the advertising services are taxable and you need to change the preconfigured tax category for this item.

5.  On the **General** tab \(the **Item Defaults** section\), in the **Tax Category** box, select *TAXABLE*.

    This tax category will be inserted by default into the lines of documents in which this item is specified; however, you can override it.

6.  On the form toolbar, click **Save**.

## Step 2: Creating a Tax Category for Pending VAT { .section}

To create a tax category for pending VAT, do the following:

1.  Open the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form and create a new record.
2.  In the Summary area, specify the following settings for the new tax category:
    -   **Tax Category ID**: `PENDING`
    -   **Description**: `Pending VAT`
3.  On the form toolbar, click **Save** to save your changes.

    This category is empty because you have not added any taxes to it. You can then create a pending VAT and add it to this category.


## Step 3: Creating a Tax Zone { .section}

To create a tax zone for VAT-registered customers and vendors in Canada, do the following:

1.  Open the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form and create a new record.
2.  Specify the following settings in the Summary area:

    -   **Tax Zone ID**: `CANADA`
    -   **Description**: `Canada tax zone`
    -   **Default Tax Category**: *TAXABLE*
    The specified tax category will be used by default for this tax zone in document lines in which an item is not specified.

3.  On the form toolbar, click **Save** to save your changes.

    VAT can then be created and assigned to this tax zone.


**Parent topic:**[Tax Zones and Tax Categories](../ImplementationGuide/Taxes_TaxZones_and_Categories_Mapref.md)

