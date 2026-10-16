# $expand Parameter \(Contract Version 4\)

In the REST API, you use the *$expand* parameter to specify the linked and detail entities that should be expanded. Follow these guidelines:

-   Specify the value of the *$expand* parameter by using [OData 3.0 URL conventions](http://www.odata.org/documentation/odata-version-3-0/url-conventions/).
-   Explicitly specify each linked or detail entity to be expanded. By default, no linked or detail entities are expanded; that is, only fields of the top-level entity are returned.

**Tip:** If you use the *$expand* parameter in a request, the concurrent request limit or rate limit imposed by the license will not be exhausted sooner because of the use of this parameter.

## Example: Expanding Detail Lines

To obtain the values of the warehouse detail lines of stock item records, you use the following parameter string: *$expand=WarehouseDetails*.

## Example: Nested Expanding

To expand the Address entity within the MainContact entity in Contract Version 4, use the following parameter string: *$expand=MainContact,MainContact/Address*.

## Example: Expanding File Data for a Top-Level Entity

You use the *$expand=files* parameter for a top-level entity to retrieve the data of the files attached to the entity.

## Example: Expanding File Data for a Detail Entity

You use the *$expand=WarehouseDetails/files* parameter to retrieve the data of the files attached to the warehouse detail lines of stock item records.

**Parent topic:**[Parameters for Retrieving Records](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter.md)

