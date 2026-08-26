# Value-Added Taxes: To Create a Partially Deductible VAT {#_1b11b751-da3d-4e17-b82c-6a47b395a105 .task}

By performing this implementation activity, you will learn how to configure a partially deductible VAT.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams purchases goods to be used in the company's office. The company is allowed to deduct 40% of the taxes paid on these kinds of purchases from the tax amount paid to the tax authority. Acting as an implementation consultant, you need to configure a VAT of the deductible type to partially deduct the tax amount.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.

## Process Overview { .section}

In this activity, on the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, you will create a tax category for a deductible VAT. On the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, you will create a deductible VAT and specify its tax rate, tax category and tax zone.

## System Preparation { .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an implementation consultant by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
3.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a tax agency and a tax report as described in [Tax Report Configuration: To Create a Tax Report for VAT Variations](TaxReport_VAT_Variations_Implem_Activity.md).
4.  As a prerequisite activity, be sure that you have created the *CANADA* tax zone on the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](TaxZones_and_Categories_VAT_Implem_Activity.md).
5.  As a prerequisite activity, be sure that you have configured a tax report on the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form and have added reporting groups to the tax report. For details, see [Tax Report Configuration: To Create a Tax Report for VAT Variations](TaxReport_VAT_Variations_Implem_Activity.md).

## Step 1: Creating a Tax Category for a Deductible VAT { .section}

To create a tax category for a partially deductible VAT, do the following:

1.  On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Tax Category ID**: `DEDUCTIBLE`
    -   **Description**: `Purchases subject to deductions`
3.  On the form toolbar, click **Save**.

## Step 2: Creating a Partially Deductible VAT { .section}

To create a partially deductible VAT, do the following:

1.  On the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Tax ID**: `DEDUCTIBLEVAT`
    -   **Description**: `Deductible VAT`
    -   **Tax Type**: *VAT*
    -   **Partially Deductible VAT**: Selected
    -   **Include in VAT Taxable Total**: Selected
    -   **Calculation Rule**: *Exclusive Line-Level*
    -   **Cash Discount**: *Does Not Affect Taxable Amount*
    -   **Tax Agency**: *VATVAR*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `15`
    -   **Deductible Tax Rate**: `40`

        This setting defines the part of the tax amount \(40%\) that the company is allowed to deduct from its tax liability. The rest of the tax amount \(60%\) counts toward the company's expenses.

    -   **Reporting Group**: *Deductible*
4.  Go to the **GL Accounts** tab and review the accounts.

    The **Use Tax Expense Account** check box, which is selected by default, specifies that the non-deductible part of the tax amount will be posted to the Tax Expense account.

    **Tip:** To post the non-deductible part of the tax amount to the expense account specified in the taxable line, you would clear the **Use Tax Expense Account** check box.

5.  On the **Categories** tab, click **Add Row** on the table toolbar, and select *DEDUCTIBLE* in the **Tax Category** column.
6.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *CANADA* in the **Tax Zone ID** column.
7.  On the form toolbar, click **Save**.

**Parent topic:**[Value-Added Taxes](../ImplementationGuide/Taxes_Configuring_VAT_Mapref.md)

