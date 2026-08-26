# Applying Reverse VAT: Process Activity {#_f5d7ccad-17d3-4e1e-8040-7781f54f7bf2 .task}

The following activity will walk you through the processing of a purchase with a reverse VAT applied to it.

## Story {#section_ekp_fjv_vxb .section}

Suppose that on February 1, 2026, SweetLife Fruits &amp; Jams purchased office supplies to be used in the company's office from Cartridge World Inc. Further suppose that the vendor is not registered with tax authorities for paying VAT. SweetLife Fruits &amp; Jams will pay the VAT on the purchase and will later claim it from the tax agency.

Acting as a SweetLife accountant, you need to process an AP bill to which a reverse VAT is applied and prepare a tax report for the 02-2026 period to make sure that these amounts are reflected there correctly.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Vendors](AP_30_30_00.md) form, the *CARTRIDGE* vendor has been configured.

## Process Overview {#section_ikp_fjv_vxb .section}

In this activity, on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will process an AP bill with a reverse VAT applied to it. On the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form, you will prepare a tax report for the 02-2026 period and review the prepared report on the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form.

## System Preparation {#section_kkp_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date in your system to *2/1/2026*.
3.  On the company and branch selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  As a prerequisite activity, be sure that you have created the *CANADA* tax zone on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).
5.  As a prerequisite activity, be sure that you have configured the *VATVAR* tax agency as described in [Tax Report Configuration: To Create a Tax Report for VAT Variations](../ImplementationGuide/TaxReport_VAT_Variations_Implem_Activity.md).
6.  As a prerequisite activity, be sure that you have configured a tax report on the [Reporting Settings](TX_20_51_00.md) \(TX205100\) form and have added reporting groups to the tax report. For details, see [Tax Report Configuration: To Create a Tax Report for VAT Variations](../ImplementationGuide/TaxReport_VAT_Variations_Implem_Activity.md).
7.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a reverse VAT and a general VAT as described in [Value-Added Taxes: To Create a Reverse VAT](../ImplementationGuide/Taxes_Configuring_VAT_Implem_Activity_ReverseVAT.md).
8.  As a prerequisite activity, be sure that you have specified the *CANADA* tax zone for the *CARTRIDGE* vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form as described in [Applying Deductible VAT: Process Activity](Taxes_Applying_Deductible_VAT_Process_Activity.md).

## Step 1: Processing an AP Bill {#section_mkp_fjv_vxb .section}

To process an AP bill with a reverse VAT applied to it, do the following:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, create a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Vendor**: *CARTRIDGE*
    -   **Date**: *2/1/2026* \(inserted by default\)
    -   **Post Period**: *02-2026*
    -   **Description**: `Office supplies`
3.  On table toolbar of the **Details** tab, click **Add Row** and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Ext. Cost**: `750`
    -   **Account**: *81000 - Other Expenses*
    -   **Tax Category**: *REVERSEVAT*
4.  On the form toolbar, click **Save**.
5.  Review the **Taxes** tab.

    The applicable taxes with the same tax rate belong to groups of different types \(*GENERALVAT* to the *Input* group and *REVERSEVAT* to the *Output* group\), so the calculated tax amounts offset each other. Thus, the document balance is not changed, and no tax is paid to the vendor. The recorded tax and taxable amounts will be included in the tax report. The *REVERSEVAT* tax will later be paid to the tax authority and the *GENERALVAT* tax can be claimed, if this is allowed.

6.  On the form toolbar, click **Remove Hold** and click **Release** to release the bill.
7.  On the **Financial** tab, click the **Batch Nbr.** link and on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the generated GL transaction. On release of the AP bill, the system generated the following entries:
    -   The Accounts Payable account of the vendor \(*20000*\) is credited in the amount of the bill \(which is equal to the purchase amount\).
    -   The expense account specified in the document line \(*81000*\) is debited in the amount of the line to record the expenses.
    -   The Tax Claimable account specified for the input tax \(*17000*\) is debited in the amount of the input tax \(*GENERALVAT*\).
    -   The Tax Payable account specified for the output tax \(*24100*\) is credited in the amount of the output tax \(*REVERSEVAT*\).

## Step 2: Preparing a Tax Report {#section_pkp_fjv_vxb .section}

To prepare a tax report for the 02-2026 period, do the following:

1.  Open the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Company**: *SWEETLIFE*
    -   **Tax Agency**: *VATVAR*
    -   **Tax Period**: *02-2026* \(selected automatically\)
3.  On the form toolbar, click **Prepare Tax Report**.
4.  On the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form, which opens, review the prepared tax report.

    The calculated reverse VAT amount is equal to the VAT amount on standard-rated acquisitions, so the net tax to be paid or reclaimed has not changed.

5.  On the form toolbar, click **Void Report**.

**Parent topic:**[Applying a Reverse VAT](../UserGuide/Taxes_Applying_Reverse_VAT_Mapref.md)

