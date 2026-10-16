# $select Parameter \(Contract Version 5\)

When you retrieve records from Acumatica ERP by using the REST API, you use the *$select* parameter to specify the fields to be returned from Acumatica ERP. Use this parameter as follows:

-   Specify the value of the *$select* parameter by using [OData 4.01 URL conventions](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html).
-   Specify particular fields of the entity and custom fields in this parameter.

**Tip:** Custom fields can correspond to the following elements:

-   The predefined elements on an Acumatica ERP form that are not included in the entity definition
-   The elements that were added to the Acumatica ERP form in a customization project
-   The user-defined fields

## Example: Top-Level Fields

To obtain only the order types and order numbers of sales orders, you use the following parameter string: *$select=OrderType,OrderNbr*.

## Example: Fields of Nested Entities

To obtain only the customer name, email address, and city in Contract Version 5, specify each selection in the context of the entity to which it applies. Select the customer name at the top level. In the $expand expression, select the email address for MainContact, expand Address, and select the city for the address, as follows:

```
$expand=MainContact($select=Email;$expand=Address($select=City))&$select=CustomerName
```

**Tip:** For a detailed Contract Version 5 example, see [Retrieve the List of Customers with Contacts](IntegrationDev_RESTExample_Customer_GetWithContacts.md).

## Example: Custom Field of a Top-Level Entity

Suppose that in an extension of the *Default/26.200.001* endpoint, you added the `RepairItemType` field to the top-level `StockItem` entity. This field corresponds to the **Repair Item Type** custom element that has been added to **General** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form. If you want to obtain the value of this element, you use the following parameter string: *$select=ItemSettings.UsrRepairItemType*.

**Tip:** For a custom field, use `<View name>.<Field name>`, where `<View name>` is the name of the data view that contains the field and `<Field name>` is the internal name of the field. For details about finding the field name and data view name, see [Custom Fields](IS__con_CB_Custom_Fields.md#).

## Example: Custom Field of a Detail Entity

Suppose that in an extension of the *Default/26.200.001* endpoint, you added the `RepairItemType` field to the `SalesOrderDetail` detail entity. This field corresponds to the **Repair Item Type** custom column, which has been added to the **Details** tab of the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. If you want to obtain the value of this element, you use the following parameter string: *$expand=Details\($select=Transactions.UsrRepairItemType\)*.

## Example: User-Defined Field

Suppose that on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, you have added a user-defined field for the *OPERATSYST* attribute. If you want to obtain the value of this user-defined field through the *Default/26.200.001* endpoint, you use the following parameter string: *$select=Document.AttributeOPERATSYST*.

**Tip:** For a user-defined field, use `<View name>.Attribute<AttributeID>`, where `<AttributeID>` is the ID of the corresponding attribute.

**Parent topic:**[Parameters for Retrieving Records](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter.md)

