# Changing the Customer in a Sales Order {#_046d07ad-72e5-4dcc-86b2-bc0d5d042919 .concept}

To simplify entering an order and minimize errors on data entry, you may start to create a sales order by copying and pasting another sales order, which you use as a template. In this case, you need to change the customer ID specified for the sales order to another one. You can change the customer ID in the **Customer** box of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form for a sales order that has one of the following statuses:

-   *On Hold*
-   *Open* \(if the order is new\)
-   *Credit Hold* \(if the order is new\)
-   *Back Order* \(if the new order has been placed on back order manually\)

You can also change the customer ID in a return order that does not have lines linked to invoices and in a sales quote that is not linked to a sales order.

The following sections describe the specifics of changing the customer in a document.

## Information Kept After the Customer Is Changed { .section}

When you change the customer ID in the sales order, the system preserves the following information:

-   Order type, order number, and description
-   Currency ID, currency rate type, and currency rate
-   Document date and date when the customer wants to receive the goods
-   Order-level shipping rule, and shipping rules in the order lines
-   Inventory IDs and warehouses specified in the order lines
-   Hard allocations of inventory
-   Notes, activities, and attachments

## Information Updated After the Customer Is Changed { .section}

When you change the customer ID in the sales order, the system updates the following document information by using the settings of the newly selected customer:

-   Credit verification status
-   Salesperson commissions
-   Customer-specific settings on the **Details**, **Financial Settings**, **Payment Settings**, and **Shipping Settings** tabs
-   Taxes and freight tax category
-   Group and document discounts
-   Unit prices, except manual unit prices for which the **Manual Price** check box is selected in the document line
-   Line discounts, except manual line discounts for which the **Manual Discount** check box is selected in the document line

The system does not automatically save the document after you change the customer ID, so you can easily cancel these changes.

## Restrictions on Customer Override { .section}

There are some restrictions on changing the customer in a sales order. You cannot save the sales order after changing the customer in any of the following cases:

-   The sales order has the *Open* status and is subject for approval.
-   The sales order has a linked shipment, invoice, inventory issue, or drop-ship purchase order.
-   Credit card payments have been authorized or captured for the sales order.
-   Accounts Receivable payments or prepayments have been applied to the sales order.
-   The currency of the newly selected customer differs from the currency that was previously specified in the sales order, and the system cannot override the currency in the sales order. \(This could happen if the currency override is not allowed for the newly selected customer.\)

To avoid situations when the system does not allow you to override the customer, we recommend that you create order templates by currency and for each unique set of shipping rules, to make sure that shipments are processed as expected.

**Parent topic:**[Managing Sales Documents](../UserGuide/SO__MNG_Managing_Documents.md)

