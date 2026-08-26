# Order Synchronization: Marketplace-Fulfilled Orders {#_aafda182-cad9-450b-b23f-8d79362d48bb .concept}

For marketplace-fulfilled orders, Amazon handles order fulfillment. Such orders are imported to Acumatica ERP as sales orders of the *Invoice* type. Shipments are neither created in Acumatica ERP nor exported to the Amazon seller account. The sections of below explain how to set up the synchronization of marketplace-fulfilled orders.

## Setting Up the Import of Marketplace-Fulfilled Orders { .section}

To set up the synchronization of data for marketplace-fulfilled orders, you perform the following general steps:

1.  Encrypt the data.

    Make sure that the Acumatica ERP database is encrypted with an algorithm with a minimum of 2048-bit encryption. For an overview of encrypting data in Acumatica ERP, see [Digital Certificates: General Information](SA_Data_Encryption_GeneralInfo.md).

2.  Activate the entities.

    To synchronize seller-fulfilled orders, the following entities should be activated on the **Entities** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form:

    -   *Marketplace-Fulfilled Order*
    -   *Payment*
3.  Specify the order type for imported orders.

    On the **Orders** tab \(**Order** section\), you must specify the order type that will be used for imported marketplace-fulfilled orders in the **Marketplace-Fulfilled Order Type** box. The order type must be defined on the [Order Types](SO_20_10_00.md) \(SO201000\) form based on the *IN - Invoice* template.

4.  Specify the shipping price item.

    On the **Orders** tab \(**Order** section\), you fill in the **Shipping Price Item** box with a non-stock item representing shipping fees in the imported marketplace-fulfilled orders.

5.  Specify the common order synchronization settings.

    On the **Orders** tab \(**General** and **Order** sections\), you specify the general settings related to the synchronization of orders, such as the branch that will appear on the imported documents, the earliest order date \(which eliminates earlier orders that should not be imported\), and the generic customer ID that will be inserted in the imported documents.

    **Tip:** We recommend that the generic customer ID be created without address details other than the country.

6.  Specify the synchronization settings specific to marketplace-fulfilled orders.

    In the **Orders** tab \(**Marketplace-Fulfilled Order** section\), you specify the warehouse and warehouse location created for the marketplace on the [Warehouses](IN_20_40_00.md) \(IN204000\) form. The warehouse and location specified in this section are inserted in imported marketplace-fulfilled orders. Make sure that they contain at least the same quantity of items that were sent to Amazon warehouses.

    **Attention:** The issue of items to be sent to Amazon warehouses should be processed manually.

    You can also specify a dedicated shipping account \(and subaccount\) to be used for marketplace-fulfilled orders. If no shipping account \(and subaccount\) has been specified in this section, the amounts will be recorded to the freight account \(and subaccount\) specified for the default warehouse of the generic customer.

7.  Make sure that the product identifiers match.

    For each product in the Amazon seller account, the seller SKU or the ASIN number should match the identifier specified for the stock or template item in one of the following boxes on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Template Items](IN_20_30_00.md) \(IN203000\) form:

    -   **Inventory ID** in the Summary area
    -   **Alternate ID** in the row of the *Global* type on the **Cross-Reference** tab
    **Important:** An inventory item can have only a single cross-reference with the product's SKU specified as the alternate ID. That is, you cannot match a single product with multiple UOMs from the Amazon seller account with a single inventory item by using multiple cross-references in Acumatica ERP. Each product's UOM with the SKU from the Amazon seller account should be matched with a separate inventory item in Acumatica ERP.

8.  Map the payment methods.

    Map the payment methods set up in the Amazon seller account with the payment methods defined in Acumatica ERP, as described in [Order Synchronization: Import of Payments](Commerce_AZ_Syncing_Orders_Importing_Payments.md).


## Synchronizing Marketplace-Fulfilled Orders { .section}

Seller-fulfilled orders are imported from an Amazon seller account during the synchronization of the *Marketplace-Fulfilled Order* entity. Only marketplace-fulfilled orders that have been fully shipped are imported to Acumatica ERP. For details about data synchronization, see [Data Synchronization: General Information](Commerce_AZ_Data_Sync_GeneralInfo.md).

During the data processing stage of the order import, a sales order is created on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form with the following settings:

-   In the Summary area, the order type is assigned based on the value specified in the **Marketplace-Fulfilled Order Type** box on the **Orders** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form.
-   In the Summary area, the customer is inserted based on the customer record specified in the **Generic Customer** box on the **Orders** tab.
-   On the **Details** tab, the warehouse and the warehouse location are inserted for the imported items o based on the settings specified in the **Marketplace-Fulfilled Order** section of the **Orders** tab.
-   On the **Details** tab, a line with the shipping price item is added. The system inserts the non-stock item based on the value in the **Shipping Price Item** box on the **Orders** tab.

## Importing Replacement Orders { .section}

Amazon creates a replacement order when a user replaces any products in an existing order in the Amazon seller account. Replacement orders are imported from the Amazon seller account during the synchronization of the *Sales Order* entity.

As a result of importing a replacement order, the system creates a sales order with the following description on the [Sales Orders](../Shared/../UserGuide/SO_30_10_00.md) \(SO301000\) form: *Replacement order &lt;Replacement order external ID&gt; for Amazon order &lt;Replaced order external ID&gt; from &lt;Store name&gt; store*. The total amount of the replacement order is $0 and a payment is neither created nor imported for the replacement order.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_AZ_Syncing_Orders_Mapref.md)

