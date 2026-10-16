# Processing Payments Through AvidXchange

After your organization is enrolled in AvidXchange and your vendors use the AvidXchange payment method, you create bills and payments as usual, and AvidXchange takes over after you send a payment.

## Creating a Document for External Processing

When you create a document on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\), [Prepare Payments](AP_50_30_00.md) \(AP503000\), or [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, select the AvidXchange payment method and a cash account that’s mapped to a funding account with the *Active* status. If the cash account is mapped to a funding account that AvidXchange hasn't activated yet, you can still prepare the payment, but Acumatica ERP displays a warning that it can't be processed. If the cash account isn't mapped at all, Acumatica ERP displays an error.

An AvidXchange payment keeps its remittance address editable until the payment is sent to AvidXchange, so you can correct this address before the payment is sent.

You send payments to AvidXchange from the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.

**Attention:**

A payment can be processed only if all of the following are true:

-   The payment is in USD, and the vendor's remittance address is in the United States.
-   The following addresses each include at least the first address line, city, state, and postal code: the vendor location address, the remittance address of the payment, and the main address of the company that owns the cash account.
-   The **Account Name** box on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form is filled in.

When AvidXchange accepts the payment, the **Processing Status** of the payment becomes *Processing*, and AvidXchange decides how to deliver the money based on how the vendor prefers to be paid. You don't choose the disbursement method.

**Tip:** The payer name and address that your vendor sees come from the company that owns the cash account you paid from. That company isn't necessarily the company that the bill belongs to. The account name comes from the **Account Holder** setting specified for the funding account on the [External Payment Processor](AP_20_55_00.md) \(AP205500\) form.

## Tracking a Payment to the Vendor

After you send a payment to AvidXchange, everything you need to track it is in the **External Processing** section on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form. This section shows the following information:

-   The current **Processing Status**. For processing statuses, see [External Processing Statuses in AvidXchange](AP__con_Statuses_AvidXchange.md).
-   The **Disbursement Method** that AvidXchange chose, and the check number if a check was issued.
-   The date when the information was last updated, shown in the **Updated On** box.

To retrieve the latest information, click **Synchronize Payment**. Every update is also recorded on the **External Processing** tab of the same form, so that you can view the payment’s full history.

The payment is released in Acumatica ERP only after AvidXchange begins to transfer the funds. At that point, the **Cleared** check box on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) form is selected, and the **Clear Date** box is filled in.

AvidXchange may process a payment on a date other than the payment date you specified. When this happens, Acumatica ERP updates the date and financial period of the payment and its applications to the date of the actual processing.

AvidXchange doesn't always deliver a payment in one transaction. If a vendor limits the amount it will accept on a virtual card, for example, AvidXchange may split the payment and send part of it by another disbursement method. When that happens, the **Remittance** tab shows one row per part, each with its own disbursement method, amount, and status. To update all the parts at once, click **Synchronize All**.

When a payment or one of its parts has been collected by the vendor, the **Proof of Payment** button on the [Checks and Payments](AP_30_20_00.md) form becomes available. Click it to download the document that AvidXchange issues as evidence that the vendor received the money. This document is useful if a vendor tells you a payment never arrived.

## Voiding a Payment

To cancel a payment that you’ve already sent to AvidXchange, click **Void** on the form toolbar of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form. What happens next depends on how far AvidXchange has already processed the payment.

|If|Result|
|---|------|
|The money hasn't left your bank account yet.|AvidXchange cancels the payment, and the payment is assigned the *Voided* status in Acumatica ERP. Because the payment was never released, no voided payment document is created, and the bills that it was applied to become available for payment again.|
|The money is already on its way, but AvidXchange can still stop it.|Acumatica ERP submits a stop request and displays a message. Also, the **Void** button becomes unavailable. After AvidXchange confirms that the funds have been returned, the next synchronization creates a voided payment document and releases it, and the original payment is assigned the *Voided* status.|
|The payment can no longer be voided or stopped.|Acumatica ERP displays a message, and the **Void** button becomes unavailable.|

-   **[External Processing Statuses in AvidXchange](../UserGuide/AP__con_Statuses_AvidXchange.md)**  

-   **[Updating the Status of Multiple Payments](../UserGuide/AP__con_Update_Status_AvidXchange.md)**  


