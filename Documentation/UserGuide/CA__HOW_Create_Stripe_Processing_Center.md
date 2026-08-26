# To Create the Stripe Processing Center {#_80fc7569-5f1d-4e31-8fd1-e6b7b437b2cb .task}

To use Stripe integration, you need to create a processing center that uses the Stripe plug-in.

## Before You Proceed { .section}

Make sure that the *Stripe Payment Plug-In* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Create the Stripe Processing Center { .section}

1.  Open the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.
2.  On the form toolbar, click **Add New Record** and specify the following settings in the Summary area:
    -   **Proc. Center ID**: `STRIPE`
    -   **Name**: `Stripe`
    -   **Cash Account**: A cash account to be used for transactions processed by Stripe
    -   **Active**: Selected
    -   **Payment Plug-In**: *Stripe Plug-in*
3.  Optional: On the **Preferences** tab, select the following check boxes:
    -   **Allow Saving Payment Profiles**: To enable the saving of a payment profile by extracting the payment profile ID from the processing center and creating a customer payment method associated with the credit card.
    -   **Synchronize Deletion**: To delete the payment method information from the Stripe server every time a user deletes a customer payment method that is registered with Stripe.
    -   **Accept Payments from New Cards**: To enable the system to accept a payment from a new credit card when you are processing a payment for a particular payment method.
    -   **Allow Unlinked Refunds**: To enable the processing of unlinked refunds for card payment methods associated with the processing center.
4.  On the **Plug-In Parameters** tab, specify the following settings:
    -   **ADDRVERIF**: Cleared if you are not planning to use address verification or selected if you are planning to use address verification.
    -   **CVVVERIF**: If CVC/CVV verification is turned on in the processing center, select this check box.
    -   **MODE**: If you are setting up a test environment, in the **Value** column, select *Test Mode* \(the default value\) to send the credit card data to the processing center without it being validated in the processing center.

        If you are setting up a production environment, in the **Value** column, select *Live Mode*. The credit card data will be sent to the processing center, which will generate a test transaction to validate the customer profile. \(The transaction will be generated with the *0.00* amount, and will be voided immediately by the processing center.\)

    -   **MOTO**: Selected if you are going to use MOTO \(Mail Order/Telephone Order\) transactions.
    -   **PUBLICKEY**: Your public key assigned by Stripe.
    -   **SECRETKEY**: Your secret key assigned by Stripe.
5.  On the form toolbar, click **Save**.
6.  On the form toolbar, click **Test Credentials** to validate the credentials you have entered with the processing center.

## To Set Up Stripe Fees { .section}

1.  Open the [Entry Types](CA_20_30_00.md) \(CA203000\) form.
2.  On the form toolbar, click **Add New Record** and specify the following settings:
    -   **Entry Type ID**: `STRIPEFEE`
    -   **Disb./Receipt**: *Disbursement*
    -   **Entry Type Description**: `Stripe fees`
    -   **Module**: *CA*
    -   **Default Offset Account**: An account that will be used as the default offset account for Stripe fees
3.  On the form toolbar, click **Save** to save your changes.
4.  Open the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.
5.  In the **Proc. Center ID** box, select the processing center set up for Stripe.
6.  On the **Fees** tab, for each automatically added fee type, select *STRIPEFEE* in the **Entry Type** column.

    This is the *Disbursement* entry type you created earlier.

7.  On the form toolbar, click **Save**.

**Parent topic:**[Setup of the Stripe Processing Center](../UserGuide/CA__CON_Setup_Stripe_Proc_Center.md)

