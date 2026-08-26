# Correction of a Bill with Retainage {#_48e35f4b-ca14-4a23-bf86-5cae9cd39dcd .concept}

In Acumatica ERP, the details of the bill can be changed only if the bill has the *On Hold* or *Balanced* status. If the bill has *Open* status, you can edit only the cash discount date and the due date until the document is settled. The closed bill cannot be edited at all.

Thus, the correction of an open bill can be performed only by issuing an additional document \(credit or debit adjustment\) that affects the vendor's balance.

In this topic, you will read about the ways to correct a released bill with retainage.

## Reversing a Bill with Retainage {#section_gyl_njv_vxb .section}

You cannot reverse an original bill with retainage if:

-   The bill has a payment applied.
-   The retainage has been released and the related retainage bill or bills have not been reversed.

When you reverse a released invoice, its status and outstanding amount do not change. You can reverse an invoice on the [Invoices and Memos](AR_30_10_00.md) form in one of the following ways:

-   By clicking **Reverse** \(under **Corrections**\) on the More menu for the invoice. The system automatically generates a credit memo with details similar to those of the invoice; you then need to release and apply the credit memo to the original invoice. You can change the document amount, if needed, before releasing the credit memo.
-   By clicking **Reverse and Apply to Memo** \(under **Corrections**\) on the More menu for the invoice. The system automatically generates a credit memo with details similar to those of the invoice and creates respective application; you then need to release the credit memo. You can change the document amount and application amount, if needed, before releasing the credit memo.

    **Note:** If you do not release the credit memo immediately and instead only save it, you cannot apply any other document to the reversed invoice \(for example, in case of partial reversal\) until you release the credit memo and its application.

-   By manually creating a credit memo for the full balance of the invoice and then applying the credit memo to the invoice.

**Note:** If you are reversing a closed invoice, before applying a credit memo, you need to reverse the application of the document used to close this invoice, thus causing the invoice to again be assigned the *Open* status.

If you use an action on the [Invoices and Memos](AR_30_10_00.md) form to automatically reverse an invoice, the system will display the invoice number for the created credit memo in the **Original Document** box on the **Financial** tab of the form.

**Parent topic:**[Processing AP Documents with Retainage](../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md)

