# Configuring Customer Payment Methods {#_893fd0b5-794c-4996-82fb-316fc061a159 .concept}

In Acumatica ERP, you can use payment methods configured for use in accounts receivable with any customer account. You can configure multiple payment methods that are available for all customers by default. You can use a payment method that is available by default as a template to create a *customer payment method*, which is an instance of a payment method that has been tailored for use with a specific customer account.

In this topic, you will read about how to create a payment method that is available by default, how to set up a customer payment method, and how to set up a particular payment method to be used by default with a customer account.

## Payment Methods for Customers {#section_drl_4jv_vxb .section}

A payment method is available by default if it has been configured as follows on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form:

-   The payment method is active—that is, the **Active** check box is selected.
-   The payment method is based on the *Cash/Check* means of payment.
-   The payment method is marked for use in accounts receivable—that is, the **Use in AR** check box is selected.

When you create a new customer account, the system automatically adds these default payment methods to the account. This is done because these payment methods can be used without any customer-specific details being specified. That is, for these payment methods, you generally do not need to use the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form to specify a customer-specific instance of the payment method. You can start recording customer documents by using the available payment methods.

**Attention:** If a payment method has the **Require Card/Account Number** check box cleared on the **Settings for Use in AR** tab of the [Payment Methods](CA_20_40_00.md) form, it is also added to the list of available payment methods. If you select this payment method when creating a payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the system will prompt you to enter a card number or account number.

## Setup of Customer Payment Methods {#section_hrl_4jv_vxb .section}

You set up customer payment methods by using the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form. You may need to create a customer payment method in the following cases:

-   If you want to modify the settings of available by default payment method. For example, you might decide to record a cash payment from a particular customer on another cash account.
-   If you configured actual payment processing through the integration with a payment gateway. In this case, you provide credit or debit card details \(such as card number and expiration date\) for a payment method configured to serve as a template to customer payment methods that represent credit or debit cards. For details, see the following topics:
    -   [To Add a Credit Card Through Acumatica Payments](AR__HOW_Add_Customer_CC_AuthNet.md)
    -   [To Add a Credit Card by Using the Payment Profile ID](AR__HOW_Add_Customer_CC_PPID.md)

You can see all payment methods used by a customer on the **Payment Methods** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form. This tab displays both payment methods that are available by default \(for those payment methods, the **Override** check box is cleared\) and customer payment methods \(for those methods, the **Override** check box is selected\).

All active payment methods \(those listed on this tab\) can be used for payments by this customer. Inactive methods do not appear on the list of the customer's payment methods.

Also, on the **Payment Methods** tab, you can create a new customer payment method by clicking **Add Payment Method**, and view or edit the details of an existing customer payment method by selecting the method and clicking **View Payment Method**.

## Default Customer Payment Method {#section_mrl_4jv_vxb .section}

You can specify the default payment method for the particular customer by selecting the **Is Default** check box for the selected payment method on the **Payment Methods** tab on the [Customers](AR_30_30_00.md) \(AR303000\) form.

You can specify a default payment method for a customer class. Then when you create a new customer account and associate it with this customer class, the system does one of the following:

-   If the payment method is generic \(it is already present in the customer account\), the system marks it as the default one.
-   If this payment method requires any specific information \(the credit card number, for example\), you have to provide this information to be able to save the new customer account.

After the new customer account is successfully added, the payment method is listed on the **Payment Methods** tab on the [Customers](AR_30_30_00.md) form for this customer and marked as the default method.

When you enter customer payments in accounts receivable, you should first select the customer. Once you do, certain elements on the form are filled in with the settings associated with the selected customer account and its default location and default payment method.

The default payment method provides the identifier of the cash account. If you select a payment method other than the default one, the identifier of the cash account will change to the one associated with the selected payment method. The default payment method and the cash account associated with it can be overridden on customer payments.

## On-the-Fly Creation of a Customer Payment Method {#section_srl_4jv_vxb .section}

If the *Inventory and Order Management* group of features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form—you can create a new customer payment method on the fly as you enter a sales order for the customer. On-the-fly creation mostly is used for customer payment methods that represents the credit or debit card.

If a customer is paying by a credit card other than its default credit card, you can select the non-default card as the **Payment Method** if it has been entered before, or you can enter the details of the new card on the fly if you select the **New Card** check box.

## Deletion of Customer Payment Methods {#section_vrl_4jv_vxb .section}

You can delete customer payment methods that are no longer needed by clicking the **Delete** button on the toolbar of the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form.

**Tip:** A customer payment method that is associated with a processing center can be deleted if it is not referenced in any payment document.

To prevent the usage of a credit card that is used in a document in Acumatica ERP, you perform the following general steps:

1.  In the processing center account, you delete the credit card.
2.  On the [Customer Payment Methods](AR_30_30_10.md) form, you clear the **Active** check box for this credit card.

-   **[To Add a Credit Card Through Acumatica Payments](../UserGuide/AR__HOW_Add_Customer_CC_AuthNet.md)**  

-   **[To Add a Credit Card by Using the Payment Profile ID](../UserGuide/AR__HOW_Add_Customer_CC_PPID.md)**  


