# Preparing Entities for Synchronization: Shopify Metafields {#_78db5b97-73ba-4c50-9042-fc8b5828b6ff .concept}

Shopify customers can create custom fields in their stores to hold additional information about customers, products, orders, blog posts, or even the store itself. Data from metafields can be used for internal purposes \(for example, for reporting and analysis\) or added to the store's theme to customize the appearance of the storefront to show more information to customers. For example, you might want to display additional information about a product on a product page, to add information about a customer \(which is or is not visible to the customer in their store account\), or to add an additional box to the checkout page to request information about the urgency of the order fulfillment. For more information about metafields in Shopify, see [the Shopify documentation](https://help.shopify.com/en/manual/metafields).

## Using Shopify Metafields in Field Mapping { .section}

You can map fields from Acumatica ERP to metafields created in a Shopify store for the following entities maintained on the [Entities](BC_20_20_00.md) \(BC202000\) form:

-   *Stock Item*
-   *Non-Stock Item*
-   *Template Item*
-   *Customer*
-   *Sales Order*

To use a Shopify metafield in field mapping for data import, you need to select the appropriate option in the **External Object** column of the table on the **Import Mapping** tab or the **Export Mapping** tab, depending on the synchronization direction. The options that are available for each of the entities are summarized in the following table.

|Entity|Tab|External Object|
|------|---|---------------|
|*Stock Item*|**Export Mapping**|*Product → Metafields*

 *Product → Product Variants → Metafields*

|
|*Non-Stock Item*|**Export Mapping**|*Product → Metafields*

 *Product → Product Variants → Metafields*

|
|*Template Item*|**Export Mapping**|*Product → Metafields*

 *Product → Product Variants → Metafields*

|
|*Customer*|**Export Mapping**|*Customer → Metafields*|
|**Import Mapping**|
|*Sales Order*|**Import Mapping**|*Order Data - Metafields*

 *Order Data → Customer → Metafields*

|

Metafields in Shopify have several properties, including the following:

-   *Namespace*: A category or container that groups some metafields and differentiates them from other metafields
-   *Key*: The name of the metafield; it is used to reference the information stored in the metafield
-   *Value*: The content of the metafield

When you are configuring an import mapping for the *Customer* or *Sales Order* entity, to map a Shopify metafield with an Acumatica ERP field, they need to select the metafield object in the **External Object** column and type the metafield name in the **External Field / Value** column in the following format: `Namespace.Key`.

When you are configuring an export mapping for the *Stock Item* , *Non-Stock Item*, *Template Item*, or *Customer* entity, to map an Acumatica ERP field with a Shopify metafield, you need to select the metafield object in the **External Object** column and type the metafield name in the **External** column in the following format: `Namespace.Key`. During the synchronization of the entity, the system will check whether the metafield with this name exists and do either of the following:

-   If the metafield exists, update its value based on the settings of the **External Field / Value** column.
-   If the metafield does not exist, create it with the specified namespace and key, and assign it the value according to the mapping settings for the particular object.

You can also use metafields in formulas. When a metafield is used in a formula, its namespace and key should be enclosed in square brackets: `[Namespace.Key]`.

**Parent topic:**[Preparing Entities for Synchronization](../UserGuide/Commerce_SP_Preparing_Entities_Mapref.md)

