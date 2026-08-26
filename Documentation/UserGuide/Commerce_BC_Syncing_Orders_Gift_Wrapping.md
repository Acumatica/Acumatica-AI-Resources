# Order Synchronization: Orders with Gift Wrapping {#_7bc61922-7ea6-43b0-b5d6-1303803dfc72 .concept}

In a BigCommerce store, a merchant can provide its customers with the option of having their purchase gift-wrapped. The BigCommerce gift-wrapping functionality supports creating gift-wrapping options for specific products or for all products, for free or at various pricing levels. If a customer purchases an item for which gift-wrapping options have been configured, they have the option to add gift wrapping and a gift message to their purchase while viewing their shopping cart.

## Configuration of Gift Wrapping Import { .section}

To configure the import of gift-wrapped items to Acumatica ERP, you perform the following general steps:

1.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, define a non-stock item to represent gift wrapping in sales orders, shipments, and invoices. This non-stock item should have the following settings:
    -   **Item Status** \(in the Summary area\): *Active*, *No Purchases*, or *No Request*
    -   **Type** \(the **General** tab\): *Non-Stock Item* or *Service*
    -   **Require Receipt**: Selected
    -   **Require Shipment**: Selected
2.  On the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, select the non-stock item that represents gift wrapping in the new **Gift Wrapping Item** box. The non-stock item selected in this box is excluded from synchronization and is not exported when the *Non-Stock Item* entity is synchronized with the BigCommerce store.

When a sales order that includes gift-wrapped items is imported from the BigCommerce store to Acumatica ERP, on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the imported sales order contains a line for gift wrapping for each of the gift-wrapped items. In the line for the gift-wrapping item, the system inserts the same warehouse as is assigned to the main item. The line number of the item to which the gift wrapping pertains is shown in the **Associated Order Line Nbr.** column.

## Import of Gift Messages { .section}

You can set up an import mapping to display a gift message, if a customer left one while adding gift wrapping for an item in the BigCommerce store, in the **Gift Message** column of the line of the gift wrapping of the imported order. To do this, on the **Import Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form, you select the BigCommerce store and the *Sales Order* entity and specify the mapping settings as shown in the following table.

|Active|ERP Object|ERP Field|External Object|External Field / Value|
|------|----------|---------|---------------|----------------------|
|Selected|*Sales Order → Details*|*Gift Message*|*Order Data → Order Products*|*Wrapping Message*|

## Gift Wrapping Details in the Sales Order Synchronization Record Information { .section}

You can view the information about the gift-wrapping item on the [Sync History](BC_30_10_00.md) \(BC301000\) form. To do this, you select a row of a sales order synchronization record in the table and click **View Details** on the More menu. In the **Sync Record Details** dialog box, which is opened, information about the sales order line containing the gift-wrapping item is displayed along with information about the sales order line of the item for which gift wrapping was added in the BigCommerce store. The gift wrapping order line contains *Sales Order Line \(Gift Wrapping\)* in the **Entity Type** column. The sales order line for gift wrapping has the same value in the **External ID** column as the sales order line of the item to be gift wrapped.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_BC_Syncing_Orders_Mapref.md)

