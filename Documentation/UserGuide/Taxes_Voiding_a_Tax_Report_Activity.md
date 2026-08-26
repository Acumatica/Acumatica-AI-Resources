# Voiding of a Sales Tax Report: Process Activity {#_d54e9d34-0e7f-4a3d-9e84-fe114790c378 .task}

The following activity will walk you through the process of voiding a tax report and creating a document that was missing in the system, so that the tax report can be prepared again.

## Story {#section_hrn_fjv_vxb .section}

Suppose that while reviewing the prepared tax report \(which you had not yet released\), you realize that the report is missing one invoice for Morning Cafe, which has to be dated February 28, 2026.

To report its tax amount, acting as a SweetLife accountant, you need to void the tax report, process the needed invoice, and again prepare the tax report.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* and *EXEMPT* tax categories have been configured.
-   On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, the *NYSTATE* tax zone has been configured.
-   On the [Taxes](TX_20_50_00.md) \(TX205000\) form, the *NY State Tax* has been configured and assigned to the *TAXABLE* category. The *New York Exempt* tax has been configured and assigned to the *EXEMPT* category.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *NYTAXDEP* vendor has been configured as a tax agency.
-   On the [Reporting Settings](TX_20_51_00.md) \(TX205100\) form, a tax report has been configured for the *NYTAXDEP* tax agency.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *MORNINGCAF* customer account has been configured, and the *NYSTATE* tax zone has been added for the customer on the **Shipping** tab of this form.

## Process Overview {#section_lrn_fjv_vxb .section}

In this activity, on the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form, you will void the tax report that has been prepared for *02-2026* but has not been released. On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create and release an AR invoice that should update the tax report. You then prepare the tax report for the *02-2026* period again on the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form.

## System Preparation {#section_nrn_fjv_vxb .section}

Before you begin to void the tax report, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *2/28/2026*. If a different date is displayed, click the Business Date menu button and select *2/28/2026*. For simplicity, in this process activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  As a prerequisite activity, prepare a tax report, as described in [Tax Report Preparation: Process Activity](Taxes_Preparing_a_Tax_Report_Activity.md).

## Step 1: Updating the Tax Zone {#section_prn_fjv_vxb .section}

For the purposes of this and the following lessons, you need the *NYSTATETAX* and *NYNOTAX* taxes. As you earlier removed them from the *NYSTATE* tax zone, you need to set them up for this tax zone once again. To do it, proceed as follows:

1.  Open the [Tax Zones](TX_20_60_00.md) \(TX206000\) form.
2.  In the **Tax Zone ID** box, select *NYSTATE*.
3.  On the **Applicable Taxes** tab, remove *NYINCTAX* from the table as you no longer need it.
4.  Click **Add Row** and add the *NYSTATETAX* tax.
5.  Click **Add Row** again and add a row with the *NYNOTAX* tax.
6.  On the form toolbar, click **Save** to save your changes.

## Step 2: Voiding the Tax Report {#section_rrn_fjv_vxb .section}

To void the tax report, proceed as follows:

1.  Open the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form.
2.  Select the report with the following settings:
    -   **Company**: *SWEETLIFE* \(inserted by default\)
    -   **Tax Agency**: *NYTAXDEP*
    -   **Tax Period**: *02-2026*
3.  On the form toolbar, click **Void Report**.

    The system voids the prepared tax report for the *02-2026* period, so that the tax period becomes open again, and the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form opens. \(If necessary, you can review the status of the tax period in the **Status** column on the [Tax Periods](TX_20_70_00.md) \(TX207000\) form.\)


## Step 3: Creating an Invoice with a Sales Tax {#section_urn_fjv_vxb .section}

To create a taxable AR invoice to be included in the tax report, proceed as follows:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record** and specify the following settings in the Summary area:
    -   **Type**: *Invoice*
    -   **Customer**: *MORNINGCAF*
    -   **Date**: *2/28/2026* \(inserted by default\)
    -   **Post Period**: *02-2026* \(inserted by default\)
    -   **Description**: `Online training`
3.  On the **Details** tab, click **Add Row** and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Online training`
    -   **Ext. Price**: `120`
    -   **Tax Category**: *TAXABLE*
4.  On the form toolbar, click **Remove Hold** to give the invoice the *Balanced* status and then click **Release** to release the invoice.
5.  Review the **Taxes** tab. Notice that the *NYSTATETAX* has been applied to the invoice.

## Step 4: Preparing the Tax Report Again {#section_wrn_fjv_vxb .section}

To prepare the tax report again, proceed as follows:

1.  Open the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form.
2.  In the Summary area, specify the following settings:

    -   **Company**: *SWEETLIFE*
    -   **Tax Agency**: *NYTAXDEP*
    Notice that the report amounts have been updated by the invoice.

3.  On the form toolbar, click **Prepare Tax Report** to again prepare the report for the *02-2026* period.

    The *02-2026* tax period is again assigned the *Prepared* status, and the system opens the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form with the prepared report. \(If necessary, you can review the tax period status in the **Status** column on the [Tax Periods](TX_20_70_00.md) \(TX207000\) form.\)

4.  While you are viewing the report on this form, click the link in the **Amount** column of the *Tax Total* row to review the documents that updated this line in *02-2026*. The invoice to Morning Cafe that you created in Step 3 is now shown in the table.

**Parent topic:**[Voiding a Tax Report for Sales Taxes](../UserGuide/Taxes_Voiding_a_Tax_Report_Mapref.md)

