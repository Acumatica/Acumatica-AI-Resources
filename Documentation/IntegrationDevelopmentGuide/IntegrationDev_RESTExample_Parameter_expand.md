# $expand Parameter \(Contract Version 5\)

In the REST API, you use the *$expand* parameter to specify the linked and detail entities that should be expanded. Follow these guidelines:

-   Specify the value of the *$expand* parameter by using [OData 4.01 URL conventions](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html).
-   Explicitly specify each linked or detail entity to be expanded. By default, no linked or detail entities are expanded; that is, only fields of the top-level entity are returned.

**Tip:** If you use the *$expand* parameter in a request, the concurrent request limit or rate limit imposed by the license will not be exhausted sooner because of the use of this parameter.

## Example: Expanding Detail Lines

To obtain the values of the warehouse detail lines of stock item records, you use the following parameter string: *$expand=WarehouseDetails*.

## Example: Nested Expanding

Expanding the MainContact linked entity of the Customer entity does not automatically expand the Address linked entity within MainContact. To expand the Address entity, you should explicitly specify the Address entity to be expanded. In Contract Version 5, nest the second $expand parameter in the first $expand expression as follows: *$expand=MainContact\($expand=Address\)*.

## Example: Expanding File Data for a Top-Level Entity

You use the *$expand=files* parameter for a top-level entity to retrieve the data of the files attached to the entity.

## Example: Expanding File Data for a Detail Entity

You use the *$expand=WarehouseDetails\($expand=files\)* parameter in Contract Version 5 to retrieve the data of the files attached to the warehouse detail lines of stock item records.

**Parent topic:**[Parameters for Retrieving Records](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter.md)

