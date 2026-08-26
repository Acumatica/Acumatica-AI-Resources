# VAT for Early Payments: To Process a Payment with a Cash Discount {#_f61fdb59-0bba-41e1-b4a9-71a01f2e8cb1 .task}

The following activity will walk you through the process of adjusting VAT for AR invoices paid within the cash discount period.

## Story {#section_uzm_fjv_vxb .section}

Suppose that SweetLife Fruits &amp; Jams provided four hours of training to Lake Cafe on January 15, 2026. On 1/17/2026, Lake Cafe paid the invoice in full and received a cash discount. Acting as a SweetLife accountant, you need to record an AR invoice, process a payment with a cash discount, and generate a VAT credit memo.

## Configuration Overview {#section_wzm_fjv_vxb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* tax category has been configured.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *LAKECAFE* vendor account has been configured.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *TRAINING* non-stock item has been configured.
-   On the [Credit Terms](CS_20_65_00.md) \(CS206500\) form, the *310N30* credit terms have been configured.

## Process Overview {#section_yzm_fjv_vxb .section}

In this activity, you will first update the settings of the VAT tax on the [Taxes](TX_20_50_00.md) \(TX205000\) form and the review the settings of the TAXABLE tax category on the [Tax Categories](TX_20_55_00.md) \(TX205500\) form. You will update the settings of the *LAKECAFE* customer on the [Customers](AR_30_30_00.md) \(AR303000\) form and AR preferences on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. On the [Companies](CS_10_15_00.md) \(CS101500\) form, you will update the settings of the *SWEETLIFE* company. On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create an AR invoice for the customer, with VAT applied to the invoice. On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) for, you will create a payment for this invoice with a cash discount taken by the customer. On the [Generate AR Tax Adjustments](AR_50_45_00.md) \(AR504500\) form, you will create a VAT credit memo to adjust the amount of the output VAT.

## System Preparation {#section_a1n_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date in your system to *1/15/2026*.
3.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured the *VATTAX* tax agency as described in [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).
5.  As a prerequisite activity, be sure that you have created the *CANADA* tax zone on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).
6.  As a prerequisite activity, be sure you have configured VAT on the [Taxes](TX_20_50_00.md) \(TX205000\) form as described in [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md).

## Step 1: Updating the Settings of VAT {#section_c1n_fjv_vxb .section}

To update the settings of the VAT, do the following:

1.  Open the [Taxes](TX_20_50_00.md) \(TX205000\) form.
2.  In the **Tax ID** box, select *VAT*.
3.  In the **Cash Discount** box, select *Reduces Taxable Amount on Early Payment*.
4.  On the form toolbar, click **Save**.

## Step 2: Reviewing the Tax Category {#section_e1n_fjv_vxb .section}

To review the settings of the *TAXABLE* tax category, do the following:

1.  Open the [Tax Categories](TX_20_55_00.md) \(TX205500\) form.
2.  In the **Tax Category ID** box, select *TAXABLE*.
3.  In the table, make sure that *VAT* is selected in the **Tax ID** column.

## Step 3: Updating the Customer's Settings {#section_g1n_fjv_vxb .section}

To update the customer's settings, do the following:

1.  Open the [Customers](AR_30_30_00.md) \(AR303000\) form.
2.  In the **Customer ID** box, select *LAKECAFE*.
3.  On the **Financial** tab, select *310N30* in the **Terms** box.
4.  On the **Shipping** tab, select *CANADA* in the **Tax Zone** box.
5.  On the form toolbar, click **Save**.

## Step 4: Updating the Accounts Receivable Preferences {#section_i1n_fjv_vxb .section}

To update the accounts receivable preferences, do the following:

1.  Open the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
2.  On the **General** tab \(**VAT Recalculation Settings** section\), specify the following settings:
    -   **Automatically Release Tax Adjustments**: Selected

        If this check box is selected, all generated credit memos will be released automatically.

    -   **Tax Adjustment Description**: `Tax adjusted for early payment`

        This description will be specified in the credit memos generated for adjusting taxes on early payments.

3.  On the form toolbar, click **Save**.

## Step 5: Updating the Company Settings { .section}

To make the system apply cash discounts to the total amount of documents, you need to update the company settings. To update the settings of *SWEETLIFE*, do the following:

1.  On the [Companies](CS_10_15_00.md) \(CS101500\) form, open the *SWEETLIFE* company.
2.  On the **Company Details** tab, select *Document Amount* in the **Cash Discount Base** box.
3.  On the form toolbar, click **Save**.

## Step 6: Creating an AR Invoice {#section_m1n_fjv_vxb .section}

To create an AR invoice, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Invoice*
    -   **Customer**: *LAKECAFE*
    -   **Date**: *1/15/2026* \(inserted by default\)
    -   **Description**: `Training (4 hours)`
3.  On the table toolbar of the **Details** tab, click **Add Row** and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *TRAINING*
    -   **Quantity**: `4`
    -   **Unit Price**: `175`
    -   **Tax Category**: *TAXABLE*
4.  Review the **Taxes** tab.

    The tax is applied to the full **Detail Total** amount. That is, the taxable amount of the invoice is $700, and the calculated tax is $49.

5.  Review the **Tax Totals** section on the **Taxes** tab.

    If the invoice is paid within the cash discount period \(10 days\), the discounted taxable total for the document will be $679. The tax calculated on this amount is $47.53. The document total with taxes will be $726.53.

6.  On the form toolbar, click **Remove Hold** and click **Release** to release the invoice.
7.  On the **Financial** tab, click the **Batch Nbr.** link and review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. On release of the AR invoice, the system generated the following entries:
    -   The Accounts Receivable account of the customer \(*11000*\) is debited in the total amount of the invoice \(the total of all lines plus the total of the calculated taxes\).
    -   The Sales account of the non-stock item \(*40000*\) is credited in the amount specified in the document line.
    -   The Tax Payable account \(*24100*\) is credited in the calculated tax amount.

        Notice that the tax amount to be paid to the tax agency is calculated based on the undiscounted price of the services because the company's accountant does not know whether the discount will be taken on this particular invoice.


## Step 7: Creating a Payment for the Invoice {#section_p1n_fjv_vxb .section}

To create an AR payment for the invoice within the cash discount period, do the following:

1.  While you are still on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form with the invoice opened, on the form toolbar, click **Pay**.
2.  The system creates a payment and opens it on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.
3.  In the Summary area, specify the following settings:
    -   **Application Date**: *1/17/2026*
    -   **Description**: `Payment with discount`
4.  On the **Documents to Apply** tab, notice that the system has applied the invoice with the following settings:

    -   **Doc. Type**: *Invoice*
    -   **Reference Nbr.**: The reference number of the invoice that you created in Step 6
    The payment is within the cash discount period, so the **Cash Discount Taken** column shows the cash discount amount that will be taken by the customer for this invoice \($22.47\).

5.  On the form toolbar, click **Remove Hold** and click **Release** to release the payment.
6.  In the table on the **Application History** tab, click the column header of the first column to open the Column Configuration dialog box. In the dialog box, select the **Subject to Tax Adjustment** and **Tax Adjustment** check boxes to add these columns to the table and click **OK**.
7.  Review the only line in the table.

    The selected check box in the **Subject to Tax Adjustment** column means that the invoice specified in this line is subject to VAT adjustment, but the credit memo has not yet been generated for the invoice, so the **Tax Adjustment** column is empty.

8.  Click the link in the **Batch Number** column and review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens.

    On release of the payment, the system generated the following entries:

    -   The Checking account of the company \(*10200*\) is debited in the amount of the payment received from the customer.
    -   The Accounts Receivable account of the customer \(*11000*\) is credited in the payment amount \(the invoice total minus the discount given\). The customer balance will be decreased in the discount amount later, when the VAT credit memo is processed.
9.  On the **Application History** tab of the [Payments and Applications](AR_30_20_00.md) form, click the link in the **Reference Nbr.** column and on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, review the invoice to which the payment has been applied.

    The open balance of the invoice is still $22.47, which is the discount amount taken by the customer. Because the amount of the customer payment for the invoice is less than the full invoice amount, for which the VAT had been calculated and posted, you need to adjust the taxable and tax amounts to reflect the actual payment amount received for the services.


## Step 8: Creating a VAT Tax Adjustment {#section_u1n_fjv_vxb .section}

To create a VAT tax adjustment, do the following:

1.  Open the [Generate AR Tax Adjustments](AR_50_45_00.md) \(AR504500\) form.
2.  In the Summary area, specify the following settings:

    -   **Date**: *1/31/2026*
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    In the table, the system loads the invoice that you created in Step 6.

3.  In the table, select the unlabeled check box in the only row, and on the form toolbar, click **Process**.
4.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form and open the invoice that you created in Step 6.
5.  In the Summary area, review the invoice balance and on the **Applications** tab, review the list of documents applied to the invoice.

    The invoice balance is now $0. The adjusting credit memo in the amount of $22.47 was automatically applied to the invoice and closed, because the **Automatically Release Tax Adjustments** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

6.  In the **Type** box of the Summary area, select *Credit Memo* and open the adjusting credit memo.
7.  Review the credit memo summary and the **Financial** tab.

    In the generated credit memo, the **Taxable Total** on the **Taxes** tab is $21. The tax calculated on this amount is $1.47, which is shown in the **Tax Total** box. This is the difference between the full tax amount posted on the release of the invoice \($49\) and the tax amount calculated on the discounted invoice amount \($47.53\), which is shown on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form for the invoice.

8.  On the **Financial** tab, click the **Batch Nbr.** link and on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the generated GL transaction.

    On release of the credit memo, the system generated the following entries:

    -   The Accounts Receivable account of the customer \(*11000*\) is credited in the amount of the given discount, to close the invoice.
    -   The Cash Discount account \(*52600*\) is debited in the discount amount that is calculated on the invoice amount before the taxes are applied \($21 = $700 \* 3%\).
    -   To decrease the accumulated output tax, the Tax Payable account \(*24100*\) is debited in the amount of the difference between the full tax amount posted on the release of the invoice and the tax calculated on the discounted amount \($1.47 = $49 – $47.53\).
9.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, open the payment that you have applied to the invoice.
10. Review the **Application History** tab.

    The **Tax Adjustment** column now shows the reference number of the adjusting credit memo that was generated for the payment application.


**Parent topic:**[Adjusting VAT for Early Payments](../UserGuide/Taxes_Adjusting_VAT_Early_Payments_Mapref.md)

