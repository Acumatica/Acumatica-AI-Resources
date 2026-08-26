# Adjustment of Deferrals {#_ad02a9f5-48ee-4b3c-a26c-e3408541fefa .concept}

Assume that you have a document \(such as AR invoice\), for which the deferral schedule has been already generated, but you need to cancel this document or to adjust its document amount. You cannot cancel or delete a document that is already being processed in the system. Instead, you can create an adjusting document, such as a credit memo for an invoice, or a debit adjustment for a bill, which allows you to either reverse the original document or to correct the document amount.

As with the original document that contains items with deferrals, the adjustment document also requires deferrals. Deferral transactions are generated no earlier than the date of the reversing document \(a credit adjustment or a debit adjustment\) regardless of the value specified in the **Start Offset** box in the Summary area of the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form.

You can create an adjustment document either manually \(and link the deferral schedule of the original document to it\), or by reversing an original document \(so that the deferral schedule will be associated with the original document automatically\). The system generates deferral schedules for credit memos linked to the schedules of the related invoices.

The following topic contains information on how the system manages deferral schedules to be generated for the reversed documents.

**Parent topic:**[Processing Deferrals](../UserGuide/DR__con_Processing_of_Deferrals.md)

