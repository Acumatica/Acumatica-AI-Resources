# Authorized Remainder After Partial Payment Capture {#_737ae58c-1eda-486c-a9f0-1677c112ff4e .concept}

To simplify the processing of partially shipped orders, you can turn on smarter handling of pre-authorized payments. When a payment is partially captured for a sales invoice, the system will keep the remaining sales order amount pre-authorized—eliminating the need to manually create a new authorization. The system automatically creates a new payment for the remainder and pre-authorizes it.

**Attention:** This functionality is available only if the *Acumatica Payments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Before You Begin { .section}

Make sure that the **Authorize Remainder After Partial Capture** check box is selected for the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form.

## Usage Example { .section}

Imagine that you’re a sales manager. Your customer wants to place an order, but not all goods are in stock. The customer agrees to a partial shipment and a back order for the remaining goods.

Here's what you do in the system:

1.  Create a sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
2.  Create a payment for the sales order on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) or [Sales Orders](SO_30_10_00.md) form without saving the credit card in the system. For this payment, the system selects the **New Card** check box.
3.  Pre-authorize the full amount of the sales order.
4.  Partially ship the order and create a sales invoice for the amount of the shipped goods. The system transfers a portion of the payment amount to the sales invoice.
5.  Capture the payment amount applied to the sales invoice on the [Invoices](SO_30_30_00.md) \(SO303000\) or [Credit Card Processing for Sales](SO_50_70_00.md) \(SO507000\) form.

    After you successfully capture the card transaction and close the original payment, the system:

    -   Creates a new payment for the remaining balance
    -   Pre-authorizes it
    -   Applies it to the sales order

## Partial Payment Capture { .section}

When you capture payments on the [Invoices](SO_30_30_00.md) \(SO303000\) and [Credit Card Processing for Sales](SO_50_70_00.md) \(SO507000\) forms, the system does the following:

1.  Verifies that the payment has been applied to the sales order, transferred to the sales invoice, and partially captured from the sales invoice.
2.  Confirms that the **Authorize Remainder After Partial Capture** check box is selected for the order type.
3.  If both of the conditions above are true, creates a new payment \(based on the previous card transaction\) for the remaining amount and applies the payment to the sales order.

    **Attention:** If the capture fails with an error, no new payment is created.


The following table shows examples of the system’s calculation of the new payment amount.

|Sales Order Total|Initial Payment \(Pre-authorized Amount\)|Sales Invoice Amount|Captured Amount|Sales Order's Unpaid Balance|New Payment \(Pre-authorized Amount\)|
|-----------------|-----------------------------------------|--------------------|---------------|----------------------------|-------------------------------------|
|$100|$100|$80|$80|$20|$20|
|$120|$100|$55|$55|$65|$45|
|$100|$100|$60|$60|0|No new payment|

## Partially Shipped Order with a Pre-Authorized Balance { .section}

The system continues authorizing the remaining payment balance for each partial capture on the sales invoice as long as the sales order still has an unpaid balance. If the sales order is completed after a partial capture, the payment remainder is released and no new authorization is created.

Consider the following example: The customer's shipping rule is *Cancel Remainder*, so the payment pre-authorized for the full sales order amount is transferred to the sales invoice partially. The order status is changed to *Completed* once it has been partially shipped. The payment is captured on the [Credit Card Processing for Sales](SO_50_70_00.md) \(SO507000\) form. Only the sales invoice amount is captured, no new payment is created due to the sales order status.

**Parent topic:**[Configuring and Using Acumatica Payments](../UserGuide/AR__MNG_Acumatica_Payments.md)

