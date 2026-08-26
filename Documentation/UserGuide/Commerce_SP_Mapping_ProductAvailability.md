# Product Availability Entity {#_c269daa1-7a5b-4558-8c48-feef3df9f0e3 .concept}

This topic provides reference information about the standard field mapping used for the *Product Availability* entity during the synchronization between Acumatica ERP and Shopify.

## Units of Measure of Available Item Quantities { .section}

An item's available quantity is exported to the Shopify store in the item's sales unit of measure, which is defined on the **General** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) form. If an item's base UOM is different from its sales UOM, during the synchronization of the *Product Availability* entity, the item's available quantity is converted to the sales UOM before being exported to the Shopify store,

**Important:** To avoid discrepancies in sales orders imported into Acumatica ERP, we recommend that before changing an item's sales UOM you make sure that there are no unsynchronized sales orders that contain the item. Also, you should synchronize the item's available quantity immediately after changing its sales UOM so that new orders for the item are created in the Shopify store with the updated UOM.

## Product Availability Export Mapping { .section}

The following table shows the mapping of Acumatica ERP fields to Shopify fields that is used during the export of availability data of stock items to Shopify.

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(Shopify\)**|
|Field Name|Form Object|Field Name|Page Object|
|-----------------------------------|-----------------------------|
|----------|-----------|----------|-----------|
|**Availability**: *Set as Available \(Track Qty.\)*|**eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form|**Available**|Product page, **Inventory** section|
|**Availability**: *Store Default*|[Stock Items](IN_20_25_00.md) \(IN202500\) form, **eCommerce** tab|**Available**|Product page, **Inventory** section|
|**Default Availability**: *Set as Available \(Track Qty.\)*|[Shopify Stores](BC_20_10_10.md) \(BC201010\) form, **Inventory** tab|

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(Shopify\)**|
|Field Name|Form Object|Field Name|Page Object|Notes|
|-----------------------------------|-----------------------------|
|----------|-----------|----------|-----------|-----|
|The following settings are applied if **Availability** is set to *Set as Available \(Track Qty.\)* on the [Stock Items](IN_20_25_00.md) \(IN202500\) form and the item quantity becomes 0.| | | |
|[Stock Items](IN_20_25_00.md) form, **eCommerce** tab| | | |
|**When Qty. Unavailable**: *Do Nothing*|**eCommerce** tab|**Continue selling when out of stock**: No changes|Product page, **Inventory** section| |
|**When Qty. Unavailable**: *Set as Unavailable*|**eCommerce** tab|**Continue selling when out of stock**: Cleared|Product page, **Inventory** section| |
|**When Qty. Unavailable**: *Set as Pre-Order/Continue Selling*|**eCommerce** tab|**Continue selling when out of stock**: Selected|Product page, **Inventory** section| |
|**When Qty. Unavailable**: *Store Default*|**eCommerce** tab|See the following rows of the table.|
|The following settings are applied if **When Qty. Unavailable** is set to *Store Default* on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form and the item quantity becomes 0.|
|[Shopify Stores](BC_20_10_10.md) \(BC201010\) form, **Inventory** tab| | | |
|**When Qty. Unavailable**: *Do Nothing*|**Inventory** tab, **Inventory** section|**Continue selling when out of stock**: Unchanged|Product page, **Inventory** section| |
|**When Qty. Unavailable**: *Set as Unavailable*|**Inventory** tab, **Inventory** section|**Continue selling when out of stock**: Cleared|Product page, **Inventory** section| |
|**When Qty. Unavailable**: *Set as Continue Selling*|**Inventory** tab, **Inventory** section|**Continue selling when out of stock**: Selected|Product page, **Inventory** section| |

**Parent topic:**[Shopify Mapping Reference](../UserGuide/Commerce_SP_Mapping_Reference.md)

