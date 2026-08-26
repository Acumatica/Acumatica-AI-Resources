# Cash Management: Payment Methods {#_69a90616-7eba-4c89-8c96-0ba2e29071c8 .concept}

In Acumatica ERP, you can configure the payment methods that your organization uses to pay its vendors, as well as the payment methods that are used by customers to pay your organization. The settings of the payment methods determine how the particular payment is done and provide the default cash account to be used to record payments.

Acumatica ERP has predefined payment methods that you can adjust to meet the business needs of your organization.

## Payment Method Setup { .section}

You use the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form to review the predefined payment methods and update them. \(You can also define new payment methods on this form.\)

On this form, you perform the following general steps to set up a payment method:

1.  In the Summary area, you specify the identifier, the means of payment \(*Credit Card*, *Cash/Check*, or *Direct Deposit*\), and the description.
2.  You use the appropriate check boxes to specify how you want the payment method to be used. If the payment method is used for customer payments, you select the **Use in AR** check box. If the payment method is used for payments to vendors, you select the **Use in AP** check box.
3.  On the **Allowed Cash Accounts** tab, you add rows for each of the cash accounts to be linked to this payment method, and you specify the appropriate settings for each listed account. The linked cash accounts can include regular cash accounts and clearing accounts.
4.  If necessary, you modify the settings on the **Settings for Use in AR** and **Settings for Use in AP** tabs.
5.  In the Summary area, you make sure that the **Active** check box is selected so that the payment method can be used.

## Default Processing Centers by Payment Method and Branch { .section}

When setting up a payment method, you can specify default processing centers based on specific **branch and payment method**combinations. The system will automatically insert the default processing center when a user creates a document on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\), [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\), or [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form.

To set up the default processing center for each branch, you perform the following steps:

1.  On the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form, you select the needed payment method.

    You can specify branch-specific default processing centers only if the payment method has the **Integrated Processing** check box selected on the **Settings for Use in AR** tab.

2.  On the **Processing Centers** tab, you select a processing center in the **Processing Centers** table.
3.  On the table toolbar of the **Overrides by Branch** table, you click **Add Row**.
4.  In the new row, you select the specific branch and its default processing center.
5.  You click **Save** to save your changes.

When you create a document and select a payment method with integrated processing \(*Credit Card*, *EFT*, or *POS*\), the system uses the settings in the **Overrides by Branch** table to insert the default processing center. It uses the following logic:

1.  **Does the customer have a default customer payment method \(a card or account number\) for the selected payment method?**
    -   **Yes**: Inserts the default customer payment method in the **Card/Account Nbr.** box, regardless of the processing center with which it is configured, and stops the process.
    -   **No**: Goes to Step 2.
2.  **Does the customer have any non-default customer payment methods for the selected payment method?**
    -   **Yes**: Inserts the customer payment method with the latest card expiration date. If a default branch–processing center combination is defined, selects the customer payment method with the matching processing center.
    -   **No**: Does the following:
        1.  Selects the **New Card** check box.
        2.  Inserts the default processing center based on the default setup on the **Processing Centers** tab of the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form. If default overrides by branch are defined, it inserts the processing center from the default settings for the specified branch.
        3.  Inserts the default cash account based on the default setup on the **Allowed Cash Accounts** tab of the [Payment Methods](../UserGuide/CA_20_40_00.md) form.

The branch the system uses to determine the default processing center depends on the payment method's means of payment:

-   *Credit Card* or *EFT*: The document's branch
-   *POS*: The current branch of the user entering the document

If you delete a processing center on the [Processing Centers](../UserGuide/CA_20_50_00.md) form, the system will remove the default settings for this processing center on the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form.

## Example of Inserting the Default Processing Center { .section}

Suppose that the following **payment methods** are configured in the system:

-   *CreditCard1*
-   *CreditCard2*

Both payment methods are configured to work with processing centers *PC1* and *PC2*.

On the **Processing Centers** tab of the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form, the following settings are added in the **Overrides by Branch** table for both payment methods.

|Branch|Default Processing Center|
|------|-------------------------|
|*Branch A*|*PC1*|
|*Branch B*|*PC2*|

Suppose that *Customer 1* has a customer payment method \(a saved card\) for the combination of the *CreditCard1* payment method and the *PC2* processing center. This customer payment method is selected as the default one on the **Payment Methods** tab of the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.

*Customer 2* has three customer methods \(saved cards\)—none of which is defined as the default customer payment method:

-   Two cards for the combination of the *CreditCard1* payment method and the *PC1* processing center
-   One card for the combination of the *CreditCard1* payment method and the *PC2* processing center

Consider the following cases in which a user creates a payment on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form and the system inserts the default customer payment method:

-   **Case 1**: The payment is from *Branch A* for *Customer 1* and the *CreditCard1* payment method. The system inserts the default customer payment method in the payment. It doesn’t matter that the *CreditCard1* payment method is configured with the *PC2* processing center and the default processing center for *Branch A* is *PC1*.
-   **Case 2**: The payment is from *Branch A* for *Customer 2* and the *CreditCard1* payment method. The system inserts one of the two customer payment methods configured with the *CreditCard1* payment method and the *PC1* processing center—the one with the latest card expiration date.
-   **Case 3**: The payment is from *Branch A* for *Customer 1* and the *CreditCard2* payment method. The system selects the **New Card** check box and inserts the *PC1* processing center as the default one.

## Payment Method Deactivation { .section}

On the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form, you can deactivate a payment method if you do not want it to be used for new payments.

If you deactivate the processing center on the [Processing Centers](../UserGuide/CA_20_50_00.md) \(CA205000\) form, the system will ignore the default setting for this processing center.

If a payment method has been deactivated, the unreleased payments that use this payment method cannot be processed on the [Process Payments / Print Checks](../UserGuide/AP_50_50_00.md) \(AP505000\) form, but they can be released. You can select an inactive payment method in the **Payment Method** box on the [Release Payments](../UserGuide/AP_50_52_00.md) \(AP505200\) form to release the payments that use this payment method.

**Parent topic:**[Cash Management](../ImplementationGuide/config_CA_Mapref.md)

