# Partial Shipping of Orders {#_ebbe274b-5214-48e9-9db8-a27da4e1732d .concept}

When you create a shipment for a sales order \(by using either [Sales Orders](SO_30_10_00.md) or [Process Orders](SO_50_10_00.md) form\), the system checks the availability of the items included in the sales order and uses the shipping rules to determine whether the shipment can be created. This topic describes how the partial shipments are created and processed, and how to add zero lines for the items that currently are not available for shipment.

## Shipping of Stock Items in Parts { .section}

You can create partial shipments for the sales orders if the **Shipping Rule** box on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form has the *Back Order Allowed* option selected and *Back Order Allowed* shipping rule is selected for at least one order line. These settings let you ship the available quantity of goods in one shipment and the remainder in one shipment or multiple shipments as the goods are received.

If the *Cancel Remainder* shipping rule is specified in a line, shipping for the line is performed only once. After the partial shipment of available items has been prepared and confirmed, the line is completed, and the open quantity of the line is set to zero. The lines with the *Ship Complete* shipping rule cannot be shipped partially. For more information on shipping rules, overshipment, and undershipment, see [Shipping Rule Combinations](SO__con_Shipping_Rules.md).

When you create a shipment by using the [Sales Orders](SO_30_10_00.md) form, if the system detects that no shipment can be created according to the shipment rules \(due to a shortage of items\), the system displays a warning; you then decide how to process the order further. If you mass-create shipments for multiple sales orders from the [Process Orders](SO_50_10_00.md) form, and the system detects that no shipment can be created for a particular order according to the shipment rules, the system changes the status of the order to *Back Order*. For information, on how to replan back-orders, see [Back Ordering and Replanning Back Orders](SO__con_ReplanBackOrders.md).

## Partial Shipping of Free Items { .section}

If a sales order is fulfilled with multiple partial shipments, the **Free Item Shipping** setting, located on the **Price/Discount Calculation** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form, defines how free items should be shipped: proportionally to the amounts of goods in the partial shipments \(*Proportional*\), or sent with the last shipment \(*On Last Shipment*\).

If free items are sent with the last shipment and only part of the needed quantity of free items is available, only the available quantity is shipped, and no back order is initiated for the missing free items.

If the quantity of the free items should be distributed between the partial shipments, the total quantity of free items on all partial shipments for the order may be less than the quantity initially calculated for the applicable group discount, because the system rounds the free item quantity down on each partial shipment. In such a case, you can add the missing quantity of the free item manually to any of the partial shipments.

## Shipments With Zero Lines { .section}

Your organization may prefer to send customer invoices that list all the items from their sales orders so that they can see which items were ordered but at the time were unavailable. To allow the system to add these zero lines to shipments, select the **Add Zero Lines for Items Not in Stock** check box on the [Sales Orders Preferences](SO_10_10_00.md) form.

Selecting this option also can be helpful if you don't want to rely completely on availability data, because in some cases, although the system shows an item as not in stock, the quantities required for a shipment may be available for some reason. You should select this check box if you have item classes for items of which negative quantities are allowed and if shipments are created manually on a per-order basis—then users can edit the shipments and specify the quantities that are currently not reflected on the books correctly and may be available on shipment confirmation \(for instance, if shown as quantities on purchase receipts\). For example, if you prepare a shipment for a sales order with a line that have the *Back Order Allowed* shipping rule, and the available quantity of the item is zero, the shipment will include a zero-line for this item, if the **Add Zero Lines for Items Not in Stock** is selected. You can then correct the quantity tho specify the quantity that is actually available for this order line.

If the **Add Zero Lines for Items Not in Stock** check box is selected, you should also decide whether to allow the creation of shipments with all zero-quantity lines. To allow the creation of such shipments, you should select the **Create Zero Shipments** check box on the [Sales Orders Preferences](SO_10_10_00.md) form. However, we do not recommend using this option if in your organization, shipments are generally created automatically by using the [Process Orders](SO_50_10_00.md) form.

**Parent topic:**[Processing Partial Shipments](../UserGuide/SO__con_Shipments.md)

