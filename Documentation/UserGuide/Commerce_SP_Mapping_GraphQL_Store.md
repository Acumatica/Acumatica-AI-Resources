# Store and Webhook Data {#_abc1234a-bbcc-5566-b89b-c27762ab8ee4 .concept}

This topic outlines the changes to the field mapping used for the store settings and webhooks in Acumatica ERP. These changes reflect the platform's switch from the REST API to GraphQL for enhanced Shopify integration.

## Store Setting Mapping { .section}

The following table shows how Acumatica ERP fields on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form map to Shopify default and custom fields. This mapping is used during the synchronization of the store settings to Shopify.

Particularly, you can see how each Acumatica ERP field was previously mapped to Shopify fields through the REST API, and how it's now mapped using GraphQL.

|ERP Field Name|ERP Form Object|REST API Field|REST API Type|GraphQL Field|GraphQL Type|
|--------------|---------------|--------------|-------------|-------------|------------|
|**Store Currency**|**General** tab|`shop.currency`|`string`|`shop.shop.currencyCode`|`enum`|
|**Store URL**|**General** tab|`shop.domain`|`string`|`shop.primaryDomain.host`|`string`|
|**Payment Currencies**|**General** tab|`shop.enabled_presentment_currencies`|`string`|`shop.enabledPresentmentCurrencies`|`enum`|
|**Store Time Zone**|**General** tab|`shop.iana_timezone`|`string`|`shop.ianaTimezone`|`string`|
|n/a|n/a|`shop.timezone`|`string`|`shop.timezoneAbbreviation`|`string`|
|**Store Admin URL**|**General** tab|`shop.myshopify_domain`|`string`|`shop.myshopifyDomain`|`string`|
|n/a|n/a|`shop.id`|`long`|`shop.id`|`ID`|
|n/a|n/a|`shop.weight_unit`|`string`|`shop.weightUnit`|`string` \(`enum`\)|

## Webhook Mapping { .section}

The following table shows the field mapping that's used during the synchronization of webhooks to Shopify. Particularly, you can see how each Acumatica ERP field was previously mapped to Shopify fields through the REST API, and how it's now mapped using GraphQL.

|Field Name|REST API Field|REST API Type|GraphQL Field|GraphQL Type|
|----------|--------------|-------------|-------------|------------|
|n/a|n/a|n/a|`WebhookSubscription.endpoint`|`object`|
|n/a|n/a|n/a|`WebhookSubscription.filter`|`string`|
|`Format`|`WebhookSubscription.format`|`string`|`WebhookSubscription.format`|`enum`|
|`Id`|`WebhookSubscription.id`|`long`|`WebhookSubscription.id`|`ID`|
|`Fields`|`WebhookSubscription.include_fields`|`string`|`WebhookSubscription.include_fields`|`string`|
|`MetaFieldNamespaces`|`WebhookSubscription.metafield_namespaces`|`string`|`WebhookSubscription.metafield_namespaces`|`string`|
|`Topic`|`WebhookSubscription.topic`|`string`|`WebhookSubscription.topic`|`enum`|

**Parent topic:**[Shopify GraphQL Mapping](../UserGuide/Commerce_SP_Mapping_Reference_GraphQL.md)

