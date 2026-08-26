# To Create a Stripe Payment Method {#_30fe913d-e2b0-4bbd-aa48-f92eff939748 .task}

You use the [Payment Methods](CA_20_40_00.md) \(CA204000\) form to create a payment method. This procedure describes how you create a payment method that is used as a template for configuring customer payment methods—credit or debit cards.

## Before You Proceed { .section}

You should review the cash accounts you have defined in the system, and decide which one you are going to use to record customer payments made with the payment method you are adding.

Make sure that you have configured the processing center and established and tested the connection to the Stripe payment gateway. For details, see [To Create the Stripe Processing Center](CA__HOW_Create_Stripe_Processing_Center.md).

## To Add a Payment Method for Stripe { .section}

1.  Open the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Payment Method ID** box, type the identifier to be used for the payment method \(such as *VISA*, *MASTERCARD*, or *AMEX*\).
4.  Select the **Active** check box to make the payment method available for use in the system.
5.  In the **Means of Payment** box, select *Credit Card* to use the template that is specifically designed for the configuration of credit and debit cards.

    When you select this template, the system adds the built-in elements that are usually established by financial institutions and required by the processing center to the **Payment Method Details** table on the **Settings for Use in AR** tab. Also, this selection causes the **Integrated Processing**, **Require Card/Account Number**, and the **Has Billing Information** check boxes to be selected automatically.

6.  Select the **Use in AR** check box to make the payment method available for the creation of customer methods.
7.  Make sure that the **Use in AP** and **Require Remittance Information for Cash Account** check boxes are cleared.
8.  In the **Description** box, type a description of the payment method.
9.  On the **Allowed Cash Accounts** tab, do the following for each cash account you are planning to record customer payments to as follows:
    1.  Click **Add Row** on the table toolbar, and select the cash account.
    2.  If the selected cash account in this row should be used by default for recording card transactions, select the **AR Default** check box.
    3.  Optional: Select the **AR-Suggest Next Number** check box to enable auto-numeration of the payments created with this payment method and cash account. If you have selected the check box in the **AR Last Reference Number** column, specify the last number of the payment made, which will be incremented by 1 each time you create a new payment. The system automatically assigns the next number in the **Payment Ref.** box on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.
10. On the **Settings for Use in AR** tab, do the following:
    1.  Make sure that the **Integrated Processing** check box is selected.

        The **Processing Centers** tab appears on the form so you can associate the payment method with the processing center that you have configured \(which you will do in the next step\).

    2.  Make sure that the **Require Card/Account Number** check box is selected.

        **Attention:** The system verifies the state of the **Integrated Processing** and **Require Card/Account Number** check boxes and, if they differ \(for example, one is selected and the other one is cleared\), displays an error message when you do either of the following:

        -   You save the payment method.
        -   You change the value of either of the following UI elements: the **Integrated Processing** check box, the **Require Card/Account Number** check box, the **Means of Payment** box in the Summary area, and the **Use in AR** check box in the Summary area.
    3.  If you use address verification, select the **Has Billing Information** check box.
    4.  Make sure that the **Void Using Clearing Account** and the **Use Document Date as Void Date** check boxes are cleared \(because these are used for processing deposits\).
11. On the **Processing Centers** tab, which you use to associate the payment method with multiple processing centers, do the following for each processing center:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Proc. Center ID** box, select the processing center that you have configured for integration with Stripe.
    3.  Select the **Active** check box to make the association available.
    4.  Optional: Select the **Default** check box if this processing center should be used by default with this payment method.
12. On the form toolbar, click **Save**.

**Parent topic:**[Setup of the Stripe Processing Center](../UserGuide/CA__CON_Setup_Stripe_Proc_Center.md)

