# Value-Added Taxes: To Create a General VAT and Exempt VAT {#_d0246b50-deea-480f-a051-f721b24036cf .task}

By performing this implementation activity, you will learn how to configure a general VAT will be used in AR and AP documents, and an exempt VAT.

## Story { .section}

The SweetLife Fruits &amp; Jams company provides services to customers and buys services from vendors in Canada, which are subject to a 7% VAT. Acting as an implementation consultant, you need to configure the VAT, assign it to the *TAXABLE* category and the *CANADA* tax zone, and specify the tax calculation method for this tax.

You also need to define a 0% exempt VAT, because you have to report exempt VAT in your tax report. This tax needs to be defined because you want to include exempt sales and purchases in your tax report. \(Tax reports do not include documents to which no taxes have been applied.\) That is why you need to create a separate tax code and create two taxes with a rate of 0%: one of the *Output* type, assigned to the *Exempt Sales* group; and the other of the *Input* type, assigned to the *Exempt Purchases* group, which indicates that this sale or purchase should be reported as tax exempt. You can then apply this tax to the appropriate invoices and bills so that they are included in the tax report.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* and *EXEMPT* tax categories have been created.
-   On the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form, the *CANADA* tax zone has been created.

## Process Overview { .section}

In this activity, on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, you will create a VAT tax and specify its tax rate, tax category, and tax zone. On the same form, you will also create a 0% VAT to represent exempt sales and purchases in the tax report. On the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form, you will then review the list of taxes assigned to the tax zone, and on the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, you will review the taxes assigned to each tax category and remove the sales taxes assigned to each category.

**Important:** Before configuring a value-added tax in the production environment, you should know exactly which calculation method should be applied in the **Calculation Rule** box of the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form.

## System Preparation { .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an implementation consultant by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
3.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured the *VATTAX* tax agency as described in [Tax Agency: To Set Up a Tax Agency for VAT](TaxAgency_VAT_Implem_Activity.md).
4.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a tax report as described in [Tax Report Configuration: To Create a Tax Report for VAT](TaxReport_VAT_Implem_Activity.md).

## Step 1: Creating a General VAT { .section}

To create a value-added tax, do the following:

1.  Open the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form and create a new record.
2.  In the Summary area, specify the following settings:
    -   **Tax ID**: `VAT`
    -   **Description**: `VAT 7%`
    -   **Tax Type**: *VAT*
    -   **Include in VAT Taxable Total**: Selected

        When this check box is selected, the taxable amount to which the tax applies is included in the **VAT Taxable Total** for the document on the applicable form.

    -   **Calculation Rule**: *Exclusive Line-Level*

        This setting means that the tax amount is calculated on each line, and then the calculated tax amounts are totaled.

    -   **Cash Discount**: *Does Not Affect Taxable Amount*

        This setting means that the taxable amount is not decreased by any cash discount.

    -   **Tax Agency**: *VATTAX*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `7`
    -   **Reporting Group**: *Taxable Purchases*
4.  Click **Add Row** again and specify the following settings for the second row:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `7`
    -   **Reporting Group**: *Taxable Sales*
5.  On the form toolbar, click **Save**.
6.  On the **Categories** tab, click **Add Row** on the table toolbar, and select *TAXABLE* in the **Tax Category** column.
7.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *CANADA* in the **Tax Zone ID** column.

    The created tax will be applied to all taxable items sold to customers and purchased from vendors assigned to the *CANADA* tax zone.

8.  On the **GL Accounts** tab, review the GL accounts assigned to this tax.

    The Tax Payable account is the liability account that accumulates the tax amounts to be paid to the tax agency. The account is credited in the tax amount when taxable invoices are released. The Tax Claimable account is an asset account that accumulates the tax amounts to be claimed from the tax agency. The account is debited in the tax amount when taxable bills are released.

9.  On the form toolbar, click **Save**.

## Step 2: Creating a 0% Exempt VAT { .section}

To create a 0% \(exempt\) VAT, do the following:

1.  While you are still on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, create a new record, and specify the following settings in the Summary area:
    -   **Tax ID**: `VATEXEMPT`
    -   **Description**: `VAT Exempt`
    -   **Tax Type**: *VAT*
    -   **Include in VAT Exempt Total**: Selected

        When this check box is selected, the **Tax Rate** column on the **Tax Schedule** tab becomes equal to *0* and is unavailable. Also, the taxable amount to which the tax applies is included in the **VAT Exempt Total** for the document on the applicable form.

    -   **Calculation Rule**: *Exclusive Line-Level*
    -   **Cash Discount**: *Does Not Affect Taxable Amount*
    -   **Tax Agency**: *VATTAX*
2.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `0` \(inserted by default\)

        Because you have selected the **Include in VAT Exempt Total** check box, the **Tax Rate** is automatically set to *0.00* and is not available.

    -   **Reporting Group**: *Exempt Purchases*
3.  Click **Add Row** again and specify the following settings for the second row:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `0` \(inserted by default\)
    -   **Reporting Group**: *Exempt Sales*
4.  On the **Categories** tab, click **Add Row** on the table toolbar, and select *EXEMPT* in the **Tax Category** column.
5.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *CANADA* in the **Tax Zone ID** column.
6.  On the form toolbar, click **Save**.

## Step 3: Reviewing the List of Taxes and Updating the Tax Categories { .section}

To review the list of taxes now available for the *CANADA* tax zone, do the following:

1.  Open the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form.
2.  In the **Tax Zone ID** box, select *CANADA*; review the list of taxes that currently belong to this zone. Notice that the list includes both *VAT* and *VATEXEMPT*.
3.  Open the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form.
4.  In the **Tax Category ID** box, select *TAXABLE*, and review the taxes in the table.
5.  In the table, remove *NYSTATETAX* from the category.
6.  On the form toolbar, click **Save**.
7.  In the **Tax Category ID** box, select *EXEMPT*, and review the taxes in the table.
8.  In the table, remove *NYNOTAX* from the category.
9.  On the form toolbar, click **Save**.

**Parent topic:**[Value-Added Taxes](../ImplementationGuide/Taxes_Configuring_VAT_Mapref.md)

