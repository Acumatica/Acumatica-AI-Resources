# Tax Entry from GL: Process Activity {#_51887df4-4480-4d82-872d-a4c2a8999b68 .task}

The following activity will walk you through the process of creating a taxable transaction from the general ledger.

## Story {#section_uvh_fjv_vxb .section}

Suppose that starting in 01-2026, SweetLife Fruits &amp; Jams uses external payroll software for calculating salaries. Based on the governmental laws of the country, employers need to withhold certain payroll tax amounts from salary payments and pay them to the tax authority. The needed system settings have been performed and a payroll tax has been created in the system. Acting as a SweetLife accountant, you need to process a taxable transaction in the general ledger.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *69500 \(Salaries and Wages\)*, *24050 \(Payroll Liabilities: Taxes\)*, and *23015 \(Accrued Expenses\)* accounts have been added.

## Process Overview {#section_xvh_fjv_vxb .section}

In this activity, you will first enable the *Tax Entry from GL Module* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, you will update the settings of the account that will be used in the GL transaction. On the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, you will update the general ledger preferences to make the GL transaction appear on the tax report. On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, you will create and release a taxable GL transaction, specifying the tax amount manually. Finally, on the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form, you will review the tax report with the updated amounts.

## System Preparation {#section_zvh_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the company and branch selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured the *VATTAX* tax agency as described in [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).
5.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a tax report and its lines as described in [Withholding Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_WithholdingTax_Implem_Activity.md).
6.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a payroll tax as described in [Tax Entry from GL: Implementation Activity](Taxes_Tax_Entry_from_GL_Implem_Activity.md).

## Step 1: Enabling the Needed Feature {#section_bwh_fjv_vxb .section}

To enable the needed feature, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  Under the **Standard Financials** group of features, select the **Tax Entry from GL Module** check box.
4.  On the form toolbar, click **Enable** to enable the feature.

## Step 2: Updating the Account Settings {#section_dwh_fjv_vxb .section}

To update the settings of the account that will be used in the GL transaction, do the following:

1.  Open the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.
2.  Select the *69500* account and in the **Tax Category** column, select *PAYROLL*.

    When you create a taxable GL entry, the *PAYROLL* category will be automatically specified in the lines with the *69500* account selected.

3.  On the form toolbar, click **Save**.

## Step 3: Updating the General Ledger Preferences {#section_gwh_fjv_vxb .section}

To update the general ledger preferences, do the following:

1.  Open the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.
2.  On the **General** tab \(**Data Entry Settings** section\), select the **Require Ref. Numbers for GL Documents with Taxes** check box.

    When this check box is selected, the document reference number is required in taxable GL entries.

3.  On the form toolbar, click **Save**.

## Step 4: Creating a Taxable GL Entry {#section_jwh_fjv_vxb .section}

To create a taxable GL entry, do the following:

1.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, create a new record.
2.  In the Summary area, select the **Create Tax Transactions** check box.

    When you select this check box, additional elements appear on the form, so that you can specify tax-related data for the transaction.

3.  In the Summary area, specify the following settings:
    -   **Module**: *GL*
    -   **Transaction Date**: *1/30/2026*
    -   **Post Period**: *01-2026*
    -   **Description**: `Payroll 01-2026 (taxes withheld)`
4.  On the table toolbar, click **Add Row** and specify the following settings for a new row:

    -   **Branch**: *HEADOFFICE*
    -   **Account**: *69500 \(Salaries and Wages\)*
    -   **Ref. Number**: `01302026`
    -   **Debit Amount**: `10000`
    The *PAYROLL* tax category is automatically specified in this line. The system will use the line amount as a taxable amount.

5.  Click **Add Row** again and specify the following settings for another row:

    -   **Branch**: *HEADOFFICE*
    -   **Account**: *24050 \(Payroll Liabilities: Taxes\)*
    -   **Ref. Number**: `01302026`
    -   **Credit Amount**: `620`
    The *PAYROLL* tax is automatically specified in this line because you have selected the tax payable account associated with the tax. The system will use the line amount as a tax amount.

6.  Click **Add Row** again and specify the following settings for another row:

    -   **Branch**: *HEADOFFICE*
    -   **Account**: *23015 \(Accrued Expenses\)*
    -   **Ref. Number**: `01302026`
    -   **Credit Amount**: `9380`
    Notice that with a transaction entered in the general ledger, the system does not calculate taxes; it uses the tax amount entered by the user. If the **Skip Tax Amount Validation** check box is cleared for the transaction, the system validates the tax amounts for groups of GL entries having the same **Ref. Number**. The system considers GL entries with the same **Ref. Number** as a single document. The amount of the line in which the tax category is specified is used as the taxable amount.

7.  On the form toolbar, click **Remove Hold** and then click **Release** to release the transaction.

## Step 5: Reviewing the Updated Tax Report {#section_pwh_fjv_vxb .section}

To review the tax report updated with the withholding tax amounts, do the following:

1.  Open the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Company**: *SWEETLIFE*
    -   **Tax Agency**: *VATTAX*
    -   **Tax Period**: *01-2026*
3.  In the table, review the updated report amounts for 01-2026.

    The tax amount withheld from employee salaries \($620\) is now shown in the *Tax Amount Payable* and *Withholding Tax* report lines. The taxable amount \($10,000\) is shown in the *Purchases Subject to Withholding Tax* line.


**Parent topic:**[Entering Taxes from the General Ledger](../UserGuide/Taxes_Entering_Taxes_from_GL_Mapref.md)

