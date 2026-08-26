# Customer Entity {#_abc1234a-d6af-41da-b89b-c27762ab8ee4 .concept}

This topic outlines the changes to the field mapping used for the *Customer* entity in Acumatica ERP. These changes reflect the platform's switch from the REST API to GraphQL for enhanced Shopify integration.

In the [Fields Unavailable in GraphQL](#_3c04f7b9-0909-46e3-a795-f1efe356bfe7) section, you'll find a list of all the fields used for entity mapping that are not available in GraphQL but were available in the REST API.

## Customer Mapping { .section}

In the [Shopify\_GraphQL\_Customer.xlsx](Files/Shopify_GraphQL_Customer.xlsx) file, you can find the mapping of Acumatica ERP fields on the [Customers](AR_30_30_00.md) \(AR303000\) form to Shopify default and custom fields. The system uses this mapping during the export, import, and bidirectional sync of the customer data to Shopify.

Particularly, you can see how each Acumatica ERP field was previously mapped to Shopify fields through the REST API, and how it's now mapped using GraphQL.

## Fields Unavailable in GraphQL {#_3c04f7b9-0909-46e3-a795-f1efe356bfe7 .section}

The following table lists the fields that were:

-   Used for the export and import mapping and import filtering of the *Customer* entity on the [Entities](BC_20_20_00.md) \(BC202000\) form
-   Supported by the Shopify connector with the REST API, but not with GraphQL

|Tab on the Entities Form|External Object|External Field|REST API Object|REST API Field|
|------------------------|---------------|--------------|---------------|--------------|
|**Export Mapping**|*Customer*|*State*|`Customer`|`state`|
|**Import Mapping**, **Import Filtering**|*Customer*|*Currency*|`Customer`|`currency`|
|**Export Mapping**, **Import Mapping**|*Customer -&gt; Customer Address*|*Normalized Country Name*|`CustomerAddress`|`country_name`|

**Parent topic:**[Shopify GraphQL Mapping](../UserGuide/Commerce_SP_Mapping_Reference_GraphQL.md)

