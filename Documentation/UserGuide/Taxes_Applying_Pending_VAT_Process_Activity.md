# Applying a Pending VAT: To Apply a Pending VAT to an AR Invoice {#_b6a39a63-d6ca-4ce7-af98-c70aef638ef5 .task}

The following activity will walk you through the processing of documents with pending VAT and recognizing pending VAT on payments.

## Story {#section_l5p_fjv_vxb .section}

Suppose that on February 25, 2026, SweetLife Fruits &amp; Jams issued an invoice for 10 hours of training \($1,750 total\) to Mint Store Inc. Then the customer provided two partial payments for this invoice: $350 on March 1, 2026 and $600 on March 12, 2026. The tax amount calculated on this invoice needs to be recognized on the payment dates, based on the payment amounts.

Acting as a SweetLife accountant, you need to process an AR invoice, prepare and release a tax report for February 2026, create the two partial payments for this invoice, recognize the VAT amounts, and reconcile the balance of the Pending Tax Payable account.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *MINTSTORE* customer has been configured.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *TRAINING* non-stock item has been configured.

## Process Overview {#section_p5p_fjv_vxb .section}

In this activity, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create an AR invoice with a pending VAT. On the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form, you will prepare a tax report for the 02-2026 period and make sure that the pending VAT amount is not shown in the tax report. On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you will create two partial payments for the invoice in the 03-2026 period. On the [Recognize Output VAT](TX_50_30_00.md) \(TX503000\) form, you will recognize the pending output VAT for the 03-2026 and review the generated transactions on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. On the [Prepare Tax Report](TX_50_10_00.md) form, you will prepare a tax report for the 03-2026 tax period and review the pending VAT amount on this report. You will release the tax report on the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form. Finally, you will reconcile the balance of the Pending Tax Payable account by comparing the amounts on the [Account Summary](GL_40_10_00.md) \(GL401000\) form and in the report that you will run on the [VAT Pending Recognition](TX_63_10_00.md) \(TX631000\) form.

## System Preparation {#section_r5p_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date in your system to *2/25/2026*.
3.  On the company and branch selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  As a prerequisite activity, be sure that you have created the *CANADA* tax zone on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).
5.  As a prerequisite activity, be sure that you have configured the *VATVAR* tax agency as described in [Tax Report Configuration: To Create a Tax Report for VAT Variations](../ImplementationGuide/TaxReport_VAT_Variations_Implem_Activity.md).
6.  As a prerequisite activity, be sure that you have configured a tax report on the [Reporting Settings](TX_20_51_00.md) \(TX205100\) form and have added reporting groups to the tax report. For details, see [Tax Report Configuration: To Create a Tax Report for VAT Variations](../ImplementationGuide/TaxReport_VAT_Variations_Implem_Activity.md).
7.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a pending VAT as described in [Value-Added Taxes: To Create a Pending VAT](../ImplementationGuide/Taxes_Configuring_VAT_Implem_Activity_PendingVAT.md).
8.  As a prerequisite activity, be sure that you have specified the *CANADA* tax zone for the *MINTSTORE* customer on the [Customers](AR_30_30_00.md) \(AR303000\) form as described in [Taxable Sales with Freight Charges: Process Activity](Taxes_Processing_SO_Invoice_FreightCharges_Activity.md).

## Step 1: Processing an AR Invoice {#section_t5p_fjv_vxb .section}

To create and release an AR invoice to which the pending VAT is applied, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, create a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the Summary area, specify the following settings:
    -   **Type**: *Invoice*
    -   **Vendor**: *MINTSTORE*
    -   **Date**: *2/25/2026* \(inserted by default\)
    -   **Post Period**: *02-2026*
    -   **Description**: `Training`
3.  On table toolbar of the **Details** tab, click **Add Row** and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *TRAINING*
    -   **Quantity**: `10`
    -   **Unit Price**: `175`
    -   **Tax Category**: *PENDING*
4.  On the form toolbar, click **Save**.
5.  On the **Taxes** tab, review the **Customer Tax Zone** box. The *CANADA* tax zone to which the customer is assigned is specified in the document.
6.  Review the table on the **Taxes** tab.

    The calculated pending VAT is $122.50. This tax amount will be posted to the Pending Tax Payable account on release of the invoice.

7.  On the form toolbar, click **Remove Hold** and click **Release** to release the invoice.
8.  On the **Financial** tab, click the **Batch Nbr.** link and on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the generated GL transaction.

    On release of the invoice, the system generated the following entries:

    -   The Accounts Receivable account of the customer \(*11000*\) is debited in the total amount of the invoice \(the line amount plus the calculated taxes\).
    -   The Sales account of the non-stock item \(*40000*\) is credited in the amount specified in the document line.
    -   The Pending Tax Payable account \(*24200*\) is credited in the calculated tax amount.

## Step 2: Preparing and Releasing a Tax Report for the *02-2026* Period {#section_w5p_fjv_vxb .section}

To prepare and release a tax report for *02-2026*, do the following:

1.  Open the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Company**: *SWEETLIFE*
    -   **Tax Agency**: *VATVAR*
    -   **Tax Period**: *02-2026* \(selected automatically\)
3.  On the form toolbar, click **Prepare Tax Report**.
4.  On the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form, which opens, review the prepared tax report.

    The pending VAT amount has not yet been recognized, and thus is not displayed in the tax report.

5.  On the form toolbar, click **Release** to release the tax report and close the *02-2026* tax period.

    The customer will pay the invoice in the *03-2026* period, so the pending VAT should be recognized in the next month. No more taxable documents need to be processed in this tax period.

6.  On the **AP Documents** tab, click the link in the **Reference Nbr.** column in the only line, and on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, which opens, review the generated document.

    On release of the tax report, the system created a debit adjustment because the Tax Claimable amount exceeds the Tax Payable amount by $21, which has to be returned to SweetLife.


## Step 3: Creating Partial Payments for the Invoice {#section_y5p_fjv_vxb .section}

To create two partial payments for the AR invoice, do the following:

1.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, create a new record.
2.  In the Summary area, specify the following settings:

    -   **Type**: *Payment*
    -   **Customer**: *MINTSTORE*
    -   **Application Date**: *3/1/2026*
    -   **Application Period**: *03-2026*
    -   **Payment Method**: *WIRE*
    -   **Cash Account**: *10200WH*
    -   **Description**: `First payment for training`
    The system automatically loads the documents of the *MINTSTORE* customer on the **Documents to Apply** tab.

3.  In the row for the $1,872.50 invoice that you created in Step 1, enter `350` in the **Amount Paid** column. Remove other loaded documents from the table.
4.  In the Summary area, click the Refresh button near the **Payment Amount** box. The system fills in the box with the **Amount Paid** value.
5.  On the form toolbar, click **Remove Hold** and click **Release** to release the payment.
6.  On the form toolbar, click **Add New Record** to enter the other partial payment.
7.  In the Summary area, specify the following settings:

    -   **Type**: *Payment*
    -   **Customer**: *MINTSTORE*
    -   **Application Date**: *3/12/2026*
    -   **Application Period**: *03-2026*
    -   **Payment Method**: *WIRE*
    -   **Cash Account**: *10200WH*
    -   **Description**: `Second payment for training`
    The system automatically loads the documents of the *MINTSTORE* customer on the **Documents to Apply** tab.

8.  In the row for the invoice that you created in Step 1, which now has the balance of $1,522.50, enter `600` in the **Amount Paid** column. Remove other loaded documents from the table.
9.  In the Summary area, click the Refresh button near the **Payment Amount** box. The system fills in the box with the **Amount Paid** value.
10. On the form toolbar, click **Remove Hold** and click **Release** to release the payment.

## Step 4: Recognizing the Pending Output VAT {#section_cvp_fjv_vxb .section}

To recognize the pending output VAT, do the following:

1.  Open the [Recognize Output VAT](TX_50_30_00.md) \(TX503000\) form.
2.  In the Summary area, specify the following settings:

    -   **Date**: *3/31/2026*
    -   **Company/Branch**: *SWEETLIFE*
    -   **Tax Agency**: *VATVAR*
    The payment applications to invoices subject to pending output VAT with an application date not later than 3/31/2026 are loaded to the form. Both payments applied to the invoice that you have processed earlier are listed on the form. The **Tax Amount** column shows the amounts that can be recognized:

    -   The amount of the first payment applied to the invoice is $350. This amount includes the tax, so the taxable amount is $327.10 and the pending tax amount to be recognized is $22.90.
    -   The amount of the second payment applied to the invoice is $600. This amount includes the tax, so the taxable amount is $560.75 and the pending tax amount to be recognized is $39.25.
3.  Select the unlabeled check box for both lines. The **Total Tax Amount** box in the Summary area shows $62.15 \($22.90 + $39.25\).
4.  On the form toolbar, click **Process** to recognize the taxes for the selected documents.
5.  In the **Processing** dialog box, click the links in the **Batch Number** column and review the generated GL transactions on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    When the pending VAT was recognized, the system generated two GL transactions with the following entries:

    -   The Pending Tax Payable account \(*24200*\) is debited in the recognized tax amount to decrease the pending VAT.
    -   The Tax Payable account \(*24100*\) is credited in the recognized tax amount to increase the tax amount to be paid to the agency.

## Step 5: Preparing and Releasing a Tax Report for the *03-2026* Period {#section_fvp_fjv_vxb .section}

To prepare and release the tax report for the *03-2026* period, do the following:

1.  Open the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form.
2.  In the Summary area, specify the following settings:
    -   **Company**: *SWEETLIFE*
    -   **Tax Agency**: *VATVAR*
    -   **Tax Period**: *03-2026* \(selected automatically\)
3.  On the form toolbar, click **Prepare Tax Report**.
4.  On the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form, which opens, review the prepared tax report.

    The amount of the pending VAT that had been recognized is reported in the *03-2026* period.

5.  Click the link in the *5 - Pending Output VAT* line, and on the [Tax Report Details](TX_50_20_10.md) \(TX502010\) form, review the documents that updated this report line: These are the GL transactions that were generated by the recognition process on the [Recognize Output VAT](TX_50_30_00.md) \(TX503000\) form.

    The **Tran. Date** column shows the payment dates. The **Ref. Nbr.** column shows the reference numbers of the appropriate payments, based on the *VATVAR* tax agency settings.

    **Attention:** Pending taxes are reported in the period in which they are recognized, not in the period when the taxable document was processed. You have reported only part of the invoice tax amount. The rest of the pending VATs will be recognized when any other payment or payments are applied to the invoice.


## Step 6: Reconciling the Balance of the Pending Tax Payable Account {#section_ivp_fjv_vxb .section}

To reconcile the balance of the Pending Tax Payable account in the general ledger and the taxes subledger, do the following:

1.  Open the [Account Summary](GL_40_10_00.md) \(GL401000\) form.
2.  In the Summary area, specify the following settings:

    -   **Company/Branch**: *SWEETLIFE*
    -   **Ledger**: *ACTUAL*
    -   **Period**: *03-2026*
    The Pending Tax Payable account \(*24200*\) has a beginning balance of $122.50 \(this is the total pending VAT amount for the invoice that you have processed\) and an ending balance of $60.35, which is the amount of pending VAT that was not yet recognized.

3.  Open the [VAT Pending Recognition](TX_63_10_00.md) \(TX631000\) form.
4.  On the **Report Parameters** tab, specify the following settings:
    -   **Report Format**: *Output VAT*
    -   **Company/Branch**: *SWEETLIFE*
    -   **Financial Period**: *03-2026*
5.  On the form toolbar, click **Run Report**.

    For the *24200* account, the report displays the only invoice that has an unrecognized output VAT amount \(of $60.35\) at the end of the specified period. At the end of the *03-2026* period, the total amount of unrecognized taxes for the invoices subject to pending output VAT equals the ending balance of the Pending Tax Payable account \(*24200*\) in the general ledger. Thus, the balances for the *03-2026* financial period are reconciled.


**Parent topic:**[Applying a Pending VAT](../UserGuide/Taxes_Applying_Pending_VAT_Mapref.md)

