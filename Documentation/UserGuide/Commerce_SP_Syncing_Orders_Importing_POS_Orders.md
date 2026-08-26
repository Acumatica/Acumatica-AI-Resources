# Order Synchronization: Import of POS Orders {#_1c27a810-c235-41e6-a12d-adcfce39c2b4 .concept}

If your company uses Shopify point-of-sale \(POS\) functionality, you can configure the import of POS orders to Acumatica ERP. This functionality is available only when the *Shopify POS Connector* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS10000\) form.

## Configuration of the Import of Shopify POS Orders { .section}

To define the import settings for Shopify POS orders, you perform the following steps on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form:

1.  Select the **Import POS Orders** check box.
2.  In the **Order Type for Import** box \(**Direct POS Orders** section\), select the order type to be assigned to the orders that do not involve shipping and have already been fulfilled from the brick-and-mortar store. In this box, the order types with the *IN - Invoice* order type template are displayed.
3.  In the **Order Type for Import** box \(**Shipped POS Orders** section\), select the order type to be assigned to orders with shipping. In this box, the order types based on the *SO - Sales Order* template are displayed. Orders of this type are included in the shipment export process—that is, when a shipment is created and confirmed for it and the shipment is synchronized with the Shopify store, the order is also updated in the Shopify store.
4.  In the **Warehouse Mapping for Order Import**, map locations created in Shopify to specific warehouses and warehouse locations in Acumatica ERP. When an order is imported, the system will assign the mapped location to each order line. If the warehouses and locations are not specified, the system will use the default warehouse and location specified in the settings of the item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

**Tip:** Create dedicated order types for Shopify POS orders so that it is easier to tell them from other orders.

## Synchronization of Shopify POS Orders { .section}

Shopify POS orders are imported to Acumatica ERP during the synchronization of the *Sales Order* entity, similar to orders placed in the Shopify online store.

An imported Shopify POS order may lack both a customer and shipping details—that is, no shipping or billing address has been provided. The connector automatically fills in the ship-to and bill-to addresses on the **Addresses** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. In the imported POS order, the connector inserts:

-   The generic guest customer defined on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
-   The address settings specified for the generic customer if the POS order has no address specified. If the generic customer also has no addresses defined, the system leaves these settings blank.

## Import of Archived Shopify POS Orders { .section}

By default, orders that have been paid and fulfilled are assigned the *Archived* status in the Shopify store. Orders that have been placed in an online store \(online orders\) with this status are excluded from synchronization with Acumatica ERP. When the *Sales Order* entity is prepared for synchronization, such orders are assigned the *Filtered* status and are displayed on the **Filtered** tab of the [Sync History](BC_30_10_00.md) \(BC301000\) form. POS orders, however, are imported even if they have the *Archived* status in the Shopify store. When the *Sales Order* entity is prepared, archived POS orders are assigned the *Prepared* status and are displayed on the **Ready to Process** tab of the [Sync History](BC_30_10_00.md) form.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_SP_Syncing_Orders_Mapref.md)

