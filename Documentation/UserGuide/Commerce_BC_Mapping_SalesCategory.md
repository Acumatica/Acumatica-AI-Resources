# Sales Category Entity

This topic provides reference information about the standard filtering and field mapping used for the *Sales Category* entity during the synchronization between Acumatica ERP and BigCommerce. The topic also contains information about the merging of duplicate records during the synchronization.

## Merging of Duplicates

During the synchronization of the *Sales Category* entity, a sales category in the source system is merged with an existing sales category in the destination system if the **Name** of the product category in BigCommerce matches the **Description** of the item sales category in Acumatica ERP.

## Sales Category Mapping

The following table shows the mapping of Acumatica ERP fields and BigCommerce fields that is used during the export of sales category data from Acumatica ERP to BigCommerce and during the import from BigCommerce to Acumatica ERP.

|**BigCommerce**|**Acumatica ERP**|
|Field Name|Page Object|Field Name|Form Object|
|---------------|-----------------|
|----------|-----------|----------|-----------|
|**Name**|*Edit Category* page &gt; **Category Details** section|**Description**|[Item Sales Categories](IN_20_40_60.md) \(IN204060\)|
|**Parent Category**|*Edit Category* page &gt; **Category Details** section|**Parent Category**|[Item Sales Categories](IN_20_40_60.md)|

When the *Sales Category* entity is synchronized, the order in which item sales categories are displayed on the [Item Sales Categories](IN_20_40_60.md) form in Acumatica ERP and on the *Product Category* page in BigCommerce \(and ultimately on the storefront\) is also synchronized.

**Parent topic:**[BigCommerce Mapping Reference](../UserGuide/Commerce_BC_Mapping_Reference.md)

