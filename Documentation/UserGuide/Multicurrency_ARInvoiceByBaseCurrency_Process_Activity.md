# Multicurrency Payment of Invoices: To Pay a Foreign Currency Invoice by Using the Base Currency {#_8b6cd884-3293-4c3e-80f3-8c3c24ba04c7 .task}

The following activity will walk you through the process of creating an AR invoice in a foreign currency and paying it by using the base currency.

## Story {#section_gpx_3jv_vxb .section}

Suppose that on January 30, 2026, SweetLife Fruits &amp; Jams provided services to the Mint Store customer in the amount of 200 Canadian dollars \(C$200\). According to SweetLife's bank records, on February 20, 2026, the company received C$200 from Mint Store. This amount was converted from *CAD* into *USD* by the bank by using the actual bank exchange rate \(0.7913\) on the date when the bank received the payment to $158.26.

Because SweetLife received this amount to its *USD* bank account, the C$200 sent by the customer to SweetLife must be converted to the correct amount in *USD* so that the C$200 invoice can be closed.

Acting as a SweetLife accountant, you need to process the invoice and apply the payment to it.

## Configuration Overview {#section_mfx_3jv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant.
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *10200 \(Company Checking Account\)*, *11000 \(Accounts Receivable\)*, *40000 \(Sales Revenue\)*, and *42010 \(Realized Gain CAD\)* accounts have been created.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *MINTSTORE* customer has been predefined.
-   On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, the cash account for the *CAD* currency has been added for the *WIRE* payment method.

## Process Overview {#section_ppx_3jv_vxb .section}

In this activity, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create and post an AR invoice in the *CAD* currency. On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you will create a payment in the base currency and apply it to the invoice in *CAD*. To fully pay the invoice, you will update the cross rate for the invoice, and then release the payment application. Finally, you will review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation {#section_rpx_3jv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button, and select *1/30/2026* from the calendar.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  Make sure that the multicurrency accounting functionality has been configured as described in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md) and [Configuration of Rate Types and Rates: To Configure Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity1.md).
5.  Make sure that you have configured an account as described in [Multicurrency Cash Accounts: To Configure an Account](../ImplementationGuide/config_Multicurrency_CashAccount_Implem_Activity.md).

## Step 1: Creating and Releasing an AR Invoice {#section_upx_3jv_vxb .section}

To create an AR invoice that you will pay later and then release the invoice, do the following:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
2.  On the form toolbar, click **Add New Record**, and in the Summary area, specify the following settings:
    -   **Type**: *Invoice*
    -   **Customer**: *MINTSTORE*
    -   **Currency**: *CAD* \(inserted automatically when you selected the customer; cannot be overridden\)
    -   **Date**: *1/30/2026*
    -   **Post Period**: 01-2026
    -   **Description**: `Services (January)`
3.  On the **Details** tab, click **Add Row**, and in the added row, specify the following settings:
    -   **Transaction Descr.**: `Services (January)`
    -   **Ext. Price**: `200.00`

        The **Ext. Price** is specified in *CAD*, which is the currency of the invoice.

4.  On the form toolbar, click **Remove Hold**.
5.  In the Summary area, click **View Base**, and review the invoice in the base currency. Notice that the **Detail Total** in USD is $156.54 \(C$200 \* 0.7827176\).
6.  Click **Release** on the form toolbar to release the invoice.
7.  On the **Financial** tab, click the **Batch Nbr.** link to open the GL transaction generated on release of the invoice.
8.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the generated GL transaction in the document currency \(*CAD*\) and the base currency \(*USD*\).

    When the invoice was released, the following actions were performed in the system:

    -   The AR account specified in the invoice \(*11000*\) was debited in the total invoice amount, which the system converted to the base currency by using the document rate \($156.54 = Round \(C$200 \* 0.7827176\)\).
    -   The sales account \(*40000*\) was credited in the line amount converted to the base currency by the document rate \($156.54 = Round \(C$200 \* 0.7827176\)\).

## Step 2: Processing a Payment for the Invoice {#section_ypx_3jv_vxb .section}

To create a payment and apply it to the invoice, do the following:

1.  Open the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.
2.  On the form toolbar, click **Add New Record**, and in the Summary area, specify the following settings:

    -   **Type**: *Payment*
    -   **Customer**: *MINTSTORE*
    -   **Payment Method**: *WIRE* \(inserted automatically when you select the customer\)
    -   **Cash Account**: *10200WH \(Wholesale Checking\)*
    -   **Currency**: *USD* \(inserted automatically when you select the cash account\)
    -   **Description**: `Services (January)`
    -   **Application Date**: *2/20/2026*
    -   **Application Period**: *02-2026*
    -   **Payment Amount**: `158.26`
    On the **Documents to Apply** tab, the system has loaded the invoice you created for this customer earlier.

3.  Select the Included check box for the row with the invoice to select it, and review the amounts in the Summary area.

    The payment is in the base currency because the specified cash account is maintained in the base currency. Its amount is $158.26, according to the bank records. The cross rate shown in the **Cross Rate** column in the table, which is calculated between the currency of the original document \(*CAD*\) and the currency of the payment \(*USD*\), is 0.78758762, which is the *CAD*-to-*USD* exchange rate that was effective on 2/20/2026.

    As you can see, when you apply the payment to the invoice, the invoice will be fully paid and its **Balance** will be $0.00, while the payment will still have an open balance in the amount of $0.74. The SweetLife accountant knows that the invoice should be fully paid, because Mint Store sent exactly C$200.00, which is the outstanding balance of the invoice.

    To close both the invoice and the payment, you have to set the cross rate equal to the bank exchange rate \(0.7913\), so that the amount paid for the invoice and the amount applied to the invoice will be equal. After you apply the payment to the invoice, both the **Balance** of the invoice and the **Available Balance** of the payment will be *0.00* in both currencies.

4.  In the table, enter `0.7913` in the **Cross Rate** column to use this rate in the payment.

    Now the amount in the base currency that will be applied to the invoice \(**Amount Paid \(USD\)**\) is equal to the **Payment Amount** of the payment.

5.  On the form toolbar, click **Remove Hold** and then click **Release** to release the payment.
6.  On the **Financial** tab, click the **Batch Nbr.** link, and review the generated transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens.

    When the payment and its application were released, the following actions were performed in the system:

    -   The checking account specified in the payment \(*10200*\) was debited in the amount of the payment applied to the invoice \($158.26\)
    -   The AR account of the customer \(*11000*\) was credited in the total amount of the invoice, which equals the payment amount divided by the cross rate and multiplied by the invoice rate \($156.54 = Round \($158.26 / 0.7913 \* 0.7827176\)\), to decrease the customer's outstanding balance and close the invoice.
    -   The realized gain account associated with the document currency \(*42010*\), which you specified when you defined the currency in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md), was credited in the amount of the realized gain, which is the amount of the payment in the base currency minus the original amount of the invoice in the base currency \($1.72 = $158.26 – $156.54\).

**Parent topic:**[Paying Multicurrency Invoices](../UserGuide/Multicurrency_ARInvoiceByBaseCurrency_Mapref.md)

