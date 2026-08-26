# Accepting Payments by Using Mobile Card Readers {#_2f3e29cd-b935-4932-a68b-2d60fa547f20 .concept}

Your employees can seamlessly collect customer bank payments directly through the Acumatica mobile app. Whether they’re in the field or on the sales floor, employees can initiate secure EMV \(Europay, Mastercard, and Visa\) card payments by using a compact Bluetooth® Low Energy \(LE\) card reader. This simple, mobile-friendly solution empowers sales representatives and technicians to complete transactions quickly and confidently on the go.

**Usage Scenario**

A field service technician has performed maintenance at a customer's site and wants to collect payment for the services and parts. The customer wants to pay by credit card. Here are the next steps:

1.  The technician sets up the payment in the Acumatica mobile app on their phone.
2.  The technician turns on and connects a mobile card reader.
3.  The customer inserts a credit card in the reader and the transaction is performed.
4.  Once the transaction has been completed successfully, the technician sends a receipt by email and leaves.

## Functionality Setup { .section}

The functionality setup includes the following general steps:

1.  Set up a processing center on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.
2.  On the **Preferences** tab of the [Processing Centers](CA_20_50_00.md) form, for the new processing center, select the **Use EMV Card Reader with Mobile App** check box.

    This causes the **Authenticate EMV Card Reader** command to appear on the form toolbar. This command establishes an open authorization \(OAuth\) connection between Acumatica ERP and the processing center.

    **Attention:** The OAuth connection allows users to grant third-party applications access to their resources without sharing their passwords. It works by using access tokens that are issued to the third-party application after the user authorizes it. These tokens can be used to access the user's data on behalf of the user, ensuring security and privacy.

3.  Click **Authenticate EMV Card Reader** on the form toolbar and enter the domain, username, and password to sign in to the processing center and establish an OAuth connection between the mobile app and the processing center.

    **Attention:** OAuth must be set up for a location user account that has:

    -   Access to the same location specified on the **Plug-In Parameters** tab of the [Processing Centers](CA_20_50_00.md) form
    -   A role in the processing center that allows creating credit card sales
4.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, create a payment method selecting *EMV Mobile Card Reader* in the **Means of Payment** box.
5.  On the **Processing Centers** tab of the [Payment Methods](CA_20_40_00.md) form, assign the processing center to the payment method.

For details, see [To Set Up the EMV Card Reader Functionality](AR__HOW_To_Set_Up_Mobile_Card_Readers.md).

## Changes in Payment Processing { .section}

If a payment method with the *EMV Mobile Card Reader* means of payment is selected for a document on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the payment processing changes as follows:

-   You can authorize and capture card transactions only in the Acumatica mobile app.
-   If you open this document in Acumatica ERP, you can perform actions with active card transactions only. For example, you can capture a transaction that's been previously authorized, validate a card transaction, void or refund a transaction, or record a transaction. If there are no active card transactions, only the **Record Card Transaction** command is available in Acumatica ERP.
-   The credentials of the merchant location \(location and access token\) are sent to the mobile app when you click **Authorize** or **Capture** in the mobile app.
-   Once you initiate a card transaction, the mobile app connects to the card reader via Bluetooth and sends complete transaction data.

## Process Limitations { .section}

-   The system will process voided payments and refunds as card-not-present \(CNP\) transactions based on the previous transaction ID.
-   Users can't create unlinked refunds with the *EMV Mobile Card Reader* means of payment.

**Parent topic:**[Configuring and Using Acumatica Payments](../UserGuide/AR__MNG_Acumatica_Payments.md)

