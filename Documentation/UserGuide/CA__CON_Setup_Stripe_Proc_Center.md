# Setup of the Stripe Processing Center {#_074bf7f6-358c-4899-8656-add8601a0f54 .concept}

Acumatica ERP can be configured to support integration with the Stripe processing center, which makes it possible for users to process card payments in the system via Stripe. You can use Stripe integration in the system if the *Stripe Payment Plug-In* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Tip:** On the [Activate License](SM_20_15_10.md) \(SM201510\) form, the *Stripe Payment Plug-In* feature must be included and active. If the payment plug-in is not active in the applied license, the check box with the corresponding feature will not be visible on the [Enable/Disable Features](CS_10_00_00.md) form.

## Stripe Plug-In { .section}

The Stripe plug-in that is used by the Stripe processing center allows users to perform the following actions for B2B processes:

-   Loading card data from the processing center
-   Adding customer payment methods
-   Processing credit card payments
-   Importing settlement batches directly from Stripe into Acumatica ERP

For over-the-counter sales, the Stripe plug-in supports the following actions:

-   Accepting payments from new cards, with or without saving the card
-   Refunding original payments partially or in full

## Configuring Stripe Integration { .section}

To configure Stripe integration, you perform the following steps:

1.  On the [Enable/Disable Features](CS_10_00_00.md)\(CS100000\) form, you enable the *Stripe Payment Plug-In* feature in the *Integrated Card Processing* group of features.
2.  On the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, you create a new processing center with Stripe settings in test mode and test the credentials. If the processing center setup is valid, you can change to live mode. For details, see [To Create the Stripe Processing Center](CA__HOW_Create_Stripe_Processing_Center.md).
3.  If the **Import Settlement Batches** check box is selected for the processing center, Acumatica ERP automatically adds configuration records to the **Fees** tab of the [Processing Centers](CA_20_50_00.md) form.

    On the [Entry Types](CA_20_30_00.md) \(CA203000\) form, you must add a *Disbursement* entry type for Stripe fees and select this entry type for each automatically added record on the [Processing Centers](CA_20_50_00.md) form. For details, see [To Create the Stripe Processing Center](CA__HOW_Create_Stripe_Processing_Center.md).

4.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, you create a payment method for each bank operator whose cards you are going to process \(such as Visa, Mastercard, or American Express\), and associate payment methods with the Stripe processing center. You can then use these payment methods as templates to create customer payment methods. For details, see [To Create a Stripe Payment Method](CA__HOW_Create_Stripe_Payment_Method.md).
5.  You collect credit and debit card details from your customers. Then on the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form, you create customer payment methods for all customers whose payments you want to process with the Stripe processing center.

-   **[To Create the Stripe Processing Center](../UserGuide/CA__HOW_Create_Stripe_Processing_Center.md)**  

-   **[To Create a Stripe Payment Method](../UserGuide/CA__HOW_Create_Stripe_Payment_Method.md)**  


**Parent topic:**[Configuring Payment Processing](../UserGuide/CA__MNG_Payment_Processing.md)

