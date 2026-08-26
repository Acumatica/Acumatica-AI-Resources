# Order Synchronization: Export of Orders to the Shopify Store {#_d6ea8e6f-14bc-4a91-9ac3-dadce204606c .concept}

You can import sales orders placed in Acumatica ERP to the Shopify store.

## Setting Up the Order Export { .section}

Before sales orders can be exported to a Shopify store, you need to specify the order type of the orders that can be exported to the Shopify store. To do this, you select the type in the new **Order Types for Export** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

Order types are available for selection in this box only if they are based on the *SO* \(Sales Order\), *SA* \(Sales Order with Allocation\) or *IN* \(Invoice\) order template. The order template of an order type is specified on the [Order Types](SO_20_10_00.md) \(SO201000\) form.

The export of sales orders follows the same process as the order import does. That is, the *Sales Order* entity is first prepared on the [Prepare Data](BC_50_10_00.md) \(BC501500\) form and then processed on the [Process Data](BC_50_15_00.md) \(BC501500\) form. During the synchronization, the **Sync Direction** of the *Sales Order* entity should be set to *Export* or *Bidirectional*.

A sales order is exported if it has the order type selected in the store settings on the [Shopify Stores](BC_20_10_10.md) form and if it has one of the following statuses:

-   *Open*
-   *Pending Processing*
-   *Shipping*
-   *Back Order*
-   *Completed*

When a sales order created in Acumatica ERP is exported, it is assigned the *Paid* status in Shopify regardless of its open balance in Acumatica ERP. If the sales order has not yet been fully paid, you need to collect the payment and create the corresponding payment document in Acumatica ERP.

## Exporting Customers, Items, and Taxes {#section_imn_gj3_g5b .section}

A customer specified in a sales order in Acumatica ERP is exported along with the order. If the customer has not been previously exported to the Shopify store, the retail-commerce connector creates it in the Shopify store and adds it to the exported sales order during the order export.

Stock and non-stock items added to a sales order in Acumatica ERP must be synchronized with the Shopify store. Also, each item must be added in its sales unit of measure; otherwise, an error occurs during the export of the sales order.

The synchronization of the taxes applied to a sales order depends on the state of the **Tax Synchronization** check box on the **Orders** tab \(**Taxes** section\) of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form for the store. If the **Tax Synchronization** check box is selected, taxes corresponding to the tax IDs from the order settings are created and applied to the exported sales order in the Shopify store. These tax IDs as listed on the **Taxes** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

## Updating Synchronized Orders {#section_myz_fk3_g5b .section}

After a sales order has been exported from Acumatica ERP to a Shopify store, you can still make changes to the sales order in Acumatica ERP if these changes do not affect the order total. For example, you can update the shipping address or change the customer's email address or phone number. The sales order can then be resynchronized so that the sales order in the Shopify store reflects the most recent changes.

Sales orders created in Acumatica ERP and exported to Shopify cannot be edited in the Shopify admin area. If you need to make any changes to such an order \(that is, the changes that you would normally make after clicking the **Edit** button at the top of the Shopify order page\), you should cancel the order and recreate it with the correct settings and details.

You can allow adding items to sales orders that have been exported to Shopify. To do so, you select the **Allow Adding Items to Processed Orders** check box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. When this check box is selected for a store, a new column, **Excluded from Export**, is displayed for sales orders synchronized with the store on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. If you add an item to such an order, the**Excluded from Export** check box automatically becomes selected, which indicates that this item will not be reflected in the order in the Shopify store after the sales order is resynchronized.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_SP_Syncing_Orders_Mapref.md)

