# To Add a Credit Card by Using the Payment Profile ID {#_43bba385-3624-4fd9-84c5-ecb6350082f2 .task}

You use the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form to add a payment method that is specific to the particular customer account.

This procedure describes how you add a credit card for a customer account by using a payment profile ID obtained in the Acumatica Payments processing center.

## Before You Proceed {#section_ntl_4jv_vxb .section}

Review the customer profile identifier and payment profile identifier you have received by registering a new customer credit card through Acumatica Payments.

Make sure that you have configured integration with Acumatica Payments, as described in [To Configure Acumatica Payments](AR__HOW_To_Configure_Acumatica_Payments.md) and established and tested the connection to the payment gateway.

Finally, review the payment methods you have configured to be used as templates for a customer credit cards and make sure that they are configured as described in [Payment Methods for Customers](CA__CON_PMs_for_Customers.md).

## To Add a Credit Card to a Customer Account {#section_rtl_4jv_vxb .section}

1.  Open the [Customer Payment Methods](../Shared/../UserGuide/AR_30_30_10.md) \(AR303010\) form.
2.  In the Summary area, do the following:
    1.  In the **Customer** box, select the customer account for which you want to add a credit card.
    2.  In the **Payment Method** box, select the payment method that you have configured to be used as a template. The system fills in the **Proc. Center ID** box with the identifier of the processing center that is associated with the selected payment method. Also, the system changes the layout and content of the **Payment Method Details** tab based on the configuration of the processing center.

        **Attention:** For the selected processing center, saving payment profiles must be allowed—that is, on the [Processing Centers](../Shared/../UserGuide/CA_20_50_00.md) \(CA205000\) form, the **Allow Saving Payment Profiles** check box must be selected.

    3.  Optional: In the **Cash Account** box, select the cash account to be used by default with the credit card. If you skip this step, the system will use the default cash account of the selected payment method.
3.  On the **Payment Method Details** tab, type the payment profile identifier as the **Value** of the *Payment Profile ID* parameter.
4.  Click **Save**. The data is sent to the processing center for processing.

The processing center returns the **Customer Profile ID**, which is the identifier that is associated with the customer account, and the system automatically fills in the corresponding box on the form.

Acumatica ERP automatically generates an identifier for **Card/Account Nbr.** that includes the description of the method and a masked card number.

**Parent topic:**[Configuring Customer Payment Methods](../UserGuide/AR__CON_Customer_PaymentMethods.md)

