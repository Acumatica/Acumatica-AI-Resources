# To Configure the Authorize.Net Processing Center

You use the [Processing Centers](CA_20_50_00.md) \(CA205000\) form to configure the settings of the Authorize.Net processing center.

**Attention:** If your system has multiple tenants, a separate processing center account must be configured for each tenant; otherwise, payments from customers defined in different tenants may be assigned the same payment reference numbers in Acumatica ERP, causing data inconsistency.

## Before You Proceed

Review the card payment processing methods described in [Setup of Integration with Authorize.Net](CA__CON_CardProcessingScenario.md), and decide which one you'll use.

Before you configure the processing center, make sure that you have the API login, signature key, and transaction key you will use to connect to the Authorize.Net server. Also, check with your system administrator to make sure that you have a valid SSL certificate and that your website is capable of initiating both client- and server-side SSL connections.

Make sure that the *Authorize.Net Payment Plug-In* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Configure the Processing Center

1.  Open the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.
2.  Click **Add New Record** on the form toolbar.
3.  In the **Proc. Center ID** box, type the identifier to be used for the processing center.
4.  In the **Name** box, type the name of the processing center.
5.  In the **Cash Account** box, select the cash account to be associated with the processing center.

    The cash account selected here defines the currency in which transaction amounts are processed. The currency of the cash account must be the same as the currency you specified when you subscribed to Authorize.Net.

6.  Select the **Active** check box so that you can select a plug-in in the **Payment Plug-In** box.
7.  In the **Payment Plug-In** box, select the *Authorize.Net API* plug-in.

    The settings for the selected plug-in appear on the **Plug-In Parameters** tab.

8.  On the **Plug-In Parameters** tab, specify the following settings:
    -   **MERCNAME**: The API login that you have created in the Authorize.Net Merchant Interface.
    -   **SIGNKEY**: The signature key used by web hooks.
    -   **TESTMODE**: A value that indicates whether you are using the production account or a sandbox account. Change the value from *0* to *1* if you are configuring the processing center to connect to a sandbox merchant account. The default value, *0*, means that the production URL is used for the connection.
    -   **TRANKEY**: The transaction key you have created in the Authorize.Net Merchant Interface.
    -   **VALIDATION**: The processing mode for the request.
        1.  If you are setting up a test environment, in the **Value** column, select *Test Mode* \(the default value\) to send the credit card data to the processing center without it being validated in the processing center.
        2.  If you are setting up a production environment, in the **Value** column, select *Live Mode*. The credit card data is sent to the processing center, which generates a test transaction to validate the customer profile. Authorize.Net generates the transaction with the *0.00* amount and voids it immediately.
9.  Optional: On the **Preferences** tab, specify the following settings:
    -   **Allow Saving Payment Profiles**: Selected if you want to allow saving a payment profile by extracting the payment profile ID from the processing center and creating a customer payment method associated with the credit card.
    -   **Synchronize Deletion**: Selected if you want payment method information to be automatically deleted from the Authorize.Net server when a user deletes a customer payment method \(that is registered with Authorize.Net\) in Acumatica ERP.
    -   **Accept Payments from New Cards**: Selected if you want this processing center to accept payments from customers' credit cards that are not stored in the system.
    -   **Create Additional Customer Profiles**: Selected if you plan to accept payments from customers who use more than 10 payment methods.
10. On the form toolbar, click **Save**.
11. On the form toolbar, click **Test Credentials** to validate the credentials you have entered with the processing center.

**Parent topic:**[Setup of Integration with Authorize.Net](../UserGuide/CA__CON_CardProcessingScenario.md)

