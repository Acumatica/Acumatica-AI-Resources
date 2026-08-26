# Shipment Creation Rules {#_ecfe97b0-34c9-4118-b10d-11f8731049a2 .concept}

This topic briefly explains how the system creates shipments for sales orders depending on the shipping rules specified in these orders, and how you can consolidate shipments for multiple sales orders.

## Shipment Creation by Shipping Rules { .section}

Each shipment is generated from one particular warehouse. The system creates an individual shipment from each warehouse that is specified in sales order lines, as if these were multiple orders being shipped from different warehouses. If you are creating shipments by processing orders on the [Process Orders](SO_50_10_00.md) \(SO501000\) form, the system creates the shipments one by one from each warehouse that is referred to in each processed order. The document-level shipping rule of the sales order, which is specified on the **Shipping Settings** tab of the [Sales Orders](SO_30_10_00.md)form \(SO301000\), is applied to each warehouse as follows:

-   If the document-level shipping rule is *Ship Complete*, a shipment is created from the warehouse selected in the line only if all other order lines with the same warehouse can be shipped from that warehouse according to the shipping rule of each line. *Ship Complete* lines can be shipped in full, and other lines can be shipped at least partially.
-   If the document-level shipping rule is *Cancel Remainder* or *Back-Order Allowed*, a shipment is created from the selected warehouse if at least one order line can be shipped from that warehouse according to the shipping rule of the line.

When a shipment is created for a sales order, the system adds the lines with a nonzero open quantity to the shipment according to the following logic:

1.  The system adds to the shipment only the lines that have a **Ship On** date no later than the specified shipment date and have to be shipped from the warehouse specified for the shipment.
2.  The system adds the lines to the shipment according to the shipping rule of the line as follows:
    -   A *Ship Complete* line is added to the shipment only if the open quantity can be shipped in full from the quantity available for shipping.
    -   A *Back Order Allowed* or *Cancel Remainder* line is added to the shipment with the quantity that is available for shipping at the moment of shipment creation even if the quantity is less than the open quantity of the line.

For more detailed information on shipping rules, see [Shipping Rule Combinations](SO__con_Shipping_Rules.md).

## Consolidated Shipments { .section}

You can consolidate shipments, creating one shipment \(and corresponding shipment document\) for multiple sales orders of the same customer, unless the **Ship Separately** check box on the [Order Types](SO_20_10_00.md) \(SO201000\) form is selected for the order type being used. As long as the check box is cleared, you can use the [Process Orders](SO_50_10_00.md) \(SO501000\) form to create one shipment for multiple sales orders associated with the same customer. Sales orders with the predefined order type *SO* don't require goods to be shipped separately for separate sales orders.

**Note:** The orders of the type for which the **Ship Separately** check box is selected can still be consolidated into a single shipment if you manually add them using the **Add Order** button on the **Details** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form.

One more setting that affects the creation of consolidated shipments is the **Use Customer's Account** setting specified in a shipment document on the **Shipment Settings** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form. The system copies the state of this check box from the related sales order. Thus, if you mass-process multiple sales orders that have different states of the **Use Customer's Account** check box on the **Shipping** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the system will group the sales orders by the state of this check box and create two consolidated shipments: The first shipment will include the sales orders in which the check box is selected, and the second shipment will include the sales orders in which this check box is cleared.

**Parent topic:**[Processing Partial Shipments](../UserGuide/SO__con_Shipments.md)

