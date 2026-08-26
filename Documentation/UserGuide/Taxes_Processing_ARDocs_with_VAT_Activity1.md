# AR Documents with VAT: To Process an AR Invoice {#_1878d2fd-425e-4aac-ab2b-4244ffc7aad2 .task}

The following activity will walk you through the processing of an AR invoice with VAT.

## Story {#section_xkl_fjv_vxb .section}

Suppose that in January 2026, SweetLife Fruits &amp; Jams provided 25 hours of video training courses and 10 hours of maintenance services to EasyDiner Co. The video training course is subject to VAT and the maintenance services are VAT-exempt. The needed VAT and VAT exempt taxes have been already created in the system. Acting as a SweetLife accountant, you need to process an AR invoice in the system.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* tax category has been defined.
-   On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, the *CANADA* tax zone has been defined.
-   On the [Taxes](TX_20_50_00.md) \(TX205000\) form, the *VAT* tax has been created and assigned to the *TAXABLE* category and the *CANADA* tax zone.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *EASYDINER* customer account has been defined.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *VIDEOGUIDE* item has been created with *TAXABLE* selected in the **Tax Category** box on the **General** tab. The *MAINTSERV* item has been created with *EXEMPT* selected in the **Tax Category** box.

## Process Overview {#section_all_fjv_vxb .section}

In this activity, you will first update the settings of the customer on the [Customers](AR_30_30_00.md) \(AR303000\) form by specifying a tax zone for the customer. On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create an AR invoice with two lines—with the *TAXABLE* and *EXEMPT* categories. After the release of the invoice, you will review the GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation {#section_cll_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a value added tax as described in [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md).

## Step 1: Updating the Customer's Settings {#section_ell_fjv_vxb .section}

To update the settings of the *EASYDINER* customer, do the following:

1.  Open the [Customers](AR_30_30_00.md) \(AR303000\) form.
2.  In the **Customer ID** box, select *EASYDINER*.
3.  On the **Shipping** tab \(**Tax Settings** section\), select *CANADA* in the **Tax Zone** box.
4.  On the form toolbar, click **Save**.

## Step 2: Creating and Releasing an AR Invoice {#section_gll_fjv_vxb .section}

To create and release an AR invoice, do the following:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  Click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Type**: *Invoice*
    -   **Customer**: *EASYDINER*
    -   **Terms**: *30D* \(inserted by default based on the selected customer\)
    -   **Date**: *1/30/2026* \(the current business date, which is inserted by default\)
    -   **Post Period**: *01-2026* \(inserted by default based on the selected date\)
    -   **Description**: `Video training 25 hours and maintenance 10 hours`
3.  On the **Details** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *VIDEOGUIDE*
    -   **Transaction Descr.**: *Video Training Course* \(inserted automatically\)
    -   **Quantity**: `25`
    -   **Unit Price**: `150`
    -   **Tax Category**: *TAXABLE* \(inserted by default\)
4.  Click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *MAINTSERV*
    -   **Transaction Descr.**: *Juicer maintenance service* \(inserted automatically\)
    -   **Quantity**: `10`
    -   **Unit Price**: `100`
    -   **Tax Category**: *EXEMPT* \(inserted by default\)
5.  On the form toolbar, click **Save**.
6.  On the **Taxes** tab, review the taxes that have been applied to the invoice.

    The taxes have been applied to the invoice according to the following rules:

    -   The *VAT* tax, which is assigned to both the *TAXABLE* tax category and the *CANADA* tax zone, is applied to the *VIDEOGUIDE* invoice line.
    -   The *VATEXEMPT* tax, which is assigned to both the *EXEMPT* tax category and the *CANADA* tax zone, is applied to the *MAINTSERV* invoice line.
    The taxable amount is $3,750 \(also shown in the **Taxable Total** box\), and the tax-exempt amount is $1,000 \(also shown in the **Tax Exempt Total** box\). The total tax calculated for the invoice is $262.50 \(**Tax Total** in the Summary area\).

7.  On the form toolbar, click **Remove Hold** and click **Release** to release the invoice.

## Step 3: Reviewing a GL Transaction {#section_jll_fjv_vxb .section}

To review the GL transaction generated by the system, do the following:

1.  While you are still reviewing the invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, open the **Financial** tab.
2.  Click the **Batch Nbr.** link and review the GL transaction that opens on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    On release of the invoice, the system generated the following entries:

    -   The Accounts Receivable account of the customer \(*11000*\) is debited in the total amount of the invoice \(the total of all lines plus the total of the calculated taxes\).
    -   The Sales account of the non-stock items \(*40000*\) is credited in the amount specified in the document lines.
    -   The Tax Payable account specified for the tax \(*24100*\) is credited in the calculated tax amount to record the amount to be paid to the tax agency.

**Parent topic:**[Processing AR Documents with Value-Added Taxes](../UserGuide/Taxes_Processing_ARDocs_with_VAT_Mapref.md)

