# Sales with Payments and Prepayments: Prepayments and Payments in Invoices {#_939fb4a4-987b-4c15-a951-3ef6a958cd57 .concept}

When you prepare an invoice for a shipment or sales order, any prepayments and payments that were applied to the sales order are transferred to the invoice. If the sales order has a pre-authorized credit card payment, it is also transferred to the invoice and can be captured on the [Invoices](SO_30_30_00.md) \(SO303000\) form.

## Pre-Authorized Prepayments and Payments { .section}

Suppose that for a sales order with the *Back Order Allowed* shipping rule specified on **Shipping** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you have confirmed a partial shipment. When you prepare an invoice for the shipped goods in this sales order, the pre-authorized credit card payment is partially transferred to the invoice, with the remainder applied to the sales order. If the payment application amount that is transferred to the invoice is less than the pre-authorized payment amount and you click **Capture** on the **Applications** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form, only the amount applied to the invoice is captured.

Once a pre-authorized credit card payment has been captured, it is automatically released, and the payment has no more balance applied to the sales order. Then the system recalculates the application of the payment amount to the sales order.

If the sum of the total payment amount applied to the sales order and the total payment amount transferred to invoices is less than the required prepayment amount for the sales order, the system assigns the *Awaiting Payment* status instead of the *Back Order* status to the sales order on the [Sales Orders](SO_30_10_00.md) form.

When an invoice with applied prepayments or payments is created on the [Invoices](SO_30_30_00.md) form, the system checks the following conditions and performs the noted steps:

-   If any payment requires validation, the system assigns the *Pending Processing* status to the invoice.
-   If any payment has the credit card payment method and a pre-authorized transaction, the system assigns the *Pending Processing* status to the invoice.

    **Note:** An invoice with this status cannot be released.

-   If the **Hold Invoices on Failed Credit Check** check box is selected on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form and the customer's credit limit has been exceeded, the system assigns the *Credit Hold* status to the invoice.

If a pre-authorized credit card payment is transferred from a sales order to the invoice, the system creates the invoice with the *Pending Processing* status. If the invoice has the *Balanced* status and a credit card payment with a pre-authorized transaction is created or applied to the invoice, the invoice receives the *Pending Processing* status.

A user can capture pre-authorized credit card payments applied to an invoice on the **Applications** tab of the [Invoices](SO_30_30_00.md) form by clicking **Capture**. If a pre-authorized credit card payment is captured successfully, the system automatically releases the payment and assigns the *Open* status to it. The system then assigns the *Balanced* status to the invoice \(if the customer's credit limit is not exceeded\). If the capture of the pre-authorized credit card payment fails, the system assigns the *Credit Hold* status to the invoice \(despite the customer's credit limit state\). If multiple pre-authorized credit card payments are applied to a single invoice, the invoice keeps the *Pending Processing* status as long as at least one payment has not been captured.

Credit card payments cannot be captured on the [Invoices](SO_30_30_00.md) form if they are applied to multiple documents.

## Credit Hold in Invoices with a Required Prepayment Amount { .section}

On the [Invoices](SO_30_30_00.md) \(SO303000\) form, the system validates the settings and unpaid balance of a sales invoice when you do one of the following:

-   Generate a sales invoice for the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) or [Process Orders](SO_50_10_00.md) \(SO501000\) form
-   Generate a sales invoice for a shipment based on this sales order on the [Shipments](SO_30_20_00.md) \(SO302000\) or [Process Shipments](SO_50_30_00.md) \(SO503000\) form
-   Add this sales order to a sales invoice by clicking **Add Order** on the [Invoices](SO_30_30_00.md) form

The system puts on credit hold a sales invoice with transferred prepayments or payments if all of the following conditions are met:

-   The sales order has *100* in the **Prepayment Percent** box on the **Financial** tab of the [Sales Orders](SO_30_10_00.md) form.
-   The **Validate Invoices from Orders with 100% Prepayment Required** check box is selected for the type of the related order on the [Order Types](SO_20_10_00.md) \(SO201000\) form
-   The unpaid balance of the sales invoice is greater than *0*. This may occur if freight amounts are added on the [Shipments](SO_30_20_00.md) form or if tax or discount amounts are recalculated on the [Invoices](SO_30_30_00.md) form.

If the **Validate Invoices from Orders with 100% Prepayment Required** check box is cleared, the system does not validate the unpaid balance of sales invoices.

The invoice is also assigned the *Credit Hold* status on the failure of the capture of a pre-authorized credit card payment that is transferred from a sales order or applied directly to the invoice.

**Parent topic:**[Processing Sales with Payments and Prepayments](../UserGuide/OrderMgmt_Sales_Orders_with_Payments_and_Prepayments_Mapref.md)

