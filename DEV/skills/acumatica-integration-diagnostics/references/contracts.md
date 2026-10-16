# Contract-aware migration for 2026 R2

Identify the ERP build, endpoint name/version and contract version separately.
2026 R2 supports Contract Versions 4 and 5. `Default/26.200.001` uses Version 5;
`Default/25.200.001` uses Version 4. New custom endpoints created from scratch
use Version 5. An ERP upgrade alone does not require replacing a supported
Version 4 endpoint. Confirm the chosen endpoint on the target instance.

## Migrating to Version 5

- Use OData 4.01 URL conventions instead of Version 4's OData 3 conventions.
  Put nested selections and expansions inside their owning expansion, for example
  `$expand=MainContact($select=Email;$expand=Address($select=City))&$select=CustomerName`.
  Check DateTime/DateTimeOffset literals against the target contract's filter guide.
- Retrieve custom fields through `$select`, including the owning view prefix,
  instead of Version 4's `$custom`. For example, a custom StockItem field can use
  `$select=ItemSettings.UsrRepairItemType`; a detail field belongs inside its
  expansion, such as `$expand=Details($select=Transactions.UsrRepairItemType)`.
- Drop-down responses contain an internal ID and description. Send the ID in
  request bodies and filters; do not reuse display labels. Respect string versus
  integer IDs. Multi-select fields are arrays of structured values; Version 5
  supports `any()` and `all()` filtering for endpoint-defined multi-select fields.
- Regenerate or select compatible client models from the target OpenAPI 3.0
  schema. Version 5 explicitly marks value wrappers and additional metadata as
  nullable. Check serializers, null handling and drop-down mappings as well as
  compilation; do not invent package names or assume a published client exists.
- Compare affected entities, fields and actions with the system-endpoint
  comparison, then verify the target schema. The published comparison is
  `26.200.001` versus `25.200.001`, not an entity-by-entity 2026 R1-to-2026 R2 change list.

Keep Version 4 request builders and models contract-specific when both contracts
are supported. Validate a nested read, custom-field read, drop-down filter and
serialization/null handling before testing affected writes on an authorized site.
Report schema review, compilation and actual HTTP results separately.

## Release-specific sources

When installed without this repository, resolve these topics through the R2
documentation fallback in the parent skill.

- [Contract versions](../../../../Documentation/IntegrationDevelopmentGuide/IS__con_Comparison_of_Contract_Versions.md)
- [System endpoints](../../../../Documentation/IntegrationDevelopmentGuide/IS__con_Comparison_of_Endpoints.md)
- [Version 5 filter](../../../../Documentation/IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_filter.md)
- [Version 5 select](../../../../Documentation/IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_select.md)
- [Version 5 expand](../../../../Documentation/IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_expand.md)
- [Version 4 filter](../../../../Documentation/IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_filter_4.md)
- [Version 4 select](../../../../Documentation/IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_select_4.md)
- [Version 4 expand](../../../../Documentation/IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_expand_4.md)
- [OpenAPI 3.0](../../../../Documentation/IntegrationDevelopmentGuide/IS__IS_CB_REST_Endpoint_API_Reference.md)
