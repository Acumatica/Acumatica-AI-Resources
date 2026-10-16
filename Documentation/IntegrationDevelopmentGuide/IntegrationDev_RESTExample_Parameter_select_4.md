# $select Parameter \(Contract Version 4\)

When you retrieve records from Acumatica ERP by using the REST API, you use the *$select* parameter to specify the fields to be returned from Acumatica ERP. Use this parameter as follows:

-   Specify the value of the *$select* parameter by using [OData 3.0 URL conventions](http://www.odata.org/documentation/odata-version-3-0/url-conventions/).
-   Specify only fields of the entity in this parameter and use the *$custom* parameter for custom fields. For details, see [$custom Parameter \(Contract Version 4\)](IntegrationDev_RESTExample_Parameter_custom.md).

**Tip:** Custom fields can correspond to the following elements:

-   The predefined elements on an Acumatica ERP form that are not included in the entity definition
-   The elements that were added to the Acumatica ERP form in a customization project
-   The user-defined fields

## Example: Top-Level Fields

To obtain only the order types and order numbers of sales orders, you use the following parameter string: *$select=OrderType,OrderNbr*.

## Example: Fields of Nested Entities

To obtain only the customer name, email address, and city in Contract Version 4, specify the fields of the linked entities as paths in the top-level $select parameter, as follows:

```
$expand=MainContact,MainContact/Address&$select=CustomerName,MainContact/Email,MainContact/Address/City
```

**Parent topic:**[Parameters for Retrieving Records](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter.md)

