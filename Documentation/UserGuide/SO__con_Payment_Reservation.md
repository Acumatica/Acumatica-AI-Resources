# Reserving Payments for Sales Orders {#_d0d85b37-8484-4a1d-8ccf-dc02ea6b187c .concept}

Many businesses perform sales on credit: A customer order is paid after the order has been shipped and an invoice for the shipped goods and services has been sent to the customer. In some cases, businesses may require prepayments or payments to be made for particular orders, or your organization may charge a customer card for specific orders. If you rely on payment auto-application, payments are applied to unrelated invoices starting from the earliest documents, and it is difficult to perform reconciliation of balances later.

With Acumatica ERP, you can create payments and prepayments directly on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, thus reserving these payments or prepayments for the particular order in full or in part. Also, you can link an order to existing prepayments or payments by their reference numbers. There may be many variations of processing a sales order with a reserved payment, such as multiple shipments and multiple invoices for the order, multiple payments reserved for one order, and multiple orders paid by one prepayment. If the order is being shipped in multiple shipments, you can track how the payment's partial amounts were applied to multiple invoices.

## Linking of Orders and Payments { .section}

When you enter a new sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you can create a payment or prepayment directly from the **Payments** tab by clicking **Create Payment** or **Create Prepayment** on the table toolbar. The system brings up the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form in a pop-up window. After you enter and save the payment or prepayment, it is linked to the sales order and can be reviewed on the **Payments** tab of the [Sales Orders](SO_30_10_00.md)form.

When you enter a new customer prepayment or payment on the [Payments and Applications](AR_30_20_00.md) form, you can link it directly to a particular order or multiple orders by adding the order or orders on the **Sales Orders** tab. Payments with balances that have been partially applied to invoices \(whether or not the invoices are related to the order\) can also be reserved for sales orders.

If the customer pays by using a credit card, you can create a payment, link it to a particular sales order or multiple orders, and charge the credit card by using the same form, [Payments and Applications](AR_30_20_00.md).

## Application of Parent and Child Payments { .section}

If the *Parent-Child Customer Relationship* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure parent-child relationships between customer accounts. If the **Consolidate Balance** check box is selected for a child account on the **Billing Settings** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form, you can apply parent payments and prepayments to the open sales orders of this child account. When the invoice is prepared for the sales order, the payment application amount is transferred to the invoice. If you enter an invoice for a child customer directly on the [Invoices](SO_30_30_00.md) \(SO303000\) form, you can also apply payments and prepayments of the parent customer to this invoice.

For more information on the configuration of parent-child relationships, see [Managing Parent-Child Relationships](Finance_Parent-Child_Relationship_Mapref.md).

## Processing of Orders with Reserved Payments { .section}

An order with a payment linked is processed in the same way as any other order is. Once an order with linked payments or prepayments is shipped, the payment or prepayment amount applied to an order is transferred to the Sales Orders invoice or invoices generated for the order. On release of the sales invoices, the system applies the payment amounts reserved for the order to the invoices. If the amount of payments is equal to the order total, the invoices are closed. If the total amount of payments or prepayments applied to the order is less than the order total, the system leaves one of the invoices open with the unpaid balance \(which is the difference between the order total and the payments' total\).

You can view the history of application on the **Application History** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. As orders linked to this payment are shipped and completed, you will see the list of applied invoices \(generated for those orders\) on this tab.

When a full-amount payment has been reserved for an order, once the order has been shipped and an invoice has been generated and released, the payment amount is applied to the invoice; the invoice is assigned the *Closed* status on the [Invoices](SO_30_30_00.md) \(SO303000\) form, while the order is assigned the *Completed* status on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. If an order with a full-amount payment is shipped partially and then is completed or canceled, the amount applied to the order is reset to zero, while the payment with an unapplied balance is assigned the *Open* status and its applied amount is transferred to the invoice.

## Limitations on Payment Application { .section}

The application of payments to sales orders has the following limitations:

-   Payments and prepayments can be applied to only sales orders with single-installment credit terms specified in the **Terms** box on the **Financial Settings** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. If you change single-installment credit terms to multiple-installment terms for an existing sales order with payments or prepayments applied, these applications will be unlinked from the sales order. For more information on configuring credit terms, see [Setup of Credit Terms](AR__con_Credit_Terms.md).
-   If approval of sales orders is required in your organization, you can specify payments for only orders that have undergone the required approvals and have the *Open* status. For details about approval processes, see [Specific Approvals: Sales Orders](../ImplementationGuide/SO__con_Approvals.md).

## Canceling of Payment Reservation { .section}

If no invoice has been generated for the order, you can cancel payment application by removing the reserved payment from the list on the **Payments** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

-   **[To Enter a New Payment for an Order](../UserGuide/SO__How_Process_Payment.md)**  

-   **[To Enter a New Prepayment for an Order](../UserGuide/SO__How_Process_Prepayment.md)**  

-   **[To Link an Existing Payment to an Order](../UserGuide/SO__How_Link_Payment.md)**  

-   **[To Link an Existing Prepayment to an Order](../UserGuide/SO__How_Link_Prepayment.md)**  


