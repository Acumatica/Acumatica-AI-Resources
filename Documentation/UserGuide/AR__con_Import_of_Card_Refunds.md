# Import of Credit Card Refunds {#_929b02b6-1f23-4a9e-8b8b-b0075b2c532e .concept}

Refunds that have been made to a customer's credit card in external ecommerce systems can be imported to Acumatica ERP via API calls that pass the list of documents to which the customer refunds should be applied along with application details. There are two ways of processing credit card refunds when they are imported to Acumatica ERP:

-   A payment can be voided by the import process.
-   A refund can be created and applied to a document or an order.

## The Import and Voiding of an Authorized Payment {#section_a4s_4jv_vxb .section}

An authorized payment imported to Acumatica ERP from an external ecommerce system is displayed on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form with the *Pre-authorized* processing status. Once this payment has been voided in the external ecommerce system and the *Void* transaction is imported, the payment is voided in Acumatica ERP. The processing status of this payment on the [Payments and Applications](AR_30_20_00.md) form changes to *Pre-Auth.; Void/Refund Pending Validation* because the transaction received from the external ecommerce system requires validation from the processing center.

Once the *Void* transaction has been imported, the payment appears on the **Deferred Processing Required** tab of the [Validate Card Payments](AR_51_30_00.md) \(AR513000\) form \(where it has the *Unknown* processing status\). To validate the payment, you select the unlabeled check box for it, and click **Validate** on the form toolbar.

If the validation is successful, on the [Payments and Applications](AR_30_20_00.md) form, the processing status of the payment changes to *Voided*, and the payment status changes to *Voided*. If it fails, the processing status changes to *Pre-Auth.; Void Failed Validation*.

## The Import and Voiding of a Captured Payment {#section_e4s_4jv_vxb .section}

If an external ecommerce system has been configured to capture payments, when a payment is imported to Acumatica ERP, on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, its processing status is set to *Captured*. If this payment is later refunded in the external ecommerce system and the *Void* or *Refund* transaction is imported to Acumatica ERP, the system changes the processing status of the payment to *Captured; Void/Refund Pending Validation*.

You should then further process this payment on the [Validate Card Payments](AR_51_30_00.md) \(AR513000\) form, where it is displayed with the *Unknown* status, by clicking the unlabeled check box for this payment on the **Deferred Processing Required** tab and clicking **Validate** on the form toolbar.

In case of successful validation, on the [Payments and Applications](AR_30_20_00.md) form, the system changes the payment status to *Voided*, creates and releases a document with the *Voided Payment* type, and displays a warning that a voided payment has been created. If the validation fails, the processing status is set to *Captured; Void/Refund Failed Validation*.

## The Import of a Refund with a Void Transaction {#section_i4s_4jv_vxb .section}

For an imported transaction that has been captured but not settled with a bank yet \(the transaction status of this transaction in the processing center is *Captured/Pending Settlement*\), a refund is created.

When a captured but not settled payment is imported to Acumatica ERP from an external ecommerce system, its processing status on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form is *Captured*. Once this payment is voided in the external ecommerce system and a refund with the *Void* transaction is imported to Acumatica ERP, the processing status of the payment on the [Payments and Applications](AR_30_20_00.md) form changes to *Captured; Void/Refund Pending Validation* and the system displays a warning that the document has an unreleased application.

The user should further process the refund on the [Validate Card Payments](AR_51_30_00.md) \(AR513000\) form by clicking the unlabeled check box for this refund on the **Deferred Processing Required** tab and clicking **Validate** on the form toolbar.

**Tip:** If a refund with the *Void* transaction is imported, the related payment should be validated on the [Validate Card Payments](AR_51_30_00.md) form. If the transaction number of the *Void* transaction differs from the number of the payment transaction, the refund should be validated.

After the validation, the system changes the processing status of the payment on the [Payments and Applications](AR_30_20_00.md) form to *Voided*. If the validation fails, the processing status is changed to *Captured; Void/Refund Failed Validation*.

**Attention:** If a refund has the processing status of *Voided*, the refund and the related payment will not have related bank transactions and will not be included in the bank statement used for reconciliation.

## The Import of a Refund with a Refund Transaction {#section_p4s_4jv_vxb .section}

If a credit card transaction has been settled in an external ecommerce system \(the transaction status of this transaction in the processing center is *Settled Successfully*\), you can refund it in an external ecommerce system and import it to Acumatica ERP.

In this case, the processing status of the payment and the refund on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form changes to *Captured; Void/Refund Pending Validation*, and you should further process the refund on the **Deferred Processing Required** tab of the [Validate Card Payments](AR_51_30_00.md) \(AR513000\) form. After the validation, on the [Payments and Applications](AR_30_20_00.md) form, the system changes the processing status of the refund to *Refunded*. If the validation fails, the processing status is changed to *Captured; Void/Refund Failed Validation*.

## Capture of a Previously Authorized Transaction in the Ecommerce System {#section_s4s_4jv_vxb .section}

If a pre-authorized payment that has been imported to Acumatica ERP is then captured in the external ecommerce system, the processing status of the payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form will change from *Pre-Authorized* to *Captured* during the next payment import.

In certain cases, an ecommerce manager may change an online order that has a pre-authorized payment and that has previously been imported from an external ecommerce system to Acumatica ERP. If the order amount has decreased as a result, we do not recommend that you capture the new amount in the ecommerce system. Once the updated order has been synchronized with Acumatica ERP, the payment amount applied to the order will change to the new order amount, and when the order is shipped, the new order amount will be captured in Acumatica ERP.

**Parent topic:**[Processing Credit Card Payments](../UserGuide/AR__MNG_ProcessingCCPayments.md)

