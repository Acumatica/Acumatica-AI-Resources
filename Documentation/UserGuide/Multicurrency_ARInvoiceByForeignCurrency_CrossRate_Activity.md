# Multicurrency Payment of Invoices: To Change the Payment Amount Instead of the Cross Rate {#_1012434b-d1ac-4a34-848f-4679a44772e5 .task}

This activity will walk you through the process of configuring a foreign currency and using it to pay an invoice in another foreign currency. You will also change the reciprocal rate and the amount paid in the created payment.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams provides professional training services to its customer, Unifruit LLC, which operates in a multicurrency environment. SweetLife’s base currency is USD, but it conducts business using foreign currencies—specifically, EUR and GBP—to meet customer and banking requirements.

On March 1, 2026, SweetLife issued an AR invoice for EUR 1000 to Unifruit for training services, using an agreed-on exchange rate \(1 USD = 1.1 EUR\).

On March 10, 2026, Unifruit settled the invoice by making a payment in GBP via wire transfer. SweetLife applied the payment from its GBP cash account and used a defined cross rate to convert the GBP payment into EUR. The system initially calculated a default GBP amount \(GBP 504.35\) based on existing rates, which wouldn’t fully settle the EUR invoice. The final payment amount \(GBP 869.57\) fully settled the EUR invoice. \(To reflect the actual exchange rate agreed on at payment time, SweetLife manually updated the reciprocal rate so that 1 GBP = 1.43111816 EUR. This tells the system how GBP should be converted into EUR for this specific payment.\)

Acting as a SweetLife accountant, you need to set up the system for processing payments in GBP, create an invoice in EUR, and pay it in GBP.

## Configuration Overview {#section_mfx_3jv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *11000 \(Accounts Receivable\)* and *83000 \(Realized Gain/Loss Currency\)* accounts have been created.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *UNIFRUIT* customer has been defined.
-   On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, the *WIRE* payment method for wire transfers has been created.

## Process Overview { .section}

1.  On the [Currencies](CM_20_20_00.md) \(CM202000\) form, you will update the settings of the *GBP* currency.
2.  On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) and [Cash Accounts](CA_20_20_00.md) \(CA202000\) forms, you will set up cash accounts in *GBP* and *EUR*.
3.  On the [Currency Rates](CM_30_10_00.md) \(CM301000\) form, you will create exchange rates for these currencies.
4.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, you will update the settings of the UNIFRUIT customer.
5.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create and release an AR invoice in *EUR*.
6.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you will pay this invoice in full in *GBP*.

## System Preparation { .section}

Before you begin processing an invoice and its payment, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, set the business date to *3/1/2026*. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  Make sure that the multicurrency accounting functionality has been configured as described in Steps 1 through 2 in [Multicurrency Payment of Invoices: To Change the Payment Amount Instead of the Cross Rate](Multicurrency_ARInvoiceByForeignCurrency_CrossRate_Activity.md).

## Step 1: Updating GBP’s Settings { .section}

To set up *GBP* as a foreign currency, do the following:

1.  Open the [Currencies](CM_20_20_00.md) \(CM202000\) form.
2.  In the **Currency ID** box, select *GBP*.
3.  In the Summary area, specify the following settings:
    -   **Active**: Selected
    -   **Use for Accounting**: Selected
4.  On the **GL Accounts** tab, specify the following settings:
    -   **Realized Gain Account**: *83000*
    -   **Realized Loss Account**: *83000*
    -   **Unrealized Gain Account**: *84000*
    -   **Unrealized Loss Account**: *84000*
    -   **Revaluation Gain Account**: *83200*
    -   **Revaluation Loss Account**: *83200*
    -   **Rounding Gain Account**: *83100*
    -   **Rounding Loss Account**: *83100*
5.  On the form toolbar, click **Save**.

## Step 2: Setting Up Accounts in GBP and EUR { .section}

To create accounts denominated in *GBP* and *EUR*, do the following:

1.  On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, click **Add Row**.
2.  Specify the following settings in the added row:
    -   **Account**: `10610`
    -   **Account Class**: *CASHASSET*
    -   **Description**: `Checking Account GBP`
    -   **Currency**: *GBP*
    -   **Revaluation Rate Type**: *SPOT*
3.  On the form toolbar, click **Save**.
4.  Click **Add Row** again and specify the following settings in the added row:
    -   **Account**: `10620`
    -   **Account Class**: *CASHASSET*
    -   **Description**: `Checking Account EUR`
    -   **Currency**: *EUR*
    -   **Revaluation Rate Type**: *SPOT*
5.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, add a new record.
6.  In the Summary area, specify or verify the following settings:
    -   **Cash Account**: `10610`
    -   **Account**: *10610*
    -   **Currency**: *GBP* \(inserted automatically\)
    -   **Curr. Rate Type**: *SPOT*
7.  On the **Payment Methods** tab, click **Add Row** and specify the following settings in the added row:
    -   **Payment Method**: *WIRE*
    -   **Use in AP**: Selected
    -   **Use in AR**: Selected
8.  Click **Save**.
9.  On the form toolbar, click **Add New Record** again.
10. Specify or verify the following settings in the added record:
    -   **Cash Account**: `10620`
    -   **Account**: *10620*
    -   **Currency**: *EUR* \(inserted automatically\)
    -   **Curr. Rate Type**: *SPOT*
11. On the **Payment Methods** tab, click **Add Row** and specify the following settings in the added row:
    -   **Payment Method**: *WIRE*
    -   **Use in AP**: Selected
    -   **Use in AR**: Selected
12. Click **Save**.

## Step 3: Creating Currency Rates { .section}

To define the currency rates between the base currency \(*USD*\), *GBP*, and *EUR* do the following:

1.  Open the [Currency Rates](CM_30_10_00.md) \(CM301000\) form.
2.  In the **To Currency** box, select *USD*.
3.  In the **Effective Date** box, enter *3/1/2026*.
4.  On the **Currency Rate Entry** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:

    -   **From Currency**: *GBP*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *3/1/2026*
    -   **Currency Rate**: `0.58`
    -   **Mult./Div.**: *Divide*
    The **From Currency** box indicates which currency the conversion should be performed from by using the **Currency Rate** and the operation selected in the **Mult./Div.** box. That is, the conversion rule from *GBP* to *USD* is `1 GBP = 1 / 0.58 USD`.

5.  On the form toolbar, click **Save**.
6.  On the **Currency Rate Entry** tab, click **Add Row** again and specify the following settings in the added row:
    -   **From Currency**: *EUR*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *3/1/2026*
    -   **Currency Rate**: `1.15`
    -   **Mult./Div.**: *Divide*
7.  On the form toolbar, click **Save**.

## Step 4: Updating the Customer's Settings { .section}

To update the settings of the *UNIFRUIT* customer, do the following:

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, open the *UNIFRUIT* customer.
2.  On the **Financial** tab, specify the following settings:
    -   **Currency ID**: *EUR*
    -   **Enable Currency Override**: Selected
    -   **Curr. Rate Type**: *SPOT*
    -   **Enable Rate Override**: Selected
3.  On the form toolbar, click **Save**.

## Step 5: Creating an AR Invoice in EUR { .section}

To create an AR invoice in *EUR* and release it, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, create a new record.
2.  In the Summary area, specify or verify the following settings:
    -   **Type**: *Invoice*
    -   **Customer**: *UNIFUIT*
    -   **Currency**: *EUR* \(inserted automatically\)
    -   **Date**: *3/1/2026*
    -   **Post Period**: *03-2026*
    -   **Description**: `Training`
3.  On the **Details** tab, click **Add Row** and specify the following settings in the added row:
    -   **Transaction Descr.**: `Training`
    -   **Ext. Price**: `1000`
4.  In the Summary area, click **Exchange Rate** \(right of the **Currency** box\) to open the **Rate Selection** dialog box.
5.  In the dialog box, specify `1.1` as the exchange rate of 1 USD to EUR.
6.  Click **OK** to close the dialog box.
7.  On the form toolbar, click **Save**.
8.  On the form toolbar, click **Remove Hold** and then click **Release** to release the invoice.

## Step 6: Paying the AR Invoice in GBP { .section}

To pay the AR invoice in GBP, do the following:

1.  While you’re still viewing the invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, click **Pay** on the form toolbar.

    The [Payments and Applications](AR_30_20_00.md) \(AR302000\) form opens.

2.  In the Summary area for the opened payment, specify or verify the following settings:
    -   **Payment Method**: *WIRE*
    -   **Cash Account**: *10610 \(Checking account GBP\)*
    -   **Currency**: *GBP* \(inserted automatically based on the selected cash account\)
    -   **Application Date**: *3/10/2026*
3.  On the **Documents to Apply** tab, review the value in the **Amount Paid \(GBP\)** column.

    This column displays the amount to be paid in the currency specified in the **Currency** box of the Summary area \(GBP 504.35\).

4.  Click the link in the **Cross Rate** column to open the **Cross Rate Selection** dialog box.
5.  In the second line of the dialog box, set the reciprocal rate to `1.43111816` \(1.000 GBP = 1.43111816 EUR\).
6.  Click **OK** to close the dialog box.
7.  Notice that the value in the **Cross Rate** column has changed to *0.69875432*.
8.  In the **Amount Paid \(GBP\)** column, change the value to `869.57`.

    The **Available Balance** in the Summary area is now *0.00*. When the payment is released, it will fully pay the invoice.

9.  On the form toolbar, click **Remove Hold** and then click **Release** to release the payment.

**Parent topic:**[Paying Multicurrency Invoices](../UserGuide/Multicurrency_ARInvoiceByBaseCurrency_Mapref.md)

