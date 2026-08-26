# Payment Entity {#_abc1234a-2213-41da-b89b-c27762ab8ee4 .concept}

Below you can find information about the changes to the field mapping used for the *Payment* entity in Acumatica ERP. These changes were introduced as part of Acumatica ERP's alignment with Shopify's migration from the REST API to GraphQL.

In the [Fields Unavailable in GraphQL](#_3c04f7b9-0909-46e3-a795-f1efe356bfe7) section, you'll find a list of all the fields used for entity mapping that are not supported in GraphQL but were available in the REST API.

## Payment Mapping { .section}

In the [Shopify\_GraphQL\_Payment.xlsx](Files/Shopify_GraphQL_Payment.xlsx) file, you can find the mapping of Acumatica ERP fields on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form to Shopify default and custom fields. The system uses this mapping during the export, import, and bidirectional sync of the payment data to Shopify.

Particularly, you can see how each Acumatica ERP field was previously mapped to Shopify fields through the REST API, and how it's now mapped using GraphQL.

## Fields Unavailable in GraphQL {#_3c04f7b9-0909-46e3-a795-f1efe356bfe7 .section}

The following table lists the fields that were:

-   Used for the import mapping and filtering of the *Payment* entity on the [Entities](BC_20_20_00.md) \(BC202000\) form
-   Supported by the Shopify connector with the REST API, but not with GraphQL

|Tab on the Entities Form|External Object|External Field|REST API Object|REST API Field|
|------------------------|---------------|--------------|---------------|--------------|
|**Import Mapping**, **Import Filtering**|*Order Transaction*|*Device ID*|`transaction`|`DeviceId`|
|**Import Mapping**|*Order Transaction*|*Message*|`transaction`|`Message`|
|**Import Mapping**|*Order Transaction*|*Receipt*|`transaction`|`Receipt`|

**Parent topic:**[Shopify GraphQL Mapping](../UserGuide/Commerce_SP_Mapping_Reference_GraphQL.md)

