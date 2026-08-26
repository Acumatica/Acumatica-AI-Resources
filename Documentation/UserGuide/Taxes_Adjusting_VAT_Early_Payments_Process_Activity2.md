# VAT for Early Payments: To Prepare a New Revision of VAT Tax Report {#_f81b9912-9519-4ceb-8b01-e771a3047908 .task}

The following activity will walk you through the process of preparing a new revision of a VAT tax report.

## Story {#section_hbn_fjv_vxb .section}

Suppose that the SweetLife company has already prepared a VAT tax report for the 01-2026 period. After a company accountant has processed a payment of a taxable invoice with a cash discount, a VAT credit memo was generated, and the amount of the output VAT has changed. Acting as the SweetLife accountant, you need to prepare a new revision of the tax report for the 01-2026 period, which will include the amounts of the documents related to the payment of the invoice.

## Configuration Overview {#section_jbn_fjv_vxb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* tax category has been configured.

## Process Overview {#section_lbn_fjv_vxb .section}

In this activity, you will prepare a new revision of the VAT tax report on the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form. On the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form, you will review the new revision of the tax report and make sure that the amount of output tax was adjusted on the [Tax Report Details](TX_50_20_10.md) \(TX502010\) form.

## System Preparation {#section_nbn_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date in your system to *1/31/2026*.
3.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  As a prerequisite activity, be sure that you have created the *CANADA* tax zone on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).
5.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured the *VATTAX* tax agency as described in [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).
6.  As a prerequisite activity, be sure you have configured VAT on the [Taxes](TX_20_50_00.md) \(TX205000\) form as described in [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md).
7.  As a prerequisite activity, in the company to which you are signed in, be sure that you have prepared and released a VAT tax report for the *01-2026* period as described in [Tax Report for VAT: Process Activity](Taxes_Preparing_a_Tax_Report_VAT_Process_Activity.md). The **Update Closed Tax Periods** check box is selected for the tax agency on the [Vendors](AP_30_30_00.md) form.
8.  As a prerequisite activity, in the company to which you are signed in, be sure that you have processed a payment of an AR invoice and generated a VAT credit memo as described in [VAT for Early Payments: To Process a Payment with a Cash Discount](Taxes_Adjusting_VAT_Early_Payments_Process_Activity.md).

## Step 1: Preparing a VAT Tax Report {#section_pbn_fjv_vxb .section}

To prepare a VAT tax report for the 01-2026 period, do the following:

1.  Open the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form.
2.  In the Summary area, specify the following settings:

    -   **Company**: *SWEETLIFE*
    -   **Tax Agency**: *VATTAX*
    -   **Tax Period**: *01-2026*
    Notice that some of the report lines now display the amounts of the taxable sales and the tax applied to it.

3.  On the form toolbar, click **Prepare Tax Report**.

## Step 2: Reviewing the New Revision of the Tax Report {#section_sbn_fjv_vxb .section}

To review the new revision of the tax report, do the following:

1.  On the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form, which opens, review the amounts in the tax report lines. Notice that *3* is inserted automatically in the **Revision** box in the Summary area.
2.  Select the **Show Difference** check box.

    The system displays the amounts of the documents included in the new revision of the tax report.

3.  Clear the **Show Difference** check box.
4.  Click the link in the *Total Output Tax* line and review the documents on the [Tax Report Details](TX_50_20_10.md) \(TX502010\) form. Notice that the output tax and taxable amounts calculated for the invoice of the *LAKECAFE* customer were adjusted for the discount amount that was given to the customer for early payment.

**Parent topic:**[Adjusting VAT for Early Payments](../UserGuide/Taxes_Adjusting_VAT_Early_Payments_Mapref.md)

