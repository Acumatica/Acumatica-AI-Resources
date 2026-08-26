# Product-Related Entities {#_abc1234a-3341-9118-b89b-c27762ab8ee4 .concept}

Acumatica ERP now uses GraphQL instead of the REST API to communicate with Shopify. This has resulted in changes to the field mapping used for product-related entities in Acumatica ERP. The synchronization of products involves the following entities:

-   *Stock Item*
-   *Non-Stock Item*
-   *Template Item*
-   *Product Availability*
-   *Product Image*

In the [Fields Unavailable in GraphQL](#_3c04f7b9-0909-46e3-a795-f1efe356bfe7) section, you'll find a list of the fields used for entity mapping that are not available in GraphQL but were available in the REST API.

## Stock Item, Non-Stock Item, and Template Item Mapping { .section}

In the [Shopify\_GraphQL\_Product.xlsx](Files/Shopify_GraphQL_Product.xlsx) file, you can find the mapping of Acumatica ERP fields on the following forms to Shopify default and custom fields:

-   [Stock Items](IN_20_25_00.md) \(IN202500\)
-   [Non-Stock Items](IN_20_20_00.md) \(IN202000\)
-   [Template Items](IN_20_30_00.md) \(IN203000\)

The system uses this mapping during the export, import, and bidirectional sync of the product data to Shopify. The file shows how each Acumatica ERP field was previously mapped to Shopify fields through the REST API, and how it's now mapped using GraphQL.

## Product Availability Mapping { .section}

In the [Shopify\_GraphQL\_Droduct\_Availability.xlsx](Files/Shopify_GraphQL_Product_Availability.xlsx) file, you can find the mapping of Acumatica ERP fields on the following forms to Shopify default and custom fields.

-   [Stock Items](IN_20_25_00.md) \(IN202500\)
-   [Non-Stock Items](IN_20_20_00.md) \(IN202000\)
-   [Template Items](IN_20_30_00.md) \(IN203000\)

The system uses this mapping during the export of the product availability data to Shopify. In the file, you can see how each Acumatica ERP field was previously mapped to Shopify fields through the REST API, and how it's now mapped using GraphQL.

## Fields Unavailable in GraphQL {#_3c04f7b9-0909-46e3-a795-f1efe356bfe7 .section}

The following table lists the fields that were:

-   Used for the export and import mapping and import filtering of the *Stock Item*, *Non-Stock Item*, and *Template Item* entities on the [Entities](BC_20_20_00.md) \(BC202000\) form
-   Supported by the Shopify connector with the REST API, but not with GraphQL

|Tab on the Entities Form|External Object|External Field|REST API Object|REST API Field|
|------------------------|---------------|--------------|---------------|--------------|
|**Import Mapping**, **Import Filtering**|*ProductData*|*Published*|Product|`Published`|
|**Export Mapping**, **Import Mapping**, **Import Filtering**|*ProductData*|*PublishedScope*|Product|`PublishedScope`|
|**Export Mapping**, **Import Mapping**|*ProductData -&gt; ProductVariants*|*FulfillmentService*|Product -&gt; Product Variants|`fulfillment_service`|
|**Export Mapping**, **Import Mapping**|*Product -&gt; Product Variants*|*Option 1*

 *Option 2*

 *Option 3*

|Product|`options`|
|n/a|n/a|*PresentmentPrices*|Product -&gt; Product Variants|`presentment_prices`|

The following table lists the fields used for the *Product Availability* entity that the Shopify connector supported with the REST API but does not support with GraphQL.

|External Object|External Field|REST API Object|REST API Field|
|---------------|--------------|---------------|--------------|
|n/a|*RelocateIfNecessary*|Product -&gt; Product Variants|`relocate_if_necessary`|
|n/a|*DisconnectIfNecessary*|Product -&gt; Product Variants|`disconnect_if_necessary`|

The following table lists the fields used for the *Product Image* entity that the Shopify connector supported with the REST API but does not support with GraphQL.

|External Object|External Field|REST API Object|REST API Field|
|---------------|--------------|---------------|--------------|
|n/a|*DateCreatedAt*|Product -&gt; Images|`created_at`|
|n/a|*Position*|Product -&gt; Images|`position`|
|n/a|*ProductId*|Product -&gt; Images|`product_id`|

## Other Changes { .section}

The following changes have also been implemented to the Shopify connector due to the shift from the REST API to GraphQL:

-   The values for the product status in GraphQL are *ACTIVE*, *ARCHIVED*, and *DRAFT*; the values accepted by the REST API were *active*, *archived*, and *draft*. The connector does the conversion to uppercase now when sending the product status to Shopify with GraphQL.
-   The products are exported to Shopify for all sales channels.
-   You can export any number of product options to Shopify with GraphQL. The limit was 3 with the REST API.
-   The values for the inventory policy in GraphQL are *DENY* and *CONTINUE*; the values accepted by the REST API were *deny* and *continue*.
-   GraphQL doesn't allow sending item weight without the unit of measure \(UOM\). In the REST API, if the item weight was sent with no UOM, the default UOM was used on the store side. To bypass this limitation, the connector now sends the default item UOM when a weight greater than zero is sent with no UOM.

**Parent topic:**[Shopify GraphQL Mapping](../UserGuide/Commerce_SP_Mapping_Reference_GraphQL.md)

