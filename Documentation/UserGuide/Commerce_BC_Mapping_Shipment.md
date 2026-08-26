# Shipment Entity {#_47221914-9e94-4f58-afc7-1b360b7eddff .concept}

This topic provides reference information about the standard filtering and field mapping used for the *Shipment* entity during the synchronization between Acumatica ERP and BigCommerce.

## Shipment Filtering { .section}

When shipments are exported to Shopify, a shipment is skipped if any of the following conditions are met:

-   The status of the shipment is *Confirmed*, *Invoiced*, or *Completed*.
-   The sales order related to the shipment has not been synchronized.

## Shipment Export Mapping { .section}

The following table shows the mapping of Acumatica ERP fields to BigCommerce fields that is used during the export of shipment data to BigCommerce.

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(BigCommerce\)**|
|Field Name|Form Object|Field Name|Page Object|Notes|
|-----------------------------------|---------------------------------|
|----------|-----------|----------|-----------|-----|
|[Shipments](SO_30_20_00.md) \(SO302000\) form| |
|**Shipment Nbr.**|Summary area|**Shipment ID**|**View Shipments** page| |
|**Ship Via**|**Shipping** tab &gt; **Shipping Information** section|Shipping Method|**View Shipments** page|If a shipment is a drop-shipment, the ship via code is copied from the purchase order.|
|**Tracking Number**|**Packages** tab|**Shipping Tracking Number**|**View Shipments** page|-   If a shipment is a drop shipment, the vendor reference number from the purchase order is used.
-   Multiple tracking numbers are concatenated together. If the maximum length is exceeded, the value is truncated.

|
|**Notes**| |**Shipment Comments**|**View Shipments** page| |
|**Inventory ID**|**Details** tab|**Product ID**|**View Shipments** page| |
|**Shipped Qty.**|**Details** tab|**Quantity**|**View Shipments** page| |

**Parent topic:**[BigCommerce Mapping Reference](../UserGuide/Commerce_BC_Mapping_Reference.md)

