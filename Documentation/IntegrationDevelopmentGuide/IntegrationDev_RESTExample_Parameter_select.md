# $select Parameter {#_ecbfdb12-4853-4ff5-b8c5-eade02f9b47b .concept}

When you retrieve records from Acumatica ERP by using the contract-based REST API, you use the *$select* parameter to specify the fields of the entity to be returned from Acumatica ERP. By default, all fields of the entity are returned.

You use [OData URI conventions](http://www.odata.org/documentation/odata-version-3-0/url-conventions/) to specify the value of the *$select* parameter.

## Example: Top-Level Fields { .section}

To obtain only the order types and order numbers of sales orders, you use the following parameter string: *$select=OrderType,OrderNbr*.

## Example: Fields of Nested Entities { .section}

To obtain only the customer name, email address, and city, you use the following parameter string: *$select=CustomerName,MainContact/Email,MainContact/Address/City*.

**Tip:** You also need to expand the MainContact and Address linked entities by using the *$expand* parameter. For a detailed example, see [Retrieve the List of Customers with Contacts](IntegrationDev_RESTExample_Customer_GetWithContacts.md).

**Parent topic:**[Parameters for Retrieving Records](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter.md)

