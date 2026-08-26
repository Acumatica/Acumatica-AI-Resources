# Card Payments {#_df8b048c-059f-4ef3-9174-6d8d1dab91e0 .concept}

Before processing payments, you configure processing centers in Acumatica ERP, as described in [Configuring Payment Processing](CA__MNG_Payment_Processing.md). This topic describes how the processing of card payments typically unfolds.

## Processing Payments {#section_oks_4jv_vxb .section}

Payments can be collected automatically from customers with default payment methods based on credit cards. For details on configuring automatic payment processing, see [Automatic Payment Collection](AR__con_Automatic_Payment_Collection.md).

For invoices that have credit card customer payment methods selected for the payments, you use the following forms to process payments:

-   [Generate Payments](AR_51_10_00.md) \(AR511000\) form: To generate payment documents for the invoices you select. You can select customer invoices that have due dates approaching or that are overdue and generate payment documents for selected invoices.
-   [Capture Payments](AR_51_15_00.md) \(AR511500\) form: To perform the mass-processing of customer payments by using the customers' default cards and a specific processing center.

For each customer with at least one valid credit card, any document may be paid by using the card, with the payment process initiated on a per-document basis. To process a payment for a particular document, use either of the following forms:

-   [Payments and Applications](AR_30_20_00.md) \(AR302000\): On this form, you create a payment by using a customer card as a payment method. You then click **Capture** on the form toolbar to initiate the payment process through the appropriate processing center. When the system receives a response about the capture transaction being successful, the system releases the payment.
-   [Cash Sales](AR_30_40_00.md) \(AR304000\): On this form, you create an invoice with a credit card payment method to record cash sales of goods that are paid immediately by credit card. You then click **Capture** on the form toolbar to initiate the payment process through an appropriate processing center. When the system receives a response about the capture transaction being successful, the system releases the cash sale invoice.

## Processing Payments from New Credit Cards {#section_uks_4jv_vxb .section}

In Acumatica ERP, you can enter information about a new credit card while processing a payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. For details on configuring a processing center for Acumatica Payments, see [To Configure Acumatica Payments](AR__HOW_To_Configure_Acumatica_Payments.md).

When you need to accept a payment from a customer's credit card that is not stored in Acumatica ERP, the processing of the payment occurs as follows:

1.  You create a payment or prepayment on the [Payments and Applications](AR_30_20_00.md) form and initiate the processing of a credit card payment by clicking **Capture** or **Authorize** on the More menu \(under **Card Processing**\).
2.  Acumatica ERP displays the hosted form filled in with the payment amount and customer address.
3.  You enter the new credit card data and initiate the payment.
4.  Acumatica ERP sends the payment data to the processing center.
5.  Acumatica ERP receives a response from the processing center; it then saves the transaction data, customer profile ID, and customer payment profile ID for further reference.

For details on entering a payment from a new credit card, see [To Enter a Payment from a New Credit Card](AR__how_Enter_Payment_from_New_Card.md).

## Processing Credit Card Transactions Held for Review by the Processing Center {#section_yks_4jv_vxb .section}

Some transactions are considered suspicious by the processing center, with the conditions defining which transactions should be held for review defined in the fraud detection terms of the specific processing center. If a user enters a suspicious transaction, Acumatica ERP displays a warning message, assigns the *Held for Review \(Authorization\)* or *Held for Review \(Capture\)* status to this payment, and assigns the *Held for Review* status to this transaction, which should then be approved. You can view these statuses in the following elements on the mentioned forms:

-   The **Tran. Status** column in the **Card Processing** table on the **Payment Information** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form
-   The **Tran. Status** column on the **Card Processing** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form
-   The **Tran. Status** column on the **Card Processing** tab of the [Cash Sales](AR_30_40_00.md) \(AR304000\) form
-   The **Proc. Status** column on the [Validate Card Payments](AR_51_30_00.md) \(AR513000\) form

Once a credit card transaction has received the *Held for Review* status, you should go to the processing center UI and approve or void the transaction. For details, see [To Process a Transaction Held for Review by the Processing Center](AR__HOW_To_Process_CCTransaction_Held_for_Review.md).

After the transaction has been processed in Acumatica Payments, on the [Payments and Applications](AR_30_20_00.md) form, you click **Validate Card Payment** \(under **Card Processing**\) on the More menu. As a result, the system performs the following actions:

1.  Updates the processing status of the transaction in the **Processing Status** box of the Summary area.
2.  On the **Card Processing** tab, adds an appropriate transaction record.
3.  Does one of the following, depending on what type the transaction is and whether the transaction has been approved or voided:
    -   For approved capture transactions: releases the payment, and for a payment from a new card, creates a customer payment method and assigns it to this payment.
    -   For approved authorization transactions: creates a customer payment method for the payment from the new card, and assigns the payment method to this payment.

For details, see [To Process a Transaction Held for Review by the Processing Center](AR__HOW_To_Process_CCTransaction_Held_for_Review.md).

You can update the processing status of multiple credit card transactions held for review by the processing center at once on the **Held for Review** tab of the [Validate Card Payments](AR_51_30_00.md) \(AR513000\) form. The table on this tab displays the transactions held for review by all processing centers configured in Acumatica ERP. You can display only the transactions processed by a particular processing center by selecting the processing center in the **Proc. Center ID** box in the Selection area of the form. To update the payment processing status for individual credit card transactions, you select the unlabeled check box in the rows of the transactions and click **Validate** on the form toolbar. To update the payment processing status for all credit card transactions in the table, you click **Validate All** on the form toolbar. If the processing status of the credit card transaction changes as a result of the validation, the transaction disappears from the table, and the transaction should be further processed as described earlier in this section.

To avoid manual validation of credit card transactions held for review by processing centers, you can set up an automation schedule that will run the validation process at specific intervals. You define a schedule on the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form, which you can open by clicking **Schedule** &gt; **Add** on the toolbar of the [Validate Card Payments](AR_51_30_00.md) form. For more information on automation schedules, see [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md).

**Tip:** We recommend the following schedules for reviewing and processing credit card transactions held for review:

-   Review credit card transactions marked as suspicious in the processing center as soon as possible, at least once a day.
-   Run the validation process for individual credit card transactions as needed for the processing of particular payments with which these transactions are associated.
-   Run the validation process for all transactions on the [Validate Card Payments](AR_51_30_00.md) form at least once a day.

## Handling Failed Transactions {#section_hls_4jv_vxb .section}

By using Acumatica ERP inquiry forms, authorized users can view successful and failed credit card transactions and handle them properly. On the [Payment Method Transaction History](AR_40_60_00.md) \(AR406000\) form, you can perform inquiries on transactions that occurred during a particular interval or with a particular credit card.

You can also review failed transactions by using the [Payment Processing Log](AR_40_65_00.md) \(AR406500\) form. Note the response reason code from the processing center and the processing status of the failed transaction. If a transaction has failed because of a technical reason, such as a failed connection, repeat this transaction by using the [Capture Payments](AR_51_15_00.md) \(AR511500\) form. If a transaction has failed because of card expiration or insufficient funds, review the credit card issue with the customer and, if the issue with the credit card has been resolved, capture the payment again, or reassign another card \(if one is available\) to the payment, and capture the payment by using the new card.

## Handling Transactions that Require Manual Processing {#_80f96f0e-31c5-4ab6-88f9-e8f89b48d035 .section}

In some cases, payment transactions cannot be processed automatically by the system. You may need to review and manually process such transactions in the following cases:

-   A payment matches the criteria for automated processing, but cannot be processed because the processing center declined the transaction. These payments are removed from the automated queue and can remain unnoticed and cause delays in credit card processing.
-   A payment does not match the criteria for automated processing, for example, it has no value specified in the **Card/Account Nbr.** box on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form and has no transaction or its transaction has failed or expired. These can remain unnoticed and cause delays in credit card processing.
-   A payment is held for review and requires immediate attention, because transactions held for review expire in a very short time period. These payments can remain unnoticed and cause loss of transactions.

You use the [Card Payments Pending Review](CA_40_30_00.md) \(CA403000\) form to review a list of AR documents that require manual processing. As soon as a document appears on the form, you should open the document on the [Payments and Applications](AR_30_20_00.md) form or [Cash Sales](AR_30_40_00.md) \(AR304000\) form and resolve the issues as follows:

-   For a document that failed processing, you review the transaction in the processing center and in the system and can either try to repeat the transaction, record the transaction to the payment, or validate the payment.
-   For a document that has issues with the credit card, you can contact the customer and ask them to add funds to the card account or provide a new payment method.
-   For a document with a transaction held for review, you review the transaction in the processing center and validate the document in the system by clicking **Validate Card Payment** on the More menu of the [Payments and Applications](AR_30_20_00.md) or [Cash Sales](AR_30_40_00.md) form.
-   For a document that failed validation after import, you can review the applied documents on the **Application History** tab of the [Payments and Applications](AR_30_20_00.md) form and process the payment manually.

When a document has been successfully processed, it disappears from the list on the [Card Payments Pending Review](CA_40_30_00.md) form.

## Manually Recording Credit Card Authorizations Obtained Externally {#section_nls_4jv_vxb .section}

When you charge a customer for a particular invoice, perform a refund, or review a failed transaction, you can get the transaction number and an authorization code by calling the processing center. In this case, you can manually enter into the system the information received from the processing center for the transaction as follows:

1.  By using the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you select the payment.
2.  On the More menu \(under **Card Processing**\), you click **Record and Capture Preauthorization**. The **CC Payment with External Authorization** dialog box opens.
3.  You enter the authorization number assigned by the processing center.
4.  You click **Save** in the dialog box to save the data.

    The system initiates the capture of the specified amount for the payment by using the entered authorization number.


## Processing Card Payments with Optional Saving of Payment Profiles {#_73183e3f-84dd-4999-8ced-2e9906490547 .section}

You can configure the system in such a way that payment profile data is not saved when card payments are processed; optionally, the data could be saved if a customer wants it to be saved. The system can authorize, capture, refund, and void credit card payments for which a payment profile is not saved in the system.

To configure the system to not create payment profiles, when processing a payment with a particular processing center, do the following:

1.  On the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, select the needed processing center.
2.  Clear the **Allow Saving Payment Profiles** check box. Click **Save** to save your changes.

    When accepting card payments, the system will associate a payment with the credit card transaction without creating a customer payment method.


To configure the system to not save customer payment methods for customers of a particular customer class, do the following:

1.  On the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, select the customer class for which you want to forbid the system to save customer payment methods.
2.  On the **General** tab \(**Credit Card Processing Settings** section\), select *Never* in the **Save Payment Profiles** box.
3.  Click **Save** to save your changes.

    When accepting card payments from customers of this class, the system will associate a payment with the credit card transaction without creating a customer payment method.


To configure the system to create customer payment methods by a user's request, do the following:

1.  On the [Processing Centers](CA_20_50_00.md) form, select the needed processing center.
2.  Make sure that the **Allow Saving Payment Profiles** check box is selected. When accepting credit card payments, if the settings of the customer class allow it, the system will extract the payment profile ID from the processing center and create a customer payment method associated with the credit card.
3.  On the [Customer Classes](AR_20_10_00.md) form, select the customer class for which you want to configure optional saving of customer payment methods.
4.  On the **General** tab \(**Credit Card Processing Settings** section\), select *Upon Confirmation* in the **Save Payment Profiles** box. Click **Save** to save your changes.

    By default, the system will not save a payment profile when accepting a new card payment from a customer of the class, but you can manually indicate that the card for a particular payment or prepayment should be saved by selecting the **Save Card** check box, which appears on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form when this option is selected. A customer payment method for the customer selected in the payment or prepayment will be created on the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form. Credit cards matched to this customer can be processed on the [Synchronize Cards](CA_20_60_00.md) \(CA206000\) form.


## Managing Void and Refund Operations {#section_yls_4jv_vxb .section}

In some cases, you may need to void or refund a payment made by credit card.

To process such a transaction correctly, select a particular payment on the [Payments and Applications](AR_30_20_00.md) form and do the following:

-   For pre-authorized payments, on the More menu \(under **Card Processing**\), click **Void Card Payment**.
-   For captured and released payments, click the **Void** button on the form toolbar, and then on the More menu, click **Void Card Payment**.
-   For captured payments in the *Balanced* status, release the payment first, and then void it as you do for captured and released payments.

A transaction may be voided or canceled only within a brief time interval \(generally about 24 hours\)—after the original transaction has been performed and before it has been settled. The system attempts to void the transaction first; if the transaction is declined by the processing center, the system attempts to perform a refund, which is a separate transaction that returns the paid amount to the card. The original document will include references to the resulting transaction and to all previous card processing transactions performed for the document.

To void a cash sale paid by a credit card, do the following:

1.  On the [Cash Sales](AR_30_40_00.md) \(AR304000\) form, select the transaction you want to void.
2.  On the form toolbar, click the **Reverse** button.

    The system creates a document with the *Cash Return* type.

3.  On the More menu \(under **Card Processing**\), click **Void Card Payment**, and then click **Refund Card Payment**.

    The voided transactions will be processed along with regular cash sales transactions.


## Processing Refunds Not Linked to the Original Card Transaction {#section_gms_4jv_vxb .section}

In some cases, you may need to process a card refund without linking it to any previous card transaction.

To allow unlinked refunds for a processing center, you do the following:

1.  On the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, select the needed processing center.
2.  In the Summary area of the form, select the **Allow Unlinked Refunds** check box.

**Attention:** The processing center may require that you sign an additional agreement to be able to process unlinked refunds.

To process an unlinked refund, you do the following:

1.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, create a document of the *Refund* type for a customer.
2.  In the **Payment Method** box, select a card payment method associated with the processing center for which unlinked refunds are allowed.

    The system displays the **Use Orig. Transaction for Refund** check box and the **Orig. Transaction** box under the **Payment Method** box.

3.  Clear the **Use Orig. Transaction for Refund** check box.
4.  In the **Card/Account Nbr.** box, select a card to which the payment should be refunded.
5.  On the More menu \(under **Card Processing**\), click **Refund Card Payment**.

    The system processes the refund without linking to the original card transaction.


**Parent topic:**[Processing Credit Card Payments](../UserGuide/AR__MNG_ProcessingCCPayments.md)

