# Tax Report Preparation: Process Activity {#_f9a7f397-a429-443f-a09e-b4bf10c1e8a5 .task}

The following activity will walk you through the process of preparing a sales tax report.

## Story {#section_rkn_fjv_vxb .section}

Suppose that you, as an accountant of SweetLife Fruits &amp; Jams, have to prepare and review a tax report for the *02-2026* tax period, and you will later release the report.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* and *EXEMPT* tax categories have been configured.
-   On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, the *NYSTATE* tax zone has been configured.
-   On the [Taxes](TX_20_50_00.md) \(TX205000\) form, the *NY State Tax* has been configured and assigned to the *TAXABLE* category. The *New York Exempt* tax has been configured and assigned to the *EXEMPT* category.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *NYTAXDEP* vendor has been configured as a tax agency.
-   On the [Reporting Settings](TX_20_51_00.md) \(TX205100\) form, a tax report has been configured for the *NYTAXDEP* tax agency.

## Process Overview {#section_ukn_fjv_vxb .section}

In this activity, on the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form, you will prepare a tax report for the specified company and tax agency. On the [Tax Report Details](TX_50_20_10.md) \(TX502010\) form, you will then review the documents included in the tax report.

## System Preparation {#section_wkn_fjv_vxb .section}

Before you begin to prepare a tax report, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *2/28/2026*. If a different date is displayed, click the Business Date menu button and select *2/28/2026*. For simplicity, in this process activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Preparing a Tax Report {#section_ykn_fjv_vxb .section}

To prepare a tax report, proceed as follows:

1.  Open the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form.
2.  In the Summary area, specify the following settings:

    -   **Company**: *SWEETLIFE*
    -   **Tax Agency**: *NYTAXDEP*
    The table displays the report lines you have configured earlier, and the amounts accumulated for each report line in the current tax period \(*02-2026*\).

    The system displays a warning next to the **Tax Period** box that one or more tax transactions from the previous periods will be reported in the current period. This can happen if you create a taxable document with a document date that belongs to a closed tax period. The taxes calculated for the document will be included in the tax report for the current period because the tax agency to which you are reporting taxes has the **Update Closed Tax Period** check box cleared on the **Tax Agency Settings** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

3.  On the form toolbar, click **Prepare Tax Report**.

    The *02-2026* tax period is assigned the *Prepared* status. \(If necessary, you can review it in the **Status** column on the [Tax Periods](TX_20_70_00.md) \(TX207000\) form\). The system opens the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form with the prepared report. Before you release the report, you will review the documents that relate to different lines in this tax report.


## Step 2: Reviewing the Documents in the Report Lines {#section_dln_fjv_vxb .section}

To review the documents included in the report lines, proceed as follows:

1.  While you are still viewing the report on the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form, click the link in the **Amount** column of the *Taxable Sales* row to review the amounts that have been included in this line.

    The [Tax Report Details](TX_50_20_10.md) \(TX502010\) form opens.

2.  On this form, review the documents shown in the table.

    This tax report shows the documents of the SweetLife company, including taxable amounts and tax amounts. On the form, you can see the taxable sale documents of the SweetLife company included in the tax report for February 2026. For each document, you can review the tax and taxable amounts.


You will not release this report at this time.

**Parent topic:**[Preparing a Tax Report for Sales Taxes](../UserGuide/Taxes_Preparing_a_Tax_Report_Mapref.md)

