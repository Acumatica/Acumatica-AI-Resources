# Order Synchronization: Import of POS Exchanges {#_978eca25-f761-4813-8b17-bf3d78d8ad8e .concept}

If your company uses Shopify point-of-sale \(POS\) functionality and imports POS orders from a Shopify store into Acumatica ERP, you can also configure the import of exchanges for POS orders into Acumatica ERP. The import of Shopify POS orders and exchanges is available only when the *Shopify POS Connector* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Important:** Before you can import Shopify POS exchanges into Acumatica ERP, Shopify must enable API access for POS exchange data in the store itself. Contact Shopify to request access.

## Configuring the Import of Shopify POS Exchanges { .section}

To define the settings for importing Shopify POS exchanges, you perform the following general steps on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form:

1.  On the **Entities** tab, activate the *Refund* entity.
2.  On the **Orders** tab, select the **Import POS Orders** check box.
3.  In the **Order Type for Exchange** box \(**Direct POS Orders** section\), select the order type to be assigned to return orders for exchanges that happen over the counter and do not require shipping. In this box, you can select only an order type that is based on the *MO - Mixed Order* template and has both the *Receipt* operation and the *Issue* operation activated.
4.  In the **Order Type for Exchange** box \(**Shipped POS Orders** section\), select the order type to be assigned to return orders with shipping. In this box, you can select only an order type that is based on the *RC - Return for Credit* template and has both the *Receipt* operation and the *Issue* operation activated.

**Tip:** Create dedicated order types for Shopify POS exchanges instead of modifying predefined order types.

## Synchronizing Shopify POS Exchanges { .section}

Exchanges for both direct and shipped Shopify POS orders are imported during the synchronization of the *Refund* entity, which you activate on the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. The import process is similar to the synchronization of other entities. For more information on data synchronization, see [Data Synchronization: General Information](Commerce_SP_Data_Sync_GeneralInfo.md).

## Importing Direct POS Exchanges { .section}

When a direct Shopify POS exchange is imported, the system processes the documents depending on the status of the Shopify POS order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

If the sales order has the *Open* or *On Hold* status, the system does the following:

-   In the sales order, inserts a line for the new item.
-   Creates a return order for the exchanged item with the order type specified in the **Order Type for Exchange** box of the **Direct POS Orders** section on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
-   In the new order, inserts a line for the exchanged item with the *Receipt* operation.
-   Creates a payment, a refund, or both for the exchange.

Because of API limitations, the order total now includes the amounts of both the exchanged item and the new item. You need to manually create an additional payment and refund for the exchange on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. The amounts of the payment and refund depend on whether the item was exchanged at the same price, a higher price, or a lower price, as described in the following table.

|Price Change|Payment Amount|Refund Amount|
|------------|--------------|-------------|
|The new item's price is the same.|Extended price of the exchanged item|Extended price of the exchanged item|
|The new item's price is the higher.|Extended price of the exchanged item|Extended price of the exchanged item|
|The new item's price is the lower.|Extended price of the new item|Extended price of the new item|

**Important:** We recommend processing each direct POS order as soon as it is imported into Acumatica ERP so that it has the *Completed* status before an exchange is initiated. Thus, you will not have to create additional payments and refunds manually.

If the sales order that has the *Completed* status, the system does the following:

-   On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, creates a new sales order with the order type specified in the **Order Type for Exchange** box of the **Direct POS Orders** section on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) form.
-   In the new order, inserts a line for the exchanged item with the *Receipt* operation, and a line for the new item with the *Issue* operation.
-   If the price of the new item is different from the price of the original item, creates a payment for the additional amount or a refund for the amount that needs to be returned to the customer on the [Payments and Applications](AR_30_20_00.md) form.

## Importing Shipped POS Exchanges { .section}

Items in a shipped POS order can be exchanged only if the order has been fully shipped. When a Shopify POS exchange is imported, the system does the following:

-   On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, creates a new sales order with the order type specified in the **Order Type for Exchange** box of the **Shipped POS Orders** section on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) form.
-   In the new order, inserts a line for the exchanged item with the *Receipt* operation, and a line for the new item with the *Issue* operation.
-   Applies the invoice of the original sales order to the new order.
-   If the price of the new item is different from the price of the original item, creates a payment for an additional amount or a refund for the amount that needs to be returned to the customer on the [Payments and Applications](AR_30_20_00.md) form.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_SP_Syncing_Orders_Mapref.md)

