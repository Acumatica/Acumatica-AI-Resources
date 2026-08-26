# Order Synchronization: General Information {#_73b21698-f5d7-4589-9029-c63162005da4 .concept}

You can import orders that have been placed in Amazon to Acumatica ERP for further processing.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure the synchronization of orders between Acumatica ERP and the Amazon seller account
-   Configure the synchronization of payments between Acumatica ERP and the Amazon seller account
-   Configure the synchronization of returns between Acumatica ERP and the Amazon seller account
-   Import sales orders with payments from the Amazon store to Acumatica ERP

## Applicable Scenarios { .section}

The synchronization of orders is the main scenario for the integration between an ERP system and an external ecommerce system.

You set up the import of seller-fulfilled orders from Amazon to Acumatica ERP so that you can process the imported orders further, for example, create a shipment, invoice the customer, and process the payment. For details on importing seller-fulfilled orders, see [Order Synchronization: Seller-Fulfilled Orders](Commerce_AZ_Syncing_Orders_Seller_Fulfilled.md).

For marketplace-fulfilled orders, you configure the import for accurate tracking of inventory and payments even though the order fulfillment is performed by Amazon. For details on importing marketplace-fulfilled orders, see [Order Synchronization: Marketplace-Fulfilled Orders](Commerce_AZ_Syncing_Orders_Marketplace_Fulfilled.md).

## Determining the Order Time Zone { .section}

While you are performing the initial configuration of the Amazon store, on the **Orders** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form, you can specify the **Order Time Zone** that the system will use for each order imported from the Amazon seller account when it is created in Acumatica ERP. The order time zone is needed to determine the correct date and time of the order if Acumatica ERP and the Amazon seller account belong to different time zones.

## Limiting the Date Range for Order Import { .section}

If you have had the Amazon seller account for a while before implementing Acumatica ERP, you might want to prevent old orders from being imported to Acumatica ERP when you start synchronizing orders. On the **Orders** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form, you fill in the **Earliest Order Date** box. Orders placed before this date in Amazon will be excluded from the import to Acumatica ERP.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_AZ_Syncing_Orders_Mapref.md)

