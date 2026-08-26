# Shipment Entity {#_86d5916d-4da7-4345-ac7d-51497a236032 .concept}

This topic provides reference information about the standard filtering and field mapping used for the *Shipment* entity during the synchronization between Acumatica ERP and Shopify.

## Shipment Filtering { .section}

When shipments are exported to Shopify, a shipment is skipped if any of the following conditions are met:

-   The status of the shipment is *Confirmed*, *Invoiced*, or *Completed*.
-   The sales order related to the shipment has not been synchronized.

## Shipment Export Mapping { .section}

The following table shows the mapping of Acumatica ERP fields to Shopify fields that is used during the export of shipment data to Shopify.

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(Shopify\)**|
|Field Name|Form Object|Field Name|Notes|
|-----------------------------------|-----------------------------|
|----------|-----------|----------|-----|
|[Shipments](SO_30_20_00.md) \(SO302000\) form| | |
| | |**Fulfillments**|
|**Carrier Name**| |tracking\_company| |
|**Tracking Number**|**Packages** tab|tracking\_number, tracking numbers| |
| | |**Line Items**|
|**Shipped Qty.**|Summary area|quantity| |
|[Sales Orders](SO_30_10_00.md) \(SO301000\) form| | |
|**Inventory ID**|**Details** tab|sku| |

**Parent topic:**[Shopify Mapping Reference](../UserGuide/Commerce_SP_Mapping_Reference.md)

