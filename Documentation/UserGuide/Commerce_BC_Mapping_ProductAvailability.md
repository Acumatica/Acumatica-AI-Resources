# Product Availability Entity {#_aa5bfc31-0a9c-4392-822b-f4acb4fd3b33 .concept}

This topic provides reference information about the standard field mapping used for the *Product Availability* entity during the synchronization between Acumatica ERP and BigCommerce.

## Units of Measure of Available Item Quantities { .section}

An item's available quantity is exported to the BigCommerce store in the item's sales unit of measure, which is defined on the **General** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) form. If an item's base UOM is different from its sales UOM, during the synchronization of the *Product Availability* entity, the item's available quantity is converted to the sales UOM before being exported to the BigCommerce store.

**Important:** To avoid discrepancies in sales orders imported into Acumatica ERP, we recommend that before changing an item's sales UOM you make sure that there are no unsynchronized sales orders that contain the item. Also, you should synchronize the item's available quantity immediately after changing its sales UOM so that new orders for the item are created in the BigCommerce store with the updated UOM.

## Product Availability Export Mapping for Stock Items { .section}

The following table shows the mapping of Acumatica ERP fields to BigCommerce fields that is used during the export of availability data of stock items to BigCommerce.

The available quantity to export depends on the warehouse mode and the availability mode selected for the store on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC2010000\) form. For details, see [Product Availability: Calculation of Available Quantities](Commerce_BC_Syncing_Product_Availability_Quantity_Calculation.md).

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(BigCommerce\)**|
|Field Name|Form Object|Field Name|Page Object|
|-----------------------------------|---------------------------------|
|----------|-----------|----------|-----------|
|**Availability**: *Set as Available \(Track Qty.\)*|**eCommerce** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form|**Stock**: Available quantity of the item|Product management page &gt; **Inventory** section|
|**Availability**: *Store Default*|[Stock Items](IN_20_25_00.md) \(IN202500\) form, **eCommerce** tab|**Stock**: Available quantity of the item|Product management page &gt; **Inventory** section|
|**Default Availability**: *Set as Available \(Track Qty.\)*|[BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, **Inventory** tab|

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(BigCommerce\)**|
|Field Name|Form Object|Field Name|Page Object|
|-----------------------------------|---------------------------------|
|----------|-----------|----------|-----------|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form, **eCommerce** tab| |
|**Availability**: *Set as Available \(Track Qty.\)*|**eCommerce** tab| | |
|The following settings are applied if **Availability** is set to *Set as Available \(Track Qty.\)* on the [Stock Items](IN_20_25_00.md) \(IN202500\) form and the item quantity becomes 0.|
|[Stock Items](IN_20_25_00.md) form, **eCommerce** tab| |
|**When Qty. Unavailable**: *Do Nothing*|**eCommerce** tab|No changes|Product management page &gt; **Purchasability** section|
|**When Qty. Unavailable**: *Set as Unavailable*|**eCommerce** tab|**This product cannot be purchased in my online store**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|**When Qty. Unavailable**: *Set as Pre-Order/Continue Selling*|**eCommerce** tab|**This product is coming soon but I want to take pre-orders**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|**When Qty. Unavailable**: *Store Default*|**eCommerce** tab|See the following rows of the table.|
|The following settings are applied if **When Qty. Unavailable** is set to *Store Default* on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) form and the item quantity becomes 0.|
|[BigCommerce Stores](BC_20_10_00.md) form, **Inventory** tab| |
|**When Qty. Unavailable**: *Do Nothing*|**Inventory** tab|No changes|Product management page &gt; **Purchasability** section|
|Product management page &gt; **Inventory** section|
|**When Qty. Unavailable**: *Set as Unavailable*|**Inventory** tab|**This product cannot be purchased in my online store**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|
|**When Qty. Unavailable**: *Set as Pre-Order*|**Inventory** tab|**This product is coming soon but I want to take pre-orders**: Selected|Product management page &gt; **Purchasability** section|
|**Track inventory**: Cleared|Product management page &gt; **Inventory** section|

**Parent topic:**[BigCommerce Mapping Reference](../UserGuide/Commerce_BC_Mapping_Reference.md)

