# Tracking Orders {#_f7c83057-60ee-4abd-8843-df2dc0bbeb69 .concept}

After you place an order, you can track the order and its shipments by using the [My Orders](SP_70_00_03.md) \(SP700003\) form in the Self-Service Portal.

**Attention:** This functionality appears in the Self-Service Portal, if the *B2B Ordering* feature is enabled on the Enable/Disable \(CS100000\) form in Acumatica ERP.

## Tracking an Order { .section}

All the orders placed with your company account are displayed on the [My Orders](SP_70_00_03.md) \(SP700003\) form.

The status of the order reflects the order processing stage. The order may have one of the following statuses:

-   *Open*: The order is processed, but shipment has not yet occurred.
-   *Shipping*: At least one shipment for the sales order is confirmed. To learn more, click the row with the order you have placed, and then click **View Shipments** on the table toolbar, to view the shipments and their statuses in the **Shipments** dialog box. For more information, see [To Track a Shipment](SP__how_Shopping_Track_shipments.md).
-   *On Hold*: The order processing has been suspended.
-   *Credit Hold*: Your account balance has exceeded the credit limit.
-   *Back Order*: There is a shortage of at least one item, and the processing of the order may take additional time.
-   *Invoiced*: One invoice has been generated \(or multiple invoices have been generated\) for at least one of the order shipments. The invoices are available on the [My Documents](SP_40_20_00.md) \(SP402000\) form. For more information on printing invoices, see [To Print an Invoice or Credit Memo](SP__how_Print_Invoice.md).
-   *Completed*: All invoices have been generated for all related shipments. The invoices are available on the [My Documents](SP_40_20_00.md) \(SP402000\) form.
-   *Canceled*: The order has been canceled. You may have canceled the order yourself, as described in [To Cancel an Order](SP__how_Shopping_Cancel_Order.md).

For details about how to track a particular order, see [To Track an Order](SP__How_Shopping_Track_Order.md).

## Canceling an Order {#cancel_order .section}

In the Self-Service Portal, you can cancel an order that has not been processed—that is, an order with the *Open*, *On Hold*, or *On Credit Hold* status. To cancel the order, you select the row with the order and click **Cancel Order** on the table toolbar of the [My Orders](SP_70_00_03.md) \(SP700003\) form.

For details, see [To Cancel an Order](SP__how_Shopping_Cancel_Order.md).

## Tracking Shipments { .section}

You can track the shipments for the orders on the [My Orders](SP_70_00_03.md) \(SP700003\) form. To do this, you select the row with the order and click **View Shipments** on the table toolbar. In the **Shipments** dialog box, which opens, you can see the shipments associated with the order.

The status of the shipment is changed to one of the following as the shipment is processed:

-   *Open*: The shipment is being prepared—that is, items are being picked and packed.
-   *On Hold*: The processing of the shipment has been temporarily stopped.
-   *Confirmed*: The shipment has been confirmed as shipped.
-   *Completed*: The shipment has been delivered and the invoice has been generated for the system.

You can open and print the shipping confirmation by clicking the applicable shipment number in the **Shipment Nbr.** column of the **Shipments** dialog box.

The the printable version of the shipment confirmation includes the company information \(on the top left\), the ship-to address of the customer, the required shipping information, and the itemized information about the items and the quantities being shipped.

For more information, see [To Track a Shipment](SP__how_Shopping_Track_shipments.md).

-   **[To Track an Order](../Portal/SP__How_Shopping_Track_Order.md)**  

-   **[To Cancel an Order](../Portal/SP__how_Shopping_Cancel_Order.md)**  

-   **[To Track a Shipment](../Portal/SP__how_Shopping_Track_shipments.md)**  


**Parent topic:**[Managing Online Orders](../Portal/SP__mng_Orders.md)

