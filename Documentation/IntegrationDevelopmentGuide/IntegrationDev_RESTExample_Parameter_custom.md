# $custom Parameter \(Contract Version 4\)

When you retrieve records from Acumatica ERP by using Contract Version 4 of the REST API, you use the *$custom* parameter to specify the custom fields to be returned from Acumatica ERP.

**Tip:** Custom fields can correspond to the following elements:

-   The predefined elements on an Acumatica ERP form that are not included in the entity definition
-   The elements that were added to the Acumatica ERP form in a customization project
-   The user-defined fields

**Attention:** In Contract Version 5, include custom fields in the `$select` parameter when retrieving them. For details, see [$select Parameter \(Contract Version 5\)](IntegrationDev_RESTExample_Parameter_select.md).

## Format of Custom Fields

You use one of the following formats to specify the element whose value should be returned:

-   If a top-level entity contains the custom field that corresponds to the element: `<View name>.<Field name>`, where you replace `<View name>` with the name of the data view that contains the element and `<Field name>` with the internal name of the element.
-   If a linked or detail entity contains the custom field that corresponds to the element: `<Entity name>/<View name>.<Field name>`, where you replace `<Entity name>` with the name of the linked or detail entity that contains the field, `<View name>` with the name of the data view that contains the element, and `<Field name>` with the internal name of the element.

    **Tip:** If you want to obtain the value of a custom field of a linked or detail entity, in addition to specifying the *$custom* parameter, you have to specify this entity in the *$expand* parameter.

-   If the element is a user-defined field: `<View name>.Attribute<AttributeID>`, where you replace `<View name>` with the name of the data view that contains the element, and `<AttributeID>` with the ID of the attribute that corresponds to the user-defined field.

    For details about user-defined fields, see [User-Defined Fields](../UserGuide/CS__con_User_Defined_Fields.md).


If you want to obtain the values of multiple custom elements, you specify the custom elements to be returned, separated by commas. For details on how to find out the field name and the name of the data view, see [Custom Fields](IS__con_CB_Custom_Fields.md#).

## Example: Custom Field of a Top-Level Entity

Suppose that in an extension of the *Default/25.200.001* endpoint, you added the `RepairItemType` field to the top-level `StockItem` entity. This field corresponds to the **Repair Item Type** custom element that has been added to **General** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form. If you want to obtain the value of this element, you use the following parameter string: *$custom=ItemSettings.UsrRepairItemType*.

## Example: Custom Field of a Detail Entity

Suppose that in an extension of the *Default/25.200.001* endpoint, you added the `RepairItemType` field to the `SalesOrderDetail` detail entity. This field corresponds to the **Repair Item Type** custom column, which has been added to the **Details** tab of the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. If you want to obtain the value of this element, you use the following parameter string: *$custom=Details/Transactions.UsrRepairItemType*. You also use the *$expand* parameter as follows: *$expand=Details*.

## Example: User-Defined Field

Suppose that on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, you have added a user-defined field for the *OPERATSYST* attribute. If you want to obtain the value of this user-defined field through the *Default/25.200.001* endpoint, you use the following parameter string: *$custom=Document.AttributeOPERATSYST*.

**Parent topic:**[Parameters for Retrieving Records](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter.md)

