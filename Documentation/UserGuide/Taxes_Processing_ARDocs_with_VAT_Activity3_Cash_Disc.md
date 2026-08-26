# AR Documents with VAT: To Process an AR Invoice with a Cash Discount {#_b3ae5a67-d48b-4c3e-bbbb-5804e4c5f6c5 .task}

The following activity will walk you through the processing of an AR invoice with a cash discount and VAT applied to it.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that on January 10, 2026, SweetLife Fruits &amp; Jams provided support services to EasyDiner Co. in the amount of $1,000 and issued an invoice. The invoice amount is $1,000 plus the VAT \($70\). The credit terms of the invoice give the customer a 3% discount if the customer pays the invoice within 10 days.

On January 14, 2026, EasyDiner paid the invoice and took the 3% cash discount.

Acting as a SweetLife accountant, you need to create and release the invoice, applying the cash discount to the taxable amount of the document and making sure that the VAT amount is not affected by the cash discount. Finally, you have to create the payment for the invoice.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* tax category has been created.
-   On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, the *CANADA* tax zone has been defined.
-   On the [Taxes](TX_20_50_00.md) \(TX205000\) form, the *VAT* tax has been defined and assigned to the *TAXABLE* category and the *CANADA* tax zone.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *EASYDINER* customer account has been created, and on the **Shipping** tab, *CANADA* is selected in the **Tax Zone** box for the customer.

## Process Overview { .section}

In this activity, you will update the company settings on the [Companies](CS_10_15_00.md) \(CS101500\) form. On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create and release an invoice with a cash discount. On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, you will review the GL transaction generated on release of the invoice. On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you will pay the invoice within the cash discount period. Finally, on the [Journal Transactions](GL_30_10_00.md) form, you will review the GL transaction generated on release of the payment.

## System Preparation {#section_cll_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button, and select *1/10/2026*.
3.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  In the company to which you are signed in, be sure that you have performed the [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md) prerequisite activity.

## Step 1: Updating the Company Settings { .section}

To make the system apply cash discounts to the taxable amount of documents, you need to update the company settings. To update the settings of *SWEETLIFE*, do the following:

1.  On the [Companies](CS_10_15_00.md) \(CS101500\) form, open the *SWEETLIFE* company.
2.  On the **Company Details** tab, select *Document Amount Less Taxes* in the **Cash Discount Base** box.
3.  On the form toolbar, click **Save**.

## Step 2: Creating and Releasing an Invoice with a Cash Discount { .section}

To create and release an AR invoice with a cash discount and a VAT tax applied to it, proceed as follows:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Invoice*
    -   **Customer**: *EASYDINER*
    -   **Terms**: *310N30*

        These credit terms indicate that if the invoice is paid within 10 days, the customer will receive a 3% cash discount. If the invoice is paid within 30 days, the customer will pay the full amount.

    -   **Date**: *1/10/2026* \(the current business date, which is inserted by default\)
    -   **Post Period**: *01-2026* \(inserted by default based on the selected date\)
    -   **Description**: `Support services`
3.  On the **Details** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Support services`
    -   **Ext. Price**: `1000`
    -   **Tax Category**: *TAXABLE*
4.  On the form toolbar, click **Save**.
5.  On the **Taxes** tab, review the tax that has been added to the invoice.

    The tax category specified for the invoice line is *TAXABLE*, so a 7% VAT has been applied to the invoice line. The taxable amount is $1,000 and the calculated tax amount is $70.

6.  In the Summary area, review the invoice amounts.

    The **Detail Total** of the invoice is $1,000. This is the amount of the provided services. The total invoice balance is $1,070, the tax total is $70, and the calculated cash discount on the taxable amount of the document is $30.

    **Attention:** If on the [Companies](CS_10_15_00.md) \(CS101500\) form, *Document Amount* was selected in the **Cash Discount Base** box on the **Company Details** tab, the cash discount amount would be calculated as follows:

    -   **Detail Total**: 1,000
    -   **Tax Total**: 70
    -   **Cash Discount**: 32.10, which is calculated as the total document amount \(the total of all lines plus the tax\) multiplied by the cash discount percent—1,070 \* 3%
7.  On the form toolbar, click **Remove Hold** and then click **Release** to release the invoice.

## Step 3: Reviewing the GL Transaction Generated on Invoice Release { .section}

To review the GL transaction that was generated when the system released the invoice, proceed as follows:

1.  While you are still viewing the AR invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, on the **Financial** tab, click the **Batch Nbr.** link.
2.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which is opened, review the transaction that was generated on release of the invoice as follows:
    -   The Accounts Receivable account of the customer \(*11000*\) is debited in the total amount of the invoice—the total of all lines plus the total of the calculated tax \($1,070 = $1,000 + $70\).
    -   The Sales Revenue account \(*40000*\) is credited in the amount specified in the document line \($1,000\).
    -   The Tax Payable account specified for the tax \(*24100*\) is credited in the calculated VAT amount \($70\).

## Step 4: Paying the Taxable Invoice with the Cash Discount { .section}

To create a payment for the taxable invoice with a cash discount, do the following:

1.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button, and select *1/14/2026*.
2.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, open the invoice that you created and released in Step 2.
3.  On the form toolbar, click **Pay**.
4.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which is opened, review the settings of the created document.

    The **Payment Amount** is $1,040, which is the total document amount minus the cash discount \($1,070 – $30\).

    **Attention:** If on the [Companies](CS_10_15_00.md) \(CS101500\) form, *Document Amount* was selected in the **Cash Discount Base** box on the **Company Details** tab, the amount of the payment within the cash discount period would be $ 1,037.90 \($1,070 – $32.10\).

5.  On the form toolbar, click **Remove Hold** and then click **Release** to release the payment.

## Step 5: Reviewing the GL Transaction Generated on Payment Release { .section}

To review the GL transaction that was generated when the system released the payment, proceed as follows:

1.  While you are still viewing the payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, on the **Financial** tab, click the **Batch Nbr.** link.
2.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which is opened, review the transaction that was generated on release of the payment as follows:
    -   The Checking account of the company \(*10200*\) is debited in the total amount of the invoice minus the cash discount amount \($1,040 = $1,070 – $30\).
    -   The Accounts Receivable account of the customer \(*11000*\) is credited in the total amount of the invoice—the total of all lines plus the total of the calculated VAT \($1,070 = $1,000 + $70\).
    -   The Cash Discount account of the customer \(*52600*\) is debited in the cash discount amount \($30\).

**Parent topic:**[Processing AR Documents with Value-Added Taxes](../UserGuide/Taxes_Processing_ARDocs_with_VAT_Mapref.md)

