# Corporate Cards: To Configure a Vendor for a Corporate Card {#_8f50f603-63b1-4cff-a44a-8837e4a6b8fd .task}

In the following implementation activity, you will learn how to create the entities necessary for processing of expense receipts with corporate credit cards.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_c2l_njv_vxb .section}

Suppose that the SweetLife Fruits &amp; Jams company has opened a Visa corporate credit card issued by Key Bank to use the card to pay small amounts \(for example, for books purchased for the company\). The company's chief accountant wants to process and reconcile these payments in the system. Acting as an implementation manager, you need to configure the cash account and the payment method for tracking outgoing payments made through a corporate credit card.

**Attention:** This activity explains how to configure the card issuer as a vendor. If the *Expense Management* feature is included in your license, you can instead configure a corporate credit card as described in [Corporate Cards: To Configure a Corporate Card](Corporate_Card_Implem_Activity_CorpCard.md).

## Process Overview {#section_e2l_njv_vxb .section}

In this activity, on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, you will create a GL account for a corporate credit card. On the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form, you will create a payment method for corporate credit cards. On the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form, you will create a cash account for the corporate credit card and specify the new payment method for it. Finally, on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you will create a vendor that represents the bank that issued the corporate credit card.

## System Preparation {#section_g2l_njv_vxb .section}

Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as Kimberly Gibbs, an implementation manager, by using the *gibbs* username and the *123* password.

## Step 1: Creating a GL Account for a Corporate Credit Card {#section_i2l_njv_vxb .section}

To create a GL account for a corporate credit card, do the following:

1.  Open the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, and on the form toolbar, click **Add Row**.
2.  In the new line, create an account with the following settings:
    -   **Account**: `29100`
    -   **Account Class**: *OTHCURLIAB*
    -   **Type**: *Liability*
    -   **Description**: `Corporate Credit Card`
    -   **Post Option**: *Detail*
3.  On the form toolbar, click **Save**.

## Step 2: Creating a Payment Method {#section_k2l_njv_vxb .section}

To create a payment method for the corporate credit card, do the following:

1.  Open the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings for the new payment method:
    -   **Payment Method ID**: `CORPCC`
    -   **Means of Payment**: *Cash/Check*
    -   **Description**: `Corporate Credit Card`
    -   **Use in AP**: Selected
    -   **User in AR**: Cleared

        This payment method is not going to be used for customer payments.

    -   **Require Remittance Information for Cash Account**: Cleared

        Remittance information is not required by this payment method for the related cash accounts.

4.  On the **Settings for Use in AP** tab, clear the **Require Unique Payment Ref.** check box in the **Payment Settings** section so that a unique payment reference number is not required for each payment document created with this payment method.

    Make sure that **Not Required** is selected in the **Additional Processing** section. Payment documents created with this payment method do not require additional processing, such as printing checks.

5.  On the form toolbar, click **Save**.

## Step 3: Creating a Cash Account {#section_q2l_njv_vxb .section}

To create a cash account for a corporate credit card, do the following:

1.  Open the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings for the new cash account:
    -   **Cash Account**: `29100`
    -   **Account**: *29100 - Corporate Credit Card*
    -   **Branch**: *HEADOFFICE*
    -   **Description**: `Corporate Credit Card Key Bank Visa`
    -   **Requires Reconciliation**: Selected
    -   **Restrict Visibility with Branch**: Cleared
    -   **Use for Corporate Cards**: Selected
    -   **Reconciliation Numbering Sequence**: *CARECON - CA Reconciliation*
4.  On the **Payment Methods** tab, click **Add Row** on the table toolbar and in the **Payment Method** column, select *CORPCC*.
5.  On the **Entry Types** tab, click **Add Row** and select *BANKFEE* in the **Entry Type ID** column.
6.  Click **Add Row** again and select *INTEREST* in the **Entry Type ID** column.
7.  On the form toolbar, click **Save**.

## Step 4: Creating a Vendor {#section_s2l_njv_vxb .section}

To create a vendor that will represent the bank of the corporate credit card in the system, do the following:

1.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings for the new vendor:
    -   **Vendor ID**: `KEYBANK`
    -   **Vendor Class**: *DEFAULT*
4.  In the **Account Name** box, specify `Key Bank`.
5.  On the **GL Accounts** tab, in the **Expense Account** box, select *29100 - Corporate Credit Card.*
6.  On the form toolbar, click **Save**.

You have set up a cash account, a payment method, and a vendor, so that you can track the corporate credit card payments and reconcile the credit card balance in the system with the card statement balance.

For instructions on how to process an AP bill that represents the expenses paid with company credit card, see [Payments with a Corporate Card: To Process a Credit Card Bill](../UserGuide/Finance_Expenses_with_CorporateCC_ProcessActivity1.md).

**Parent topic:**[Corporate Cards](../ImplementationGuide/Corporate_Card_Mapref.md)

