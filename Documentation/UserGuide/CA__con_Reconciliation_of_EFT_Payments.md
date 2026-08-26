# Reconciliation of EFT Payments {#_d890ef68-2848-403f-b497-b3fad5ec4537 .concept}

Acumatica ERP supports the reconciliation of electronic funds transfers \(EFTs\). You can easily track and reconcile your EFT payments right alongside other batch payments. If a payment gets rejected by the processing center, you can quickly take action, such as putting a shipment on hold or creating a new payment.

The system receives the settlement statuses of EFT transactions from the processing center and processes the transactions further. The reconciliation process works as follows:

1.  On the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form, you select a processing center and click **Import Batches**. Make sure that the selected processing center:
    -   Has been set up to work with Acumatica payments, as described in [Configuring and Using Acumatica Payments](AR__MNG_Acumatica_Payments.md).
    -   Has the **Import Settlement Batches** check box selected on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.
2.  The system imports and processes settlement batches for credit card payments.
3.  The system fetches EFT transactions from the processing center. These transactions have the *Settled*, *Voided*, or *Rejected* status.
4.  The system automatically creates a batch for each settled, rejected, or voided EFT transaction.
5.  The system creates a bank deposit on the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form.
6.  You release the bank deposit.

## Handling of a Rejected Transaction { .section}

In rare cases, a processing center rejects an already-settled transaction. This can happen when, for example, the customer closed the account, the wrong account number was entered, fraud was detected, or the account had insufficient funds. Separate batches are created for the settlement and the rejection.

If you click a link in the **Reference Number** column of the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form for a rejected transaction, the batch is opened on the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form.

A rejected EFT transaction has the following settings on the [Settlement Batches](CA_30_70_00.md) form:

-   **Settlement State** \(Summary area\): *Rejected*.
-   **Rejected Amount** \(Summary area\): The amount of the rejected transaction.

    **Attention:** This box and column are hidden for credit card settlement batches.

-   **Card Type** \(**Card Type Summary** tab\): *EFT*.

To process a rejected transaction, do the following:

1.  On the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form, open the batch with the *Rejected* status. Click the **Reference Number** link to open the [Settlement Batches](CA_30_70_00.md) form.
2.  On the **Missing Transactions** tab, click the transaction and click **Record** to manually record the payment for the rejected transaction.

    The system creates a voided payment and opens it on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

3.  On the More menu of the [Payments and Applications](AR_30_20_00.md) form, click **Record EFT Rejection**.

    Wait for the system to complete the operation. The system releases and closes the voided payment, which now has the *Rejected* processing status. You can view the original payment on the **Application History** tab.


After a transaction has been rejected, you can get in touch with your customer and decide how to proceed. You might:

-   Suspend the related shipment
-   Create a new payment using different bank details, such as another account or payment method
-   Cancel the shipment if no replacement payment will be made

**Tip:** If you can’t record a batch transaction because the **Record** button is unavailable or if an error message is displayed, we recommend doing the following:

1.  Hiding the batch transaction to process a batch.
2.  Creating a payment or refund with the *Cash/Check* payment method, which will add the missing GL transaction and fix the balance.
3.  Releasing and depositing the adjustment payment or refund. It may be reasonable to create a specific payment method specifically for these adjustments.
4.  If there are new batches pending review or depositing, first processing all settlement batches and then processing the rejected batches.

## Review of the Settlement Status { .section}

You can check the *Payment Settlement Summary \(CA651000\)* generic inquiry form to review customers’ documents with their settlement statuses. This form shows a list of prepayments, refunds, cash sales, voided payments, and cash returns.

The form also displays payments without batch transactions. A payment may not have a batch transaction because:

-   The batch transaction hasn't been imported yet.
-   The transaction has been rejected or voided without settlement, and is mapped not to the original document but to a recorded voided payment or cash return.
-   The batch transaction has been imported but hasn't been mapped to a payment.

    **Tip:** Unmapped transactions usually require your attention. You can monitor them on the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form by filtering batches with the *Pending Review* status.


To draw your attention, documents with the *Rejected* processing status are highlighted in red.

## Limitations of the Recording Process { .section}

The following limitations apply to the process of recording EFT transactions:

One limitation is that the **Record** button on the **Missing Transactions** tab of the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form is unavailable for rejection batches with the EFT *Refund* transaction. This is because Acumatica ERP doesn’t fully support creating a voided refund or a voided payment. We recommend clicking **Hide** and then replacing the missing *Voided Refund* or *Voided Payment* transactions with a payment with the *Cash/Check* payment method.

Another limitation relates to the recording operations for EFT transactions in an external system. Consider this example:

1.  An EFT payment transaction was initiated in an external system, for example, eCommerce.
2.  The transaction was settled.
3.  The transaction was rejected and hasn’t yet been imported into Acumatica ERP.
4.  Settlement batches with the *Settled Successfully* and *Rejected* statuses have been imported.

The recording operations will be interrupted with error messages for both the settlement batch and the rejection batch. We recommend replacing the missing documents by creating a payment and a voided payment or refund with the *Cash/Check* payment method.

As an additional limitation, if a payment was settled, refunded, and then rejected, the recording operation for the rejection batch will be interrupted with an error message. We recommend replacing the missing document by creating a refund with the *Cash/Check* payment method.

**Important:** Be cautious with this scenario, because if the refund was successfully settled, you have a refunded amount that isn’t on your account.

**Parent topic:**[Performing Settlement of Credit Card Payments and EFTs](../UserGuide/CA__MNG_Settlement_of_CC_Payments.md)

