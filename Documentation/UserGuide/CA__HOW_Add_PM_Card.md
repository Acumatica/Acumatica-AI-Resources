# To Add a Payment Method for Payment Processing

You use the [Payment Methods](CA_20_40_00.md) \(CA204000\) form to create a payment method. This procedure describes how to create a payment method—such as Visa, Mastercard, or American Express—that serves as a template for configuring customer credit or debit cards.

## Before You Proceed

Review the cash accounts you have defined in the system, and decide which one you'll use to record customer payments made with the payment method you are adding. For details, see [Setup of Integration with Authorize.Net](CA__CON_CardProcessingScenario.md).

Make sure that you have configured the processing center and established and tested the connection to the Authorize.Net processing center.

## To Add a Payment Method for Payment Processing

1.  Open the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Payment Method ID** box, type the identifier to be used for the payment method \(such as *VISA*, *MASTERCARD*, or *AMEX*\).
4.  Select the **Active** check box to make the payment method available for use in the system.
5.  In the **Means of Payment** box, select *Credit Card* to use the template that is specifically designed for the configuration of credit and debit cards.

    When you select this template, the system adds a set of built-in elements to the **Payment Method Details** table on the **Settings for Use in AR** tab. These elements are the ones financial institutions usually establish and the processing center requires. This selection also causes the **Integrated Processing**, **Require Card/Account Number**, and **Has Billing Information** check boxes to be selected automatically.

6.  Select the **Use in AR** check box to make the payment method available for the creation of customer payment methods.
7.  Make sure that the **Use in AP** and **Require Remittance Information for Cash Account** check boxes are cleared.
8.  In the **Description** box, type a description of the payment method.
9.  On the **Allowed Cash Accounts** tab, for each cash account you plan to record customer payments to, do the following:
    1.  Click **Add Row** on the table toolbar, and select the cash account.
    2.  If the selected cash account in this row should be used by default for recording card transactions, select the **AR Default** check box.
    3.  Optional: Select the **AR-Suggest Next Number** check box to enable auto-numbering of the payments created with this payment method and cash account. If you have selected the check box in the **AR Last Reference Number** column, specify the last number of the payment made, which the system increments by 1 each time you create a new payment. The system automatically assigns the next number in the **Payment Ref.** box on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.
10. On the **Settings for Use in AR** tab, do the following:
    1.  Make sure that the **Integrated Processing** check box is selected.

        The **Processing Centers** tab appears on the form so you can associate the payment method with the processing center that you have configured \(which you will do in the next step\).

    2.  Make sure that the **Require Card/Account Number** check box is selected.

        **Attention:** The system verifies the state of the **Integrated Processing** and **Require Card/Account Number** check boxes and, if they differ \(for example, one is selected and the other one is cleared\), displays an error message when you do either of the following:

        -   You save the payment method.
        -   You change the value of any of the following UI elements: the **Integrated Processing** check box, the **Require Card/Account Number** check box, the **Means of Payment** box in the Summary area, and the **Use in AR** check box in the Summary area.
    3.  If you use the address verification service of Authorize.Net, select the **Has Billing Information** check box.
    4.  Make sure that the **Void Using Clearing Account** and **Use Document Date as Void Date** check boxes are cleared \(because these are used for processing deposits\).
11. On the **Processing Centers** tab, which you use to associate the payment method with multiple processing centers, do the following for each processing center:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Proc. Center ID** column, select the processing center that you have configured for integration with Authorize.Net.
    3.  Select the **Active** check box to make the association available.
    4.  Optional: Select the **Default** check box if this processing center should be used by default with the payment method.
12. On the form toolbar, click **Save**.

After the payment method is configured, you should configure the customer payment methods by specifying custom information for each customer account. For details, see the following procedures:

-   [To Add a Credit Card Through Acumatica Payments or Authorize.Net](AR__HOW_Add_Customer_CC_AuthNet.md)
-   [To Add a Credit Card by Using the Payment Profile ID](AR__HOW_Add_Customer_CC_PPID.md)

**Parent topic:**[Setup of Integration with Authorize.Net](../UserGuide/CA__CON_CardProcessingScenario.md)

