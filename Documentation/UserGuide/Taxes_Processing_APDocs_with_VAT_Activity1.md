# AP Documents with VAT: To Process an AP Bill {#_f81f38db-1c4f-44b7-8cf9-778850ebef24 .task}

The following activity will walk you through the process of processing an AP bill with VAT.

## Story {#section_fsl_fjv_vxb .section}

Suppose that on January 30, 2026, SweetLife Fruits &amp; Jams received three hours of advertising and one hour of billboard installation services from MapleLeaf Ads Co. The advertising services are subject to VAT and the installation services are VAT-exempt. The needed VAT and VAT exempt taxes have been already created in the system. Acting as a SweetLife accountant, you need to process an AP bill in the system.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* tax category has been configured.
-   On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, the *CANADA* tax zone has been configured.
-   On the [Taxes](TX_20_50_00.md) \(TX205000\) form, the *VAT* tax has been configured and assigned to the *TAXABLE* category and the *CANADA* tax zone.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *MAPLELEAF* vendor account has been configured.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, for the *ADVERT* item, the *TAXABLE* category has been selected in the **Tax Category** box on the **General** tab. For the *BILLBINSTA* item, the *EXEMPT* category has been selected in the **Tax Category** box.

## Process Overview {#section_isl_fjv_vxb .section}

In this activity, you will first update the settings of the vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form by specifying a tax zone for the vendor. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will create an AP bill with two lines—with the *TAXABLE* and *EXEMPT* categories. After the release of the bill, you will review the GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation {#section_ksl_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  As a prerequisite activity, be sure you have assigned the *TAXABLE* tax category to the *ADVERT* non-stock item as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).
5.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a value added tax as described in [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md).

## Step 1: Updating the Vendor's Settings {#section_msl_fjv_vxb .section}

To update the settings of the *MAPLELEAF* vendor, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *MAPLELEAF*.
3.  On the **Purchase Settings** tab \(**Tax Settings** section\), select *CANADA* in the **Tax Zone** box.
4.  On the form toolbar, click **Save**.

## Step 2: Creating and Releasing an AP Bill {#section_osl_fjv_vxb .section}

To create and release an AP bill, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Vendor**: *MAPLELEAF*
    -   **Date**: *1/30/2026* \(inserted by default\)
    -   **Post Period**: *01-2026*
    -   **Description**: `Advertisement 3 hours and support 1 hour`
4.  On table toolbar of the **Details** tab, click **Add Row** and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *ADVERT*
    -   **Quantity**: `3`
    -   **Unit Cost**: `150`
    -   **Tax Category**: *TAXABLE* \(inserted by default\)
5.  Click **Add Row** again and specify the following settings for the second row:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBINSTA*
    -   **Quantity**: `1`
    -   **Unit Cost**: `100`
    -   **Tax Category**: *EXEMPT* \(inserted by default\)
6.  On the form toolbar, click **Save**.
7.  On the **Taxes** tab, review the taxes that have been applied to the bill.

    The *CANADA* tax zone, which is specified as the **Tax Zone** of the vendor, includes the *VAT* and *VATEXEMPT* taxes. The *ADVERT* item belongs to the *TAXABLE* tax category, which contains the *VAT* tax. Therefore, the *VAT* tax, which is assigned to both the tax category and the tax zone, is applied to the *ADVERT* document line.

    The *VATEXEMPT* tax does not belong to the *TAXABLE* category, so it is not applied to the *ADVERT* document line. Similarly, the *VATEXEMPT* tax, which is assigned to both the *EXEMPT* tax category and the *CANADA* tax zone, is applied to the *BILLBINSTA* document line. The *VAT* tax does not belong to the *EXEMPT* category, so it is not applied to the *BILLBINSTA* document line. The taxable amount is $450.00 \(**VAT Taxable** on the **Financial** tab\), and the tax-exempt amount is $100.00 \(**VAT Exempt** on the **Financial** tab\). The total tax calculated for the bill is $31.50 \(**Tax Total** in the Summary area\).

8.  On the form toolbar, click **Remove Hold** and click **Release** to release the bill.

## Step 3: Reviewing the GL Transaction {#section_tsl_fjv_vxb .section}

To review the GL transaction generated by the system, do the following:

1.  While you are still reviewing the bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, open the **Financial** tab.
2.  Click the **Batch Nbr.** link and review the GL transaction that opens on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    On release of the bill, the system generated the following entries:

    -   The Accounts Payable account of the vendor \(*20000*\) is credited in the total amount of the bill.
    -   The Expense accounts of the non-stock items \(*61000*\) are debited in the appropriate line amounts.
    -   The Tax Claimable account of the tax \(*17000*\) is debited in the amount of the calculated taxes to record the amount to be claimed from the tax agency.

**Parent topic:**[Processing AP Documents with Value-Added Taxes](../UserGuide/Taxes_Processing_APDocs_with_VAT_Mapref.md)

