# Multicurrency Payment of Invoices: To Pay a Foreign Currency Invoice by Using Another Currency {#_cce4ab21-e2f5-40d8-b251-f20310cfe621 .task}

The following activity will walk you through the process of paying an invoice in a foreign currency by using another foreign currency.

## Story {#section_tqx_3jv_vxb .section}

Suppose that on January 10, 2026, SweetLife Fruits &amp; Jams provided consulting services to the EasyDiner customer in the amount of 50 euros \(*EUR* in the system\). By the end of January, the customer informed SweetLife that they were going to pay the invoice in Canadian dollars \(*CAD*\). SweetLife agreed to use for the payment the following exchange rate: 1 *EUR* = 1.51 *CAD*. On January 31, EasyDiner made the first partial payment in the amount of 20 Canadian dollars.

Acting as a SweetLife accountant, you need to process the invoice and apply the payment to it. Then you need to print the multicurrency report to review the outstanding balance of the customer.

## Configuration Overview {#section_mfx_3jv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant.
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *11000 \(Accounts Receivable\)* and *83000 \(Realized Gain/Loss Currency\)* accounts have been created.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *EASYDINER* customer has been predefined.
-   On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, the *WIRE* payment method for wire transfers has been created.

## Process Overview {#section_brx_3jv_vxb .section}

In this activity, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create and release an invoice in EUR. On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you will partially pay this invoice in the amount of 20 CAD. Finally, you will print the multicurrency report on the [AR Balance by Customer MC](AR_63_30_00.md) \(AR633000\) form to review the outstanding balance of the customer.

## System Preparation {#section_drx_3jv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/10/2026*. If a different date is displayed, click the Business Date menu button, and select *1/10/2026* from the calendar.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  Make sure that the multicurrency accounting functionality has been configured as described in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md) and [Configuration of Rate Types and Rates: To Set Up Refreshing of Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity2.md).
5.  Make sure that you have configured an account as described in [Multicurrency Cash Accounts: To Configure an Account](../ImplementationGuide/config_Multicurrency_CashAccount_Implem_Activity.md).
6.  Make sure that the settings of the *EASYDINER* customer have been updated as described in [Credit Memos in Foreign Currencies: Process Activity](Multicurrency_CreditMemo_Process_Activity.md).

## Step 1: Creating and Releasing an Invoice {#section_grx_3jv_vxb .section}

To create an invoice in a foreign currency and release it, do the following:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
2.  On the form toolbar, click **Add New Record**, and in the Summary area, specify the following settings:
    -   **Type**: *Invoice*
    -   **Customer**: *EASYDINER*
    -   **Currency**: *EUR* \(automatically inserted; cannot be overridden\)
    -   **Date**: *1/10/2026*
    -   **Post Period**: 01-2026
    -   **Description**: `Consulting services`
3.  On the **Details** tab, click **Add Row**, and in the added row, specify the following settings:
    -   **Transaction Descr.**: `Consulting services`
    -   **Ext. Price**: `50.00`
4.  On the form toolbar, click **Save**.
5.  In the Summary area, click **View Base** \(right of the **Currency** box\), and review the invoice in the base currency \(*USD*\).

    The **Detail Total** in *USD* is $56.87, based on the currency exchange rate of the document \(€50 \* 1.13739763\).

6.  On the form toolbar, click **Remove Hold** and then click **Release** to release the invoice.

## Step 2: Processing a Payment for the Invoice {#section_jrx_3jv_vxb .section}

To create a payment in a foreign currency and apply it to the invoice, do the following:

1.  Open the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.
2.  On the form toolbar, click **Add New Record**, and in the Summary area, specify the following settings:

    -   **Type**: *Payment*
    -   **Customer**: *EASYDINER*
    -   **Payment Method**: *WIRE* \(inserted automatically when you selected the customer\)
    -   **Cash Account**: *10215WH \(Checking Account CAD\)*
    -   **Currency**: *CAD* \(inserted automatically when you selected the cash account\)
    -   **Description**: `Partial payment on consulting services`
    -   **Application Date**: *1/31/2026*
    -   **Application Period**: *01-2026*
    -   **Payment Amount**: `20.00`
    On the **Documents to Apply** tab, the system has loaded the invoices you created for this customer in Step 1 of this activity and in a previous activity.

3.  Select the Included check box for the invoice dated 1/10/2026 to select it.

    The default cross rate for the payment application is calculated as the exchange rate of the invoice currency that was effective on the payment date divided by the currency rate of the payment: 1.424779... = 1.11520018 / 0.7827176.

    You have to override this rate to 1.51, which is the *EUR*-to-*CAD* rate that had been agreed on with the customer. Thus, the payment amount converted to *EUR* is €13.24 \(C$20 / 1.51\). This amount is not shown on the form.

4.  In the **Cross Rate** column, enter `1.51`, and review the payment in the invoice currency and in the base currency.
5.  In the **Amount Paid \(CAD\)** column for the invoice, specify `20.00`.

    Based on the actual exchange rate on the date of the payment, the payment amount in *USD* is $15.65 \(C$20.00 \* 0.7827176\).

    The balance that you see in the **Balance** column of the table for the invoice is the open amount of the invoice after you apply the payment, which is shown in the payment currency and is converted by using the cross rate: \(€50.00 – €13.24\) \* 1.51 = C$55.50.

6.  On the form toolbar, click **Remove Hold** and then click **Release** to release the payment.
7.  On the **Financial** tab, click the **Batch Nbr.** link.
8.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the GL transaction in the base currency \(*USD*\).

    When the payment was released, the following actions were performed in the system:

    -   The checking account specified in the payment \(*10215*, which you created in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md)\) was debited in the amount of the payment that the system converted to the base currency by using the payment rate \($15.65 = Round \(€20 \* 0.7827176\)\).
    -   The Accounts Receivable account of the customer \(*11000*\) was credited in the amount in the base currency deducted from the invoice balance \($15.06 = Round \(Round \(€20 \* 1.13739505\) / 1.51\)\) to decrease the customer's debt.
    -   The realized gain/loss account of the document currency \(*83000*, which you specified when you defined the currency in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md)\) was credited in the amount of the realized gain, which is the amount of the payment in the base currency minus the amount in the base currency deducted from the invoice balance \($0.59 = $15.65 – $15.06\).
    **Tip:** If an invoice is issued in the base currency, no gain or loss will be realized on the payment, regardless of the currency of the payment.

9.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, open the invoice to which you have applied the payment, and review the **Applications** tab.

    The payment in *CAD* was applied to the invoice. The balance of the invoice is currently €36.76.


## Step 3: Printing the Multicurrency Report {#section_trx_3jv_vxb .section}

To review the outstanding balance of all customers and print the multicurrency report, do the following:

1.  Open the [AR Balance by Customer MC](AR_63_30_00.md) \(AR633000\) form.
2.  On the **Report Parameters** tab, specify the following settings:
    -   **Report Format**: *Open + Current Period*
    -   **Company/Branch**: *HEADOFFICE*
    -   **Financial Period**: *01-2026*
    -   **Include Applications**: Cleared
3.  On the form toolbar, click **Run Report** and review the report.

    The report lists all the documents processed in the 01-2026 period, along with the documents that are open at the end of the period. The listed documents are grouped by customer. For each document, you can review the document balance in the document currency. Also, for each customer, you can review the total of the documents in each currency at the end of the period.


**Parent topic:**[Paying Multicurrency Invoices](../UserGuide/Multicurrency_ARInvoiceByBaseCurrency_Mapref.md)

