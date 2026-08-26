# Payment Methods for Customers {#_f490b2b8-d03a-4855-baec-d836f97ecb30 .concept}

In Acumatica ERP, you can configure payment methods for customers. The settings of these payment methods describe how the particular payment is done and provide the default cash account to be used to record payments. The system does not initiate the actual movement of money; it just holds the information about the payment.

In this topic, you will read about the general steps of setting up a payment method that describes how particular payment was done. You will also see examples of payment methods that can be used to record payments from customers. Also, the topic describes how you configure a payment method to make it available by default for use with all customer accounts.

## General Payment Method Setup {#section_zcb_kjv_vxb .section}

You use the [Payment Methods](CA_20_40_00.md) \(CA204000\) form to configure payment methods. You perform the following general steps to set up a payment method:

1.  On this form, you specify the required settings, such as the identifier, means of payment, and description.

    **Tip:** We recommend that you use the *Cash/Check* means of payment for all payment methods that are used to describe how customers pay your organization.

2.  You specify how you want to use the payment method: For customer payments, select the **Use in AR** check box.

    **Tip:** The same payment method can be used to record incoming and outgoing payments; that is, you can select both the **Use in AR** and the **Use in AP** check boxes \(or just one of the check boxes\).

3.  On the **Allowed Cash Accounts** tab, you add the cash accounts to be used with this payment method. Additionally, you can select the **AR Default** check box to define the cash account that is used by default for incoming payments.

    **Tip:** You do not need to enable auto-numbering of payments \(by using the **AR - Suggest Next Number** and the **AR Last Reference Number** columns\), because incoming payments usually have their own numbers, which you enter in the **Payment Ref.** box on [Payments and Applications](AR_30_20_00.md) \(AR302000\).

4.  You activate the payment method—that is, select the **Active** check box.
5.  You save the new payment method.

You follow these steps for all payment methods that are used to describe how customers pay your organization. These payment methods will differ primarily in their identifiers and their lists of allowed cash accounts.

## Examples of Payment Methods {#section_fdb_kjv_vxb .section}

Goods and services can be paid for in a variety of ways, including cash, checks, wire transfers, and credit or debit cards. You can configure the following types of payment methods to record payments from customers:

-   Cash: To record incoming payments made with actual cash, you configure a payment method, which you base on the *Cash/Check* means of payment. You should associate the payment method with general cash accounts and petty cash accounts.
-   Check: To record incoming payments made with checks, you configure a payment method and base it on the *Cash/Check* means of payment. You associate the payment method with bank cash accounts \(that is, cash accounts that you use to record the financial transactions between your organization and the financial institution\).
-   Wire transfer: To record incoming payments made by wire transfer, you develop a payment method and base it on the *Cash/Check* means of payment. You associate the payment method with bank cash accounts.
-   Credit or debit card: To record incoming payments made with a credit or debit card, you develop a payment method and associate it with bank cash accounts. This payment method should be based on the *Cash/Check* means of payment. You do not use this payment method for actual payment processing, so there is no need to store credit card details \(such as card number and expiration date\) for each customer.

    If you want to perform actual payment processing—initiating incoming payments from your customers that use credit or debit cards as payment methods—you can configure integration with Acumatica Payments. When you configure payment methods for this purpose, you use the *Credit Card* means of payment, which is designed to ease the setup of payment methods by credit or debit card. For details, see [Configuring and Using Acumatica Payments](AR__MNG_Acumatica_Payments.md).


## Payment Methods for Customers and Customer Payment Methods {#section_idb_kjv_vxb .section}

You configure payment methods for customers in the cash management subledger of Acumatica ERP, but you use them in the accounts receivable subledger to record payments from the customers. To start using payment methods, you first need to associate a payment method with a particular customer.

Acumatica ERP eases this task, so that in most cases you do not need to associate each payment method with each of your customers. The system automatically associates with all customer accounts each payment method that is configured as follows on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form:

-   The payment method is active—that is, the **Active** check box is selected.
-   The payment method is based on the *Cash/Check* means of payment.
-   The payment method is marked for use in accounts receivable—that is, the **Use in AR** check box is selected.

All payment methods for customers configured in this way will automatically appear on the **Payment Methods** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form and can be used to record payments without additional configuration. If a payment method has the **Require Card/Account Number** check box cleared on the **Settings for Use in AR** tab, it is also added to the list of available payment methods. If you select this payment method when you are creating a payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the system will prompt you to enter a card number or account number.

You can modify a payment method that has been associated with a particular customer automatically—for example, you can specify another cash account to record payments from this customer by using the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form. When you perform this modification, the system creates an instance of the payment method that is called a *customer payment method*. Customer payment methods are also displayed on the **Payment Methods** tab of the [Customers](AR_30_30_00.md) form with the **Override** check box selected to distinguish them from non-modified payment methods for customers. For details, on creating customer payment methods, see [Configuring Customer Payment Methods](AR__CON_Customer_PaymentMethods.md).

**Parent topic:**[Managing Payment Methods](../UserGuide/CA__MNG_PaymentMethods.md)

