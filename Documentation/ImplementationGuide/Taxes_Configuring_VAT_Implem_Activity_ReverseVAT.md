# Value-Added Taxes: To Create a Reverse VAT {#_96ec8f65-39a9-4cfc-91d2-7c9e561e40b0 .task}

By performing this implementation activity, you will learn how to configure a reverse VAT and a general VAT that will offset each other.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams needs to process AP bills to which a reverse VAT applies. The reverse VAT will be paid to the tax agency and the general VAT can be claimed from the tax agency. Acting as an implementation consultant, you need to create the following taxes:

-   A reverse VAT included in a reporting group of the *Output* type. This tax should be paid to the agency.
-   A general VAT included in a reporting group of the *Input* type. This tax can be claimed from the tax agency. This tax should have the same tax rate as the reverse VAT.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.

## Process Overview { .section}

In this activity, on the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, you will create a tax category for a reverse VAT. On the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, you will create a reverse VAT and specify its tax rate, tax category and tax zone. You will then create a general VAT with the same tax rate as the reverse VAT.

## System Preparation { .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an implementation consultant by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
3.  As a prerequisite activity, be sure that you have created the *CANADA* tax zone on the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](TaxZones_and_Categories_VAT_Implem_Activity.md).
4.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a tax agency and a tax report as described in [Tax Report Configuration: To Create a Tax Report for VAT Variations](TaxReport_VAT_Variations_Implem_Activity.md).

## Step 1: Creating a Tax Category for a Reverse VAT { .section}

To create a tax category for a reverse VAT, do the following:

1.  On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Tax Category ID**: `REVERSEVAT`
    -   **Description**: `Reverse VAT`
3.  On the form toolbar, click **Save**.

## Step 2: Creating a Reverse VAT { .section}

To create a reverse VAT, do the following:

1.  On the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Tax ID**: `REVERSEVAT`
    -   **Description**: `Reverse VAT`
    -   **Tax Type**: *VAT*
    -   **Reverse VAT**: Selected
    -   **Include in VAT Taxable Total**: Selected
    -   **Calculation Rule**: *Exclusive Line-Level*
    -   **Cash Discount**: *Does Not Affect Taxable Amount*
    -   **Tax Agency**: *VATVAR*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `7`
    -   **Reporting Group**: *Reverse*
4.  On the **Categories** tab, click **Add Row** on the table toolbar, and select *REVERSEVAT* in the **Tax Category** column.
5.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *CANADA* in the **Tax Zone ID** column.
6.  On the form toolbar, click **Save**.

## Step 3: Creating a General VAT { .section}

To create a general VAT that will offset the reverse VAT, do the following:

1.  While you are still on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, click **Add New Record** on the form toolbar.
2.  In the Summary area, specify the following settings:
    -   **Tax ID**: `GENERALVAT`
    -   **Description**: `General VAT`
    -   **Tax Type**: *VAT*
    -   **Include in VAT Taxable Total**: Selected
    -   **Calculation Rule**: *Exclusive Line-Level*
    -   **Cash Discount**: *Does Not Affect Taxable Amount*
    -   **Tax Agency**: *VATVAR*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `7`
    -   **Reporting Group**: *Standard-Rated Acquisitions*
4.  On the **Categories** tab, click **Add Row** on the table toolbar, and select *REVERSEVAT* in the **Tax Category** column.
5.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *CANADA* in the **Tax Zone ID** column.
6.  On the form toolbar, click **Save**.

**Parent topic:**[Value-Added Taxes](../ImplementationGuide/Taxes_Configuring_VAT_Mapref.md)

