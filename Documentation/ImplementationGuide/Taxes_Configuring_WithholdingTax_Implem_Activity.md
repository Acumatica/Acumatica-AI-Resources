# Withholding Taxes: Implementation Activity {#_0bd0ca84-8654-42bd-8399-35b7571b092d .task}

By performing this implementation activity, you will learn how to configure a withholding tax.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams started purchasing services from a company located in Europe. Payments made to a foreign vendor are subject to withholding tax that has not yet been implemented in the system. Acting as an implementation consultant, you need to prepare the system entities for the creation of the new type of tax as follows:

-   Create a GL account for withholding taxes in the chart of accounts
-   Update the settings of the tax agency
-   Update the settings of an existing tax report
-   Create a tax category and update the settings of a tax zone for the withholding tax
-   Create the withholding tax

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the *VAT Reporting* feature has been enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Process Overview { .section}

In this activity, you will create a GL account on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form. On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you will update the settings of a tax agency to make it possible to create new revisions of a tax report for closed periods. On the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form, you will update the configuration of a tax report and on the [Reporting Groups](../UserGuide/TX_20_52_00.md) \(TX205200\) form, you will add report lines to the *Withholding* group. For the withholding tax, you will create a tax category on the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form and update the settings of a tax zone on the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form. Finally, on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, you will create a withholding tax.

## System Preparation { .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an implementation consultant by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
3.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured the *VATTAX* tax agency as described in [Tax Agency: To Set Up a Tax Agency for VAT](TaxAgency_VAT_Implem_Activity.md).
4.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a tax report as described in [Tax Report Configuration: To Create a Tax Report for VAT](TaxReport_VAT_Implem_Activity.md).

## Step 1: Creating a GL Account { .section}

To create a GL account for withholding taxes, do the following:

1.  Open the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form.
2.  On the form toolbar, click **Add Row** and specify the following settings for the new row:

    -   **Account**: `24210`
    -   **Account Class**: *TAXESPAY*
    -   **Type**: *Liability* \(inserted automatically\)
    -   **Description**: `Withholding Tax Payable`
    -   **Control Account Module**: *TX*
    This account will be used for accumulating the withholding tax amounts to be paid to a tax agency in a tax period.

3.  On the form toolbar, click **Save**.

## Step 2: Updating the Tax Agency Settings { .section}

To update the tax agency settings, do the following:

1.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *VATTAX*.
3.  On the **Tax Agency** tab, select the **Update Closed Tax Periods** check box.

    With this check box selected, you can prepare new revisions of tax reports for closed periods that will include documents processed in a particular tax period after the period was closed.

4.  On the form toolbar, click **Save**.

## Step 3: Updating the Configuration of the Tax Report { .section}

To update the configuration of the tax report, do the following:

1.  Open the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form.
2.  In the **Tax Agency** box, select *VATTAX*.
3.  On the **Report Lines** tab, click **Add Row** and specify the following settings:
    -   **Description**: `Purchases Subject to Withholding Tax`
    -   **Update With**: *Taxable Amount*
    -   **Update Rule**: *+Output-Input*
4.  Click **Add Row** again and specify the following settings for another row:
    -   **Description**: `Withholding Tax`
    -   **Update With**: *Tax Amount*
    -   **Update Rule**: *+Output-Input*
5.  On the **Reporting Groups** tab, click **Add Row** and specify the following settings:
    -   **Name**: *Withholding*
    -   **Group Type**: *Output*
6.  On the form toolbar, click **Save**.

## Step 4: Specifying the Report Lines for the Withholding Group { .section}

To specify the report lines for the withholding group, do the following:

1.  While you are still on the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form with the *Withholding* group selected, click **Group Details** on the table toolbar.
2.  On the [Reporting Groups](../UserGuide/TX_20_52_00.md) \(TX205200\) form, which opens, click **Add Row** on the table toolbar, and add the following lines:
    -   **Report Line**: *9 - Tax Amount Payable*
    -   **Report Line**: *10 - Purchases Subject to Withholding Tax*
    -   **Report Line**: *11 - Withholding Tax*
3.  On the form toolbar, click **Save**.

## Step 5: Creating a Tax Category and Updating a Tax Zone { .section}

To create a tax category and update the settings of a tax zone for the withholding tax, do the following:

1.  Open the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form.
2.  On the form toolbar, click **Add New Record** and specify the following settings:
    -   **Tax Category ID**: `WITHHOLDING`
    -   **Description**: `Withholding`
3.  On the form toolbar, click **Save**.
4.  Open the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form.
5.  In the **Tax Zone ID** box, select *FOREIGN*.
6.  In the **Default Tax Category** box, select *WITHHOLDING*.
7.  On the **Applicable Taxes** tab, remove the *VATIMPORT* tax.
8.  On the form toolbar, click **Save**.

## Step 6: Creating a Withholding Tax { .section}

To create a withholding tax, do the following:

1.  On the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Tax ID**: `WITHHOLDING`
    -   **Description**: `Withholding Tax 15%`
    -   **Tax Type**: *Withholding*
    -   **Calculation Rule**: *Inclusive Line-Level* \(inserted by default\)

        This setting means that the tax is already included in the line amount and should be subtracted from it. By default, the system selects this rule for taxes with the *Withholding* type.

    -   **Cash Discount**: *Does Not Affect Taxable Amount*
    -   **Tax Agency**: *VATTAX*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `15`
    -   **Reporting Group**: *Withholding*
4.  On the **GL Accounts** tab, in the **Tax Payable Account** box, specify *24210 - Withholding Tax Payable*.
5.  On the **Categories** tab, click **Add Row** on the table toolbar, and select *WITHHOLDING* in the **Tax Category** column.
6.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *FOREIGN* in the **Tax Zone ID** column.
7.  On the form toolbar, click **Save**.

**Parent topic:**[Withholding Taxes](../ImplementationGuide/Taxes_Configuring_Withholding_Mapref.md)

