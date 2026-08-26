# $expand Parameter {#_b6c2fecd-0b2e-4aba-9bad-4c5050befe25 .concept}

When you retrieve records from Acumatica ERP by using the contract-based REST API, you use the *$expand* parameter to specify the linked and detail entities that should be expanded. By default, no linked or detail entities are expanded; that is, only fields of the top-level entity are returned. You need to explicitly specify each linked or detail entity to be expanded.

You use [OData URI conventions](http://www.odata.org/documentation/odata-version-3-0/url-conventions/) to specify the value of the *$expand* parameter.

**Tip:** If you use the *$expand* parameter in a request, the concurrent request limit or rate limit imposed by the license will not be exhausted sooner because of the use of this parameter.

## Example: Expanding Detail Lines { .section}

To obtain the values of the warehouse detail lines of stock item records, you use the following parameter string: *$expand=WarehouseDetails*.

## Example: Nested Expanding { .section}

If you specify *$expand=MainContact* for the Customer entity, only the Contact linked entity of the Customer entity is expanded, but the Address linked entity within MainContact is not. To expand the Address entity, you should explicitly specify the Address entity to be expanded as follows: *$expand=MainContact,MainContact/Address*.

## Example: Expanding File Data for a Top-Level Entity { .section}

You use the *$expand=files* parameter for a top-level entity to retrieve the data of the files attached to the entity.

## Example: Expanding File Data for a Detail Entity { .section}

You use the *$expand=WarehouseDetails/files* parameter to retrieve the data of the files attached to the warehouse detail lines of stock item records.

**Parent topic:**[Parameters for Retrieving Records](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter.md)

