# Invoices with Sales Taxes: To Process an AR Invoice with a Cash Discount {#_01f7c0d4-e146-4141-bee6-a53fe7eff69b .task}

The following activity will walk you through the process of creating and releasing an AR invoice with a cash discount and a sales tax.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that on February 10, 2026, SweetLife Fruits &amp; Jams provided support services to the Morning Cafe customer in the amount of $1,000 and issued an invoice. The invoice amount is $1,000 plus the sales tax \($88.75\). The credit terms of the invoice give the customer a 3% discount if the customer pays the invoice within 10 days.

On February 14, 2026, Morning Cafe paid the invoice and took the 3% cash discount.

Acting as a SweetLife accountant, you need to create and release the invoice, applying the cash discount to the taxable amount of the document and making sure that the tax amount is not affected by the cash discount. Finally, you have to create the payment for the invoice.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* tax category has been defined.
-   On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, the *NYSTATE* tax zone has been created.
-   On the [Taxes](TX_20_50_00.md) \(TX205000\) form, the *NY State Tax* has been defined and assigned to the *TAXABLE* category and the *NYSTATE* tax zone.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *MORNINGCAF* customer account has been created, and the *NYSTATE* tax zone has been specified for the customer on the **Shipping** tab of this form.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *NYTAXDEP* vendor has been created and defined as a tax agency.
-   On the [Credit Terms](CS_20_65_00.md) \(CS206500\) form, *310N30* has been defined.
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, for the *SWEETLIFE* company, *Document Amount* has been selected in the **Cash Discount Base** box \(**Configuration Settings** section\) on the **Company Details** tab.

## Process Overview { .section}

In this activity, you will update the company settings on the [Companies](CS_10_15_00.md) \(CS101500\) form. On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create and release an invoice with a cash discount. On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, you will review the GL transaction generated on release of the invoice. On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you will pay the invoice within the cash discount period. Finally, on the [Journal Transactions](GL_30_10_00.md) form, you will review the GL transaction generated on release of the payment.

## System Preparation {#section_d23_fjv_vxb .section}

Before you begin to work with a taxable AR invoice with a cash discount, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button, and select *2/10/2026*.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Updating the Company Settings { .section}

To make the system apply cash discounts to the taxable amount of documents, you need to update the company settings. To update the settings of *SWEETLIFE*, do the following:

1.  On the [Companies](CS_10_15_00.md) \(CS101500\) form, open the *SWEETLIFE* company.
2.  On the **Company Details** tab, select *Document Amount Less Taxes* in the **Cash Discount Base** box.
3.  On the form toolbar, click **Save**.

## Step 2: Creating and Releasing an Invoice with a Cash Discount { .section}

To create and release an AR invoice with a cash discount and a sales tax applied to it, proceed as follows:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, create a new record.
2.  Specify the following settings in the Summary area:
    -   **Type**: *Invoice*
    -   **Customer**: *MORNINGCAF*
    -   **Terms**: *310N30*

        These credit terms indicate that if the invoice is paid within 10 days, the customer will receive a 3% cash discount. If the invoice is paid within 30 days, the customer will pay the full amount.

    -   **Date**: *2/10/2026* \(the current business date, which is inserted by default\)
    -   **Post Period**: *02-2026* \(inserted by default based on the selected date\)
    -   **Description**: `Support services`
3.  On the **Details** tab, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Support services`
    -   **Ext. Price**: `1000`
    -   **Tax Category**: *TAXABLE*
4.  On the form toolbar, click **Save**.
5.  On the **Taxes** tab, review the tax that has been applied to the invoice.

    The tax category specified for the invoice line is *TAXABLE*, so a 8.875% sales tax has been applied to the invoice line. The taxable amount is $1,000 and the calculated total tax is $88.75.

6.  In the Summary area, review the invoice amounts.

    The **Detail Total** of the invoice is $1,000. This is the amount of the provided services. The total invoice amount is $1,088.75, the tax total is $88.75, and the calculated cash discount on the taxable amount of the document is $30.

    **Attention:** If on the [Companies](CS_10_15_00.md) \(CS101500\) form, *Document Amount* had been selected in the **Cash Discount Base** box on the **Company Details** tab, the cash discount amount would be calculated as follows:

    -   **Detail Total**: 1,000
    -   **Tax Total**: 88.75
    -   **Cash Discount**: 32.66, which is calculated as the total document amount \(the total of all lines plus the sales tax\) multiplied by the cash discount percent—1,088.75 \* 3%
7.  On the form toolbar, click **Remove Hold**, and then click **Release** to release the invoice.

## Step 3: Reviewing the GL Transaction Generated on Invoice Release { .section}

To review the GL transaction that was generated when the system released the invoice, proceed as follows:

1.  While you are still viewing the AR invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, on the **Financial** tab, click the **Batch Nbr.** link.
2.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which is opened, review the transaction that was generated on release of the invoice as follows:
    -   The Accounts Receivable account of the customer \(*11000*\) is debited in the total amount of the invoice—the total of all lines plus the total of the calculated taxes \($1,088.75 = $1,000 + $88.75\).
    -   The Sales Revenue account \(*40000*\) is credited in the amount specified in the document line \($1,000\).
    -   The Tax Payable account specified for the tax \(*24100*\) is credited in the calculated tax amount \($88.75\).

## Step 4: Paying the Taxable Invoice with the Cash Discount { .section}

To create a payment for the taxable invoice with the cash discount, do the following:

1.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button, and select *2/14/2026*.
2.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, open the invoice that you created and released in Step 2.
3.  On the form toolbar, click **Pay**.
4.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which is opened, review the settings of the created document.

    The **Payment Amount** is $1,058.75, which is the total document amount minus the cash discount \($1,088.75 – $30\).

    **Attention:** If on the [Companies](CS_10_15_00.md) \(CS101500\) form, *Document Amount* had been selected in the **Cash Discount Base** box on the **Company Details** tab, the amount of the payment within the cash discount period would be $ 1,056.09 \($1,088.75 – $32.66\).

5.  On the form toolbar, click **Remove Hold**, and then click **Release** to release the payment.

## Step 5: Reviewing the GL Transaction Generated on Payment Release { .section}

To review the GL transaction that was generated when the system released the payment, proceed as follows:

1.  While you are still viewing the payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, on the **Financial** tab, click the **Batch Nbr.** link.
2.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which is opened, review the transaction that was generated on release of the payment as follows:
    -   The Checking account of the company \(*10200*\) is debited in the total amount of the invoice minus the cash discount amount \($1,058.75 = $1,088.75 – $30\).
    -   The Accounts Receivable account of the customer \(*11000*\) is credited in the total amount of the invoice—the total of all lines plus the total of the calculated taxes \($1,088.75 = $1,000 + $88.75\).
    -   The Cash Discount account of the customer \(*52600*\) is debited in the cash discount amount \($30\).

**Parent topic:**[Processing Invoices with Sales Taxes](../UserGuide/Taxes_Processing_Invoice_with_SalesTax_Mapref.md)

