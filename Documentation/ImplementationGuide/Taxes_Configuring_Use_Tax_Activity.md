# Use Taxes: Implementation Activity {#_f1240a47-81b3-4a02-8681-77cf0229ffe3 .task}

By performing the following implementation activity, you will learn how to configure a use tax that will be applied to AP documents.

## Story { .section}

Suppose that the *SQUEEZO* vendor, from which the SweetLife Fruits &amp; Jams company buys juicers, does not charge the sales tax from its buyers that are located outside of New Jersey, where this vendor is located. Therefore, all the purchases made from this vendor are subject to the use tax of the New York state, where SweetLife is located.

The chief accountant of the SweetLife company needs to update the tax agency settings, tax report, and the vendor to be able to pay the use tax to the NY tax agency.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* tax category has been configured.
-   On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, the *SQUEEZO* vendor account has been configured and the *NYTAXDEP* vendor has been configured as a tax agency.
-   On the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form, a tax report has been configured for the *NYTAXDEP* tax agency.

## Process Overview { .section}

In this activity, you will start the configuration of a use tax by creating a tax zone on the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form. On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you will update the settings of the needed vendor and those of the tax agency. On the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form, you will modify the tax report. Finally, you will create a use tax on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form.

## System Preparation { .section}

Before you begin to configure the use tax, launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.

## Step 1: Creating a Tax Zone { .section}

To create a tax zone, proceed as follows:

1.  Open the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:

    -   **Tax Zone ID**: `NYUSE`
    -   **Description**: `Use tax zone`
    -   **Default Tax Category**: *TAXABLE*
    After you assign this zone to a particular vendor, taxable items purchased from this vendor will be subject to use tax.

3.  On the form toolbar, click **Save** to save the created tax zone.

## Step 2: Updating the Settings of the Tax Agency and the Vendor { .section}

To update the settings of the tax agency and the vendor for whose documents you want to apply the use tax, proceed as follows:

1.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *NYTAXDEP*.
3.  On the **Tax Agency** tab, select the **Update Closed Tax Periods** check box.
4.  On the form toolbar, click **Save** to save your changes.
5.  In the **Vendor ID** box, select *SQUEEZO*.
6.  On the **Purchase Settings** tab, in the **Tax Zone** box, select *NYUSE*.
7.  On the form toolbar, click **Save** to save your changes.

## Step 3: Updating the Tax Report { .section}

To update the tax report, proceed as follows:

1.  Open the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form.
2.  In the **Tax Agency** box, select *NYTAXDEP*.
3.  On the **Report Lines** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Description**: `Purchases Subject to Use Tax`
    -   **Update With**: *Taxable Amount*
    -   **Update Rule**: *+Output-Input*

        This report line will accumulate the total of purchases that are subject to a use tax.

4.  On the form toolbar, click **Save** to save your changes.
5.  On the **Reporting Groups** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Name**: `Use tax`
    -   **Group Type**: *Output*

        The use tax is paid to the tax agency; therefore, it is of the *Output* type.

6.  On the form toolbar, click **Save** to save your changes.
7.  Make sure that the *Use tax* group is selected in the table, and on the table toolbar, click **Group Details**. The [Reporting Groups](../UserGuide/TX_20_52_00.md) \(TX205200\) form opens.
8.  On this form, add the following rows to the table:
    -   **Report Line**: *2 - Tax Total*
    -   **Report Line**: *6 - Purchases Subject to Use Tax*
9.  On the form toolbar, click **Save** to save your changes.

## Step 4: Creating a Use Tax { .section}

To create a use tax, proceed as follows:

1.  Open the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form.
2.  On the form toolbar, click **Add New Record**, and specify the following settings:
    -   **Tax ID**: `NYUSETAX`
    -   **Description**: `New York use tax`
    -   **Tax Type**: *Use*
    -   **Calculation Rule**: *Exclusive Document-Level*

        Before configuring a use tax in the production environment, you should know exactly which calculation method should be applied in this box.

    -   **Cash Discount**: *Does Not Affect Taxable Amount*
    -   **Exclude from Tax-on-Tax Calculation**: Selected

        This check box is selected by default, because the use tax is a first-level tax and should be excluded from tax-on-tax calculation.

    -   **Tax Agency**: *NYTAXDEP*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `8.875`
    -   **Reporting Group**: *Use tax*
4.  On the **Categories** tab, click **Add Row**, and select *TAXABLE* in the **Tax Category** column.
5.  On the **Zones** tab, click **Add Row**, and select *NYUSE* in the **Tax Zone ID** column.
6.  On the **GL Accounts** tab, make sure that the **Use Tax Expense Account** check box is selected, and select *65200 - Use Tax* in the **Tax Expense Account** box.
7.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Use Tax](../ImplementationGuide/Taxes_Configuring_Use_Tax_Mapref.md)

