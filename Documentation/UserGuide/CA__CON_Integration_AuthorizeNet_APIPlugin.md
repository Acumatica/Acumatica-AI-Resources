# Integration with Authorize.Net Through the API Plug-in

You integrate with Authorize.Net through the built-in API plug-in. You use the Authorize.Net hosted form to fill in customer credit card details.

## Integration Details

The plug-in uses Authorize.Net API to submit transactions to the payment gateway. This plug-in provides the PCI DSS–compliant integration with Authorize.Net, and sensitive credit card information is not stored in the Acumatica ERP database. The system sends customer credit card details to the processing center through an encrypted channel.

Integration with Authorize.Net also requires that you have a valid SSL certificate and that your website is capable of initiating both client- and server-side SSL connections.

## Support of Multiple Currencies

Authorize.Net supports multiple currencies. You select the currency to be used for processing transactions when you set up the merchant account. Make sure that all accounts involved in payment processing are denominated in the currency you specified for your merchant account in Authorize.Net. For each currency, you need to apply for a separate merchant account with Authorize.Net and configure a dedicated processing center in Acumatica ERP.

## Support of Fraud Detection Services

The plug-in supports fraud detection services enabled in the Authorize.Net Merchant Interface when a user adds a new credit card for a customer by using the Authorize.Net hosted form.

For example, if you turned on the address verification service provided in the Authorize.Net Merchant Interface, after you have integrated Acumatica ERP and Authorize.Net, this service verifies the address when a user adds a new credit card for a customer.

## Validation Modes

The plug-in supports the following validation modes that you set up on the **Settings** tab of the [Processing Centers](CA_20_50_00.md) \(CA205000\) form:

-   *Test Mode*: Recommended for a test environment. The credit card data is sent to the processing center but not validated there, and no test transaction is generated.
-   *Live Mode*: Used for a production environment. The credit card data is sent to the processing center, which generates a test transaction to validate the customer profile. The processing center creates a test transaction with the *0.00* amount and then voids it automatically.

For details, see [To Configure the Authorize.Net Processing Center](CA__HOW_Configure_AuthorizeNet_ProcCenterAPI.md).

## Support of CCV Verification

Users can configure the *Enhanced CCV Handling Filter* in the Authorize.Net Merchant Interface to turn on Card Code Verification \(CCV\). Authorize.Net declines a transaction when the entered card code doesn't match the code on file for the card.

For CCV verification to be turned on for a processing center, on the **Plug-In Parameters** tab of the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, *Live Mode* must be selected for the *VALIDATION* setting in the table.

## Update of Expiration Dates

The plug-in supports the retrieval of unmasked expiration dates from Authorize.Net. By using the **Update Expiration Dates** button on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, you can retrieve expiration dates for customer payment methods for which these dates were not specified.

## Record Maintenance

When you add a credit or debit card for a customer account for the first time by using Acumatica ERP, Authorize.Net returns the following:

-   **Customer Profile ID**: The identifier that is associated with the customer account. Its main purpose is to link multiple payment profiles \(credit or debit cards\) with a single customer entity.
-   **Payment Profile ID**: The identifier that is associated with the customer payment method. This identifier is used for storing sensitive payment information with Authorize.Net in a secure and PCI-compliant manner.

When you add another credit or debit card for this customer account, Acumatica ERP includes the customer profile ID of the customer in the request sent to Authorize.Net, and in return receives only the new payment profile identifier that has been linked to this customer profile identifier.

By using these two identifiers, Acumatica ERP and Authorize.Net synchronize the changes of the customer payment method in both systems. You can edit the details of a payment method by using the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form and the Authorize.Net Merchant Interface tools.

You can control the synchronization of the deletion of profiles by using the **Synchronize Deletion** check box on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form as follows:

-   Cleared: With this setting, when a user deletes \(in Acumatica ERP\) a customer payment method that is registered with Authorize.Net, the payment method information is not deleted from the Authorize.Net server.
-   Selected: With this setting, when a user deletes \(in Acumatica ERP\) a customer payment method that is registered with Authorize.Net, the payment method information is automatically deleted from the Authorize.Net server.

## Restriction on the Number of Payment Methods

Authorize.Net allows up to 10 payment profiles for a single customer profile. If you have customers who use more than 10 credit or debit cards to pay for your goods or services, select the **Create Additional Customer Profiles** check box on the **Preferences** tab of the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.

With the check box selected, each time the number of payment profiles exceeds 10 for a customer profile in Authorize.Net, the system creates an additional customer profile to be associated with the respective customer account in Acumatica ERP. For example, when you add a credit or debit card for a customer account, the system checks whether the number of payment profiles for this customer exceeds 10. If it does, the system creates an additional customer profile for this customer at Authorize.Net. The system associates the next nine payment profiles with the additional customer profile for the customer.

**Tip:** If you want to decrease the threshold, you can specify a new one in the **Maximum Credit Cards per Profile** box, which is displayed when the **Create Additional Customer Profiles** check box is selected on the **Preferences** tab.

## Integration Setup

To start processing payments from customers with Authorize.Net, you should perform the following steps:

1.  **Sign up with Authorize.Net.** Apply for a payment gateway account and a merchant account if you don't have them, then sign in to the Authorize.Net Merchant Interface and create your API login ID and transaction key.

    A merchant account is an agreement with a merchant bank that lets you accept credit and debit card payments. The processing center uses your API login ID and transaction key to authenticate you and confirm you're authorized to submit transactions.

    **Tip:** You can also create a [sandbox account](http://developer.authorize.net/#sandbox) at Authorize.Net to test payment processing. For details, see [Sandbox Testing with the Plug-in](#_0adfda98-c816-4bdb-aa66-5c36c060de87).

2.  Make sure that the *Authorize.Net Payment Plug-In* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
3.  Configure the Authorize.Net processing center in Acumatica ERP.

    **Tip:** If your company works with one-time customers \(those that are configured as a no-name customer in Acumatica ERP\), we recommend configuring the Authorize.Net processing center with the following settings on the **Preferences** tab of the [Processing Centers](CA_20_50_00.md) \(CA205000\) form:

    -   **Create Additional Customer Profiles**: Selected
    -   **Maximum Credit Cards per Profile**: `1`
    For details, see [To Configure the Authorize.Net Processing Center](CA__HOW_Configure_AuthorizeNet_ProcCenterAPI.md).

4.  Optional: Create a vendor account for Authorize.Net by using the [Vendors](AP_30_30_00.md) \(AP303000\) form, and specify the accounts \(and subaccounts\) for recording any fees and charges applied by the center for processing your credit card transactions.
5.  Create a payment method for each bank operator whose cards you are going to process \(such as Visa, Mastercard, or American Express\), and associate payment methods with the Authorize.Net processing center. You can then use these payment methods as templates to create customer payment methods. For details, see [To Add a Payment Method for Payment Processing](CA__HOW_Add_PM_Card.md).
6.  Collect credit and debit card details from your customers, and create customer payment methods for all customers whose payments you want to process with Authorize.Net. For details, see [Configuring Customer Payment Methods](AR__CON_Customer_PaymentMethods.md).
7.  Test payment processing with Authorize.Net, as described in the next section.

## Authorize.Net Account Test Mode

After initial setup, your Authorize.Net account is placed in test mode by default. In test mode, Authorize.Net does not process transactions and always returns a successful response. Thus, a test payment never gets charged.

The Acumatica ERP plug-in is configured to use the live connection URL by default. Namely, the **TESTMODE** parameter is set to *0*.

To switch test mode off, log in to the Authorize.Net Merchant Interface, and switch off test mode.

## Sandbox Testing with the Plug-in

You can create a sandbox account at Authorize.Net to test payment processing. The sandbox account provides the same Merchant Interface as a live merchant account does. You generate the API login and transaction key in the Merchant Interface. Then you configure a processing center by using the generated login and transaction key, and you change the value of the **TESTMODE** parameter to *1*. With this setting, the plug-in will use sandbox URL for connection.

**Parent topic:**[Setup of Integration with Authorize.Net](../UserGuide/CA__CON_CardProcessingScenario.md)

