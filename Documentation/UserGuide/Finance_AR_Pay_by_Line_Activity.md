# Applying AR Payments to Particular Lines: Process Activity {#_bc05f435-1a5e-4753-9ad0-867f8c35fc5f .task}

The following activity will walk you through the process of creating an AR invoice to be paid by line and partially paying some of its lines.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that on 1/30/2026, the SweetLife Fruits &amp; Jams company provided services to Allen's Bakery for $2,600. SweetLife wants the customer to pay $1,200 for consulting services first. The other invoice lines can be paid later. On 2/1/2026, Allen's Bakery partially paid the invoice in the amount of $1,200.

Acting as a SweetLife accountant, you need to create the AR invoice and enter a partial AR payment for one of its lines.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
    -   *Payment Application by Line*, which enables the functionality of paying specific lines of AR documents

On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the **Hold Documents on Entry** check box has been selected in the **Data Entry Settings** section.

On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *ABAKERY \(Allen's Bakery\)* customer has been configured. This customer has the *CHECK* payment method specified as the default one.

## Process Overview { .section}

In this activity, you will first create an invoice with two lines on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. The invoice will have the **Pay by Line** check box selected, indicating that payments can be applied to separate lines of the invoice. On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you will pay one line of the invoice. Finally, you will review the original invoice on the [Invoices and Memos](AR_30_10_00.md) form and its application to the payment on the [Payments and Applications](AR_30_20_00.md) form.

## System Preparation { .section}

Before you begin processing documents that are paid by line, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Creating an AR Invoice { .section}

To create an AR invoice bill that can be paid by line, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Invoice*
    -   **Customer**: *ABAKERY*
    -   **Date**: *1/30/2026* \(inserted automatically\)
    -   **Post Period**: *01-2026*
    -   **Pay by Line**: Selected
    -   **Description**: `Consulting services`
3.  On the table toolbar of the **Details** tab, click **Add Row**; specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Line Nbr.**: *1* \(inserted automatically\)
    -   **Inventory ID**: *CONSULT*
    -   **Quantity**: `2`
    -   **Unit Price**: `600`
    -   **Ext. Price**: *1,200* \(calculated automatically\)
    -   **Account**: *40000 - Sales Revenue* \(inserted automatically\)
4.  Click **Add Row** again and specify the following settings for the second row:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Line Nbr.**: *2* \(inserted automatically\)
    -   **Transaction Descr.**: `Cleaning and additional services`
    -   **Ext. Price**: `1400`
    -   **Account**: *40000 - Sales Revenue* \(inserted automatically\)
5.  On the form toolbar, click **Save**.
6.  On the form toolbar, click **Remove Hold** and then click **Release** to release the invoice.

## Step 2: Entering a Payment for One Line of the Invoice { .section}

To enter a payment for one line of the AR invoice, do the following:

1.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Payment*
    -   **Customer**: *ABAKERY*
    -   **Application Date**: *2/1/2026*
    -   **Application Period**: *02-2026* \(inserted automatically\)
    -   **Payment Method**: *CHECK* \(inserted automatically\)
    -   **Description**: `Consulting services`
3.  In the table on the **Documents to Apply** tab, select line 1 of the invoice that you created in Step 1. The line has an amount of $1,200.
4.  In the **Payment Amount** box of the Summary area, enter `1200`.
5.  Click **Save** to save your changes.

    The other documents are removed from the **Documents to Apply** tab.

6.  On the form toolbar, click **Remove Hold** and then click **Release** to release the payment.

    The system assigns the payment the *Closed* status. If the original invoice still has unpaid lines, it retains the *Open* status, and the **Balance** box in the Summary area of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form displays the balance still due from the customer.


## Step 3: Reviewing the Original Invoice and Its Applications { .section}

To review the original invoice, which has been partially paid, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, open the invoice that you created in Step 1.

    The invoice retains the *Open* status because it still has unpaid lines. The **Balance** box in the Summary area displays the balance still due from the customer \($1,400\).

2.  Go to the **Applications** tab.

    The payment that has been applied to one invoice line is listed on the tab.

3.  Click the link in the **Reference Nbr.** column to open the payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.
4.  On the **Application History** tab, notice that line 1 of the invoice has been applied to the payment.

**Parent topic:**[Applying Payments to Particular Lines of AR Documents](../UserGuide/Finance_AR_Payments_for_Particular_Lines_Mapref.md)

