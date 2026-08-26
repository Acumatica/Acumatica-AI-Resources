# Creating an Adjustment Document {#_c8e2c478-4622-43bd-b55c-95268318e955 .concept}

When you need to correct an amount of the document \(for example, AR invoice\), you can manually create an adjustment document, such as a credit memo, that will adjust the document amount and the amounts of recognition transactions of the deferred schedule generated for this document.

You can create a credit memo with the deferral schedule to be generated either independently from the original document, or in accordance with the schedule generated for the original document. You process these approaches as follows:

1.  Create an adjusting document \(for example, a credit memo on the [Invoices and Memos](AR_30_10_00.md) form\), and, in its detail lines, add items with the deferral codes assigned or add a deferral code in the **Deferral Code** column in each line manually. This document will be processed by the system independently of the original one according to its own deferral schedule as described in [Recognition of Revenue and Expenses](DR__con_Revenue_Expenses_Recognition.md).
2.  Link the adjusting document to the deferral schedule generated for the original document \(as described below\), so that the adjusting amount is divided among the deferred portions of the original document.

## Linking an Adjustment Document to the Original Document {#section_w5b_3jv_vxb .section}

You link an adjustment document to the deferral schedule of the original document while creating an adjustment document. For a credit memo, on the [Invoices and Memos](AR_30_10_00.md) form, when you add an item that have deferral code assigned, select the schedule of the original document in the **Original Deferral Schedule** column. For a debit adjustment, on the [Bills and Adjustments](AP_30_10_00.md) form, when you add an item that have deferral code assigned, select the schedule in the **Original Deferral Schedule** column. Thus, the deferral schedule generated for the adjustment document is associated with the deferral schedule of the original document.

You can view the associated schedules on the **Original Schedules** tab of the [Deferral Schedule](DR_20_15_00.md) \(DR201500\) form.

## Example of Processing of Adjustment Schedules {#section_z5b_3jv_vxb .section}

Consider an example demonstrating the two ways of processing a credit memo: independently, and as linked to the original document's schedule. This example explores revenue recognition for an invoice of $1,000 that is dated April 1 and scheduled as follows:

-   April 1: Amount to be recognized now of $0
-   May 1: First installment of $200
-   June 1: Second installment of $200
-   July 1: Third installment of $200
-   August 1: Fourth installment of $200
-   September 1: Fifth installment of $200

Suppose further that on June 15, an error on the $1,000 invoice was detected, and a $180 credit memo was created to adjust the invoice amount. The credit memo may be processed separately from the invoice, as an independent document \(considered below in section I\), or it may be linked to the original invoice to be processed according to the schedule of the original invoice \(considered below in section II\).

I. The credit memo has not been linked to the original invoice. It can be assigned to any deferral code available in the system \(except a code with the *By payment* method specified\). For example, assume that it was assigned the same deferral code as the original invoice had. Thus, the credit memo amount will be recognized in the following installments:

-   July 15: Amount to be recognized now of $0
-   July 1: First installment of $36
-   August 1: Second installment of $36
-   September 1: Third installment of $36
-   October 1: Fourth installment of $36
-   November 1: Fifth installment of $36

II. The credit memo has been linked to the schedule of the original invoice. On June 15, the invoice amount still to be recognized is $600, and recognition is planned through three future transactions. The memo amount will be divided among these three transactions as follows:

-   July 1: $60
-   August 1: $60
-   September 1: $60

**Parent topic:**[Processing Deferrals](../UserGuide/DR__con_Processing_of_Deferrals.md)

