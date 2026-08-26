# Tax Entry from GL: Implementation Activity {#_6eea0dc7-d3b3-4b7d-b7b2-01a76f0f1460 .task}

The following activity will walk you through the process of applying the settings and configuring entities needed for tax entry from the general ledger.

## Story {#section_d5h_fjv_vxb .section}

Suppose that starting in 01-2026, SweetLife Fruits &amp; Jams uses external payroll software for calculating salaries. Based on the governmental laws of the country, employers need to withhold certain payroll tax amounts from salary payments and pay them to the tax authority. Acting as an implementation consultant, you need to create a withholding payroll tax and create other entities needed for that tax.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *24050 Payroll Liabilities: Taxes* account has been configured.

## Process Overview {#section_g5h_fjv_vxb .section}

In this activity, on the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, you will create a tax category for payroll taxes. On the [Taxes](TX_20_50_00.md) \(TX205000\) form, you will create a payroll tax.

## System Preparation {#section_i5h_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an implementation consultant by using the *gibbs* username and the *123* password.
2.  On the company and branch selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
3.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured the *VATTAX* tax agency as described in [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).
4.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a tax report and its lines as described in [Withholding Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_WithholdingTax_Implem_Activity.md).

## Step 1: Creating a Tax Category {#section_k5h_fjv_vxb .section}

To create a tax category, do the following:

1.  Open the [Tax Categories](TX_20_55_00.md) \(TX205500\) form.
2.  On the form toolbar, click **Add New Record** and specify the following settings:
    -   **Tax Category ID**: `PAYROLL`
    -   **Description**: `Payroll Taxes`
3.  On the form toolbar, click **Save**.

## Step 2: Creating a Payroll Tax {#section_m5h_fjv_vxb .section}

To create a payroll tax, do the following:

1.  On the [Taxes](TX_20_50_00.md) \(TX205000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Tax ID**: `PAYROLL`
    -   **Description**: `Payroll tax`
    -   **Tax Type**: *Withholding*
    -   **Calculation Rule**: *Inclusive Line-Level*
    -   **Cash Discount**: *Does Not Affect Taxable Amount*
    -   **Tax Agency**: *VATTAX*
3.  On the **GL Accounts** tab, in the **Tax Payable Account** box, specify *24050 - Payroll Liabilities: Taxes*.
4.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/2026*
    -   **Tax Rate**: `6.2`
    -   **Reporting Group**: *Withholding*

        **Attention:** For the purposes of this activity, you are using the reporting group that has already been created, as described in [Withholding Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_WithholdingTax_Implem_Activity.md). In production environment, you would need to create a special report line and reporting group for a payroll tax.

5.  On the **Categories** tab, click **Add Row** on the table toolbar, and select *PAYROLL* in the **Tax Category** column.
6.  On the form toolbar, click **Save**.

**Parent topic:**[Entering Taxes from the General Ledger](../UserGuide/Taxes_Entering_Taxes_from_GL_Mapref.md)

