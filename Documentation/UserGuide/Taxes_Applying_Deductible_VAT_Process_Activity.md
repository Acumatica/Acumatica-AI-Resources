# Applying Deductible VAT: Process Activity {#_193f6f5b-cf0e-474a-ab95-a348342005b9 .task}

The following activity will walk you through the process of partially deducting VAT amount.

## Story {#section_scp_fjv_vxb .section}

Suppose that on February 1, 2026, SweetLife Fruits &amp; Jams purchased office supplies to be used in the company's office. Further suppose that the company is allowed to deduct 40% of the taxes paid on these kinds of purchases from the tax amount paid to the tax authority. Acting as a SweetLife accountant, you need to process an AP bill and prepare a tax report for the 02-2026 period.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *CARTRIDGE* vendor has been configured.

## Process Overview {#section_vcp_fjv_vxb .section}

In this activity, on the [Vendors](AP_30_30_00.md) \(AP303000\) form, you will update the vendor's tax zone. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will process an AP bill with a partially deductible VAT applied to it. Finally, on the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form, you will prepare a tax report for the 02-2026 period and review the prepared report on the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form.

## System Preparation {#section_xcp_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date in your system to *2/1/2026*.
3.  On the company and branch selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  As a prerequisite activity, be sure that you have created the *CANADA* tax zone on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).
5.  As a prerequisite activity, be sure that you have configured the *VATVAR* tax agency as described in [Tax Report Configuration: To Create a Tax Report for VAT Variations](../ImplementationGuide/TaxReport_VAT_Variations_Implem_Activity.md).
6.  As a prerequisite activity, be sure that you have configured a tax report on the [Reporting Settings](TX_20_51_00.md) \(TX205100\) form and have added reporting groups to the tax report. For details, see [Tax Report Configuration: To Create a Tax Report for VAT Variations](../ImplementationGuide/TaxReport_VAT_Variations_Implem_Activity.md).
7.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a partially deductible VAT as described in [Value-Added Taxes: To Create a Partially Deductible VAT](../ImplementationGuide/Taxes_Configuring_VAT_Implem_Activity_PartiallyDeductibleVAT.md).

## Step 1: Updating the Vendor's Tax Zone {#section_zcp_fjv_vxb .section}

To update the tax zone of the *CARTRIDGE* vendor, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *CARTRIDGE*.
3.  On the **Purchase Settings** tab, select *CANADA* in the **Tax Zone** box.
4.  On the form toolbar, click **Save**.

## Step 2: Processing an AP Bill {#section_bdp_fjv_vxb .section}

To process an AP bill with a partially deductible VAT applied, do the following:

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
    -   **Ext. Cost**: `350`
    -   **Account**: *81000 - Other Expenses*
    -   **Tax Category**: *DEDUCTIBLE*
4.  On the form toolbar, click **Save**.
5.  On the **Taxes** tab, review the **Vendor Tax Zone** box, which contains *CANADA*.
6.  Review the **Taxes** tab.

    The total tax amount calculated by the specified tax rate is $52.50 \($350 \* 0.15\). The **Tax Amount** of $21, which is 40% of the **Tax Total**, is to be claimed from the tax agency. The **Expense Amount** of $31.50 is the non-deductible part of the VAT that is posted to the Tax Expense account.

7.  On the form toolbar, click **Remove Hold** and click **Release** to release the bill.
8.  On the **Financial** tab, click the **Batch Nbr.** link and on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the generated GL transaction. On release of the AP bill, the system generated the following entries:
    -   The Accounts Payable account of the vendor \(*20000*\) is credited in the total amount of the bill \(line amount plus the calculated tax total\).
    -   The expense account specified in the document line \(*81000*\) is debited in the amount of the purchase.
    -   The Tax Claimable account specified for the tax \(*17000*\) is debited in the calculated deductible amount that will be claimed from the tax agency.
    -   The Tax Expense account specified for the tax \(*65100*\) is debited in the tax expense amount \(the total tax amount minus the deductible part\) to record the non-deductible part of the VAT.

## Step 3: Preparing a Tax Report {#section_edp_fjv_vxb .section}

To prepare a tax report for the 02-2026 period, do the following:

1.  Open the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Company**: *SWEETLIFE*
    -   **Tax Agency**: *VATVAR*
    -   **Tax Period**: *02-2026* \(selected automatically\)
3.  On the form toolbar, click **Prepare Tax Report**.
4.  On the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form, which opens, review the prepared tax report.

    The *Deductible VAT* report line shows the tax amount of $21. This amount should be claimed from the tax agency, so it is included in the *Net Tax to Pay or Reclaim* line with a negative sign. Notice that the non-deductible part of the tax is not included in the tax report, because it is already processed as company expenses.

5.  On the form toolbar, click **Void Report**.

**Parent topic:**[Applying a Deductible VAT](../UserGuide/Taxes_Applying_Deductible_VAT_Mapref.md)

