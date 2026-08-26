# Tax Report for VAT: Process Activity {#_0dd34e9e-4455-4188-b304-ba034060491e .task}

The following activity will walk you through the process of preparing and releasing a tax report.

## Story {#section_tr4_fjv_vxb .section}

Suppose that at the end of January, 2026, SweetLife Fruits &amp; Jams has to prepare a tax report and send it to the tax agency. When reporting VATs, the SweetLife company needs to pay to the tax authority the difference between the tax amount paid to vendors \(*Input* taxes\) and the tax amount collected from customers \(*Output* taxes\). The resulting amount should be specified in the AP bill generated for the tax agency. Acting as a SweetLife accountant, you need to prepare the tax report and release the report to close the 01-2026 tax period.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* and *EXEMPT* tax categories have been configured.
-   On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, the *CANADA* tax zone has been configured.

## Process Overview {#section_wr4_fjv_vxb .section}

In this activity, you will first prepare a tax report for the 01-2026 period on the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form. On the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form, you will release the tax report and review its details on the [Tax Report Details](TX_50_20_10.md) \(TX502010\) form. Finally, on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will review the bill generated for the tax agency and review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation {#section_yr4_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/31/2026*. If a different date is displayed, click the Business Date menu button and select *1/31/2026*. For simplicity, in this process activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured the *VATTAX* tax agency as described in [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).
5.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a tax report as described in [Tax Report Configuration: To Create a Tax Report for VAT](../ImplementationGuide/TaxReport_VAT_Implem_Activity.md).
6.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a value added tax as described in [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md).
7.  As a prerequisite activity, in the company to which you are signed in, be sure that you have created taxable documents for 01-2026, as described in [AR Documents with VAT: To Process an AR Invoice](Taxes_Processing_ARDocs_with_VAT_Activity1.md), [AR Documents with VAT: To Process a Credit Memo](Taxes_Processing_ARDocs_with_VAT_Activity2.md), [AP Documents with VAT: To Process an AP Bill](Taxes_Processing_APDocs_with_VAT_Activity1.md), [AP Documents with VAT: To Process a Debit Adjustment](Taxes_Processing_APDocs_with_VAT_Activity2.md), [Cash Entries with Taxes: To Process a Cash Entry with VAT](Taxes_Applying_Tax_to_CashEntry_Activity2.md), [Taxable Sales with Freight Charges: Process Activity](Taxes_Processing_SO_Invoice_FreightCharges_Activity.md), [Tax Entry from GL: Process Activity](Taxes_Tax_Entry_from_GL_Process_Activity.md), [Direct Tax Payment: To Create a Tax Bill for a Tax Agency](Taxes_Paying_Tax_Directly_Create_Tax_Bill_Applied_to_Purchase.md), and [Direct Tax Payment: To Create an AP Bill with a Direct-Entry Tax](Taxes_Paying_Tax_Directly_Create_Bill_with_Direct_Entry_Tax.md).

## Step 1: Preparing a Tax Report {#section_as4_fjv_vxb .section}

To prepare a tax report for January 2026, do the following:

1.  Open the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form.
2.  In the Summary area, specify the following settings:

    -   **Company**: *SWEETLIFE*
    -   **Tax Agency**: *VATTAX*
    The table displays the report lines you have configured earlier, and the amounts accumulated for each report line in the current tax period \(*01-2026*\).

    The tax amount that must be paid to the tax agency in the 01-2026 tax period is calculated as the *Total Output Tax* minus the *Total Input Tax*, and is reflected in the *Tax Amount Payable* report line \($418.17\).

3.  On the form toolbar, click **Prepare Tax Report**.

    The *01-2026* tax period is assigned the *Prepared* status \(if necessary, you can review it in the **Status** column on the [Tax Periods](TX_20_70_00.md) \(TX207000\) form\). The system opens the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form with the prepared report. Before you release the report, you will review the documents that relate to different lines in this tax report.

4.  Click the link in the **Amount** column of the *Total Sales* row to review the amounts that have been included in the *Total Sales* line. The [Tax Report Details](TX_50_20_10.md) \(TX502010\) form opens.
5.  On this form, review the documents shown in the table. The table lists the document lines to which output taxes were applied. Notice that the credit memo that reduced the tax and taxable amounts is shown as well.
6.  In the **Report Line** box, select *6 - Total Purchases*, and review the documents.

    The table lists the lines of the documents \(bills, a debit adjustment, and a cash entry\) processed in the *01-2026* period to which input taxes were applied.


## Step 2: Releasing the Tax Report and Closing the Tax Period {#section_gs4_fjv_vxb .section}

To release the tax report, close the current tax period, and review the generated AP bill, do the following:

1.  Open the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form.
2.  On the form toolbar, click **Release**.
3.  Open the [Tax Periods](TX_20_70_00.md) \(TX207000\) form.
4.  In the Summary area, specify the following settings:
    -   **Company**: *SWEETLIFE*
    -   **Tax Agency**: *VATTAX*
    -   **Tax Year**: *2026*
5.  Review the *01-2026* tax period.

    The *01-2026* tax period becomes closed and the **Net Tax Amount** column shows the amount accumulated in the line for which the **Net Tax** check box is selected on the **Report Lines** tab of the [Reporting Settings](TX_20_51_00.md) \(TX205100\) form.

    **Tip:** Tax amounts posted to the closed tax period will be reported in the next open period—in this case, in *02-2026*. If you select the **Update Closed Tax Periods** check box for the tax agency on the **Tax Agency** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form, then you will be able to prepare another revision of the tax report for the closed tax period.

6.  Click the link in the **Net Tax Amount** column, and review the [Tax Report Details](TX_50_20_10.md) \(TX502010\) form.

    The amounts in the **Report Tax Amount** column constitute the **Net Tax Amount** payable \($418.17\).

7.  Open the [Release Tax Report](TX_50_20_00.md) form again and review the **AP Documents** tab.

    The table lists two AP bills: The first one is the manually created bill that pays the VAT on imported goods to the tax agency \(for details, see [Direct Tax Payment: To Create a Tax Bill for a Tax Agency](Taxes_Paying_Tax_Directly_Create_Tax_Bill_Applied_to_Purchase.md)\), and the second bill is the bill generated on release of the tax report.

8.  Click the link in the **Reference Nbr.** column of the second row, and review the bill generated to the tax agency on release of the tax report.

    The bill reports the taxes to be paid to and claimed from the tax agency. The accumulated output VAT is $1,117.20 and the input VAT to be claimed is $699.03. The total amount to be paid in *01-2026* is $418.17.

9.  On the **Financial** tab, click the **Batch Nbr.** link and on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the generated GL transaction.

    On release of the AP bill, the system generated the following entries:

    -   The Accounts Payable account of the tax agency \(*20000*\) is credited in the tax amount that should be paid to the tax agency.
    -   The Tax Claimable account of the taxes \(*17000*\) is credited in the accumulated input tax amount, so that the balance of the account becomes $0.00 at the start of the next tax period.
    -   The Tax Payable account of the taxes \(*24100*\) is debited in the accumulated output tax amount, so that the balance of the account becomes $0.00 at the start of the next tax period.

**Parent topic:**[Preparing a Tax Report for Value-Added Taxes](../UserGuide/Taxes_Preparing_a_Tax_Report_VAT_Mapref.md)

