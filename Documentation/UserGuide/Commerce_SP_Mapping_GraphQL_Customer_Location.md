# Customer Location Entity {#_abc1234a-d6af-ab12-b89b-c27762ab8ee4 .concept}

This topic provides the changes to the field mapping used for the *Customer Location* entity in Acumatica ERP. These changes reflect Acumatica ERP's adoption of GraphQL to align with Shopify's shift away from the REST API.

The [Fields Unavailable in GraphQL](#_97ecc822-e679-4925-86f3-2a1a76e38afd) section lists all the fields used for entity mapping that are not available in GraphQL but were available in the REST API.

## Customer Location Mapping { .section}

In the [Shopify\_GraphQL\_Customer\_Location.xlsx](Files/Shopify_GraphQL_Customer_Location.xlsx) file, you can find the mapping of Acumatica ERP fields on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form to Shopify default and custom fields. The system uses this mapping during the export, import, and bidirectional sync of the customer location data to Shopify.

Particularly, you can see how each Acumatica ERP field was previously mapped to Shopify fields through the REST API, and how it's now mapped using GraphQL.

## Fields Unavailable in GraphQL {#_97ecc822-e679-4925-86f3-2a1a76e38afd .section}

The following table lists the fields that were:

-   Used for the export and import mapping and filtering of the *Customer Location* entity on the [Entities](BC_20_20_00.md) \(BC202000\) form
-   Supported by the Shopify connector with the REST API, but not with GraphQL

|Tab on the Entities Form|External Object|External Field|REST API Object|REST API Field|
|------------------------|---------------|--------------|---------------|--------------|
|**Export Mapping**|*Customer Address Data*|*Province*|`CustomerAddress`|`province`|
|**Export Mapping**|*Customer Address Data*|*Country*|`CustomerAddress`|`country`|
|**Export Mapping**, **Import Mapping**, **Import Filtering**|*Customer Address Data*|*Normalized Country Name*|`CustomerAddress`|`country_name`|
|**Import Mapping**, **Import Filtering**|*Customer Address Data*|*Customer ID*|`CustomerAddress`|`customer_id`|

**Parent topic:**[Shopify GraphQL Mapping](../UserGuide/Commerce_SP_Mapping_Reference_GraphQL.md)

