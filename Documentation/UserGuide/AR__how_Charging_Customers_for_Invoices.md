# To Charge Customers for Invoices {#_48ec7f7b-e451-4441-aa71-3db24f636a5e .task}

You can collect payments from customers credit cards by using the [Generate Payments](AR_51_10_00.md) \(AR511000\) and [Capture Payments](AR_51_15_00.md) \(AR511500\) forms.

First, on the Generate Payments form, you create payment documents for invoices, as described in the [To Generate Payment Documents](AR__how_Charging_Customers_for_Invoices.md#1) section of this document. After payment documents are created, you process them by using the [Capture Payments](AR_51_15_00.md) form \(see the [To Perform Mass Payment Collection](AR__how_Charging_Customers_for_Invoices.md#2) section\).

You can collect payments from credit cards only for customers with a default payment method based on credit cards and with credit terms that are the same as those selected for automatic billing. For more information, see [Automatic Payment Collection](AR__con_Automatic_Payment_Collection.md).

## To Generate Payment Documents {#1 .section}

1.  Open the [Generate Payments](../Shared/../UserGuide/AR_51_10_00.md) \(AR511000\) form.
2.  In the Selection area, check the **Payment Date**. By default, the current date is selected, but you can select a different date.
3.  If needed, to display overdue documents in the Selection area, select the **Overdue For** check box and specify the minimum number of overdue days.
4.  If needed, to display documents that are due in less than the specified number of days, select the **Due In Less Than** check box and specify the number of days.
5.  If needed, to display documents with cash discounts that have expired within some number of days in the past, select the **Cash Discount Expired Within Past** check box and specify the number of days in the accompanying box.
6.  If needed, to display documents with cash discounts that will expire in fewer than some number of days, select the **Cash Discount Expires In Less Than** check box and specify the number of days in the accompanying box.
7.  In the **Post Period** box, check the period to which payments will be posted.
8.  Do one of the following:
    -   To create payment documents for all listed in the table invoices, click **Process All** on the form toolbar.
    -   To create payment documents for only particular invoices, select the unlabeled check boxes next to the needed lines and click **Process** on the form toolbar.

## To Perform Mass Payment Collection {#2 .section}

1.  Open the [Capture Payments](../Shared/../UserGuide/AR_51_15_00.md) \(AR511500\) form.
2.  In the **Payment Date Before** box of the Selection area, specify the latest date of the payment documents you want to view in the table.
3.  Optional: In the **Statement Cycle ID** box, select a statement cycle ID.
4.  Optional: In the **Customer** box, select a customer.
5.  Optional: In the **Payment Method** box, select the payment method to be used for payments.
6.  Optional: In the **Processing Center ID** box, select the processing center ID.

    If you specify a particular payment method and leave the **Processing Center ID** box blank, the default processing center will be used to display payment details.

7.  Do one of the following:
    -   To process all payment documents listed in the table, click **Process All** on the form toolbar.
    -   To process only one or some payment documents from the list, select the appropriate unlabeled check boxes and click **Process** on the form toolbar.

**Parent topic:**[Processing Credit Card Payments](../UserGuide/AR__MNG_ProcessingCCPayments.md)

