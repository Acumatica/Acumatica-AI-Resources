# Preparing Entities for Synchronization: Field Mapping {#_9adad7f9-2aa6-4662-b6a9-249f490f38ec .concept}

In this topic, you will learn how you can map fields between Acumatica ERP and BigCommerce to override the standard field mapping or define an additional mapping to suit your synchronization requirements.

## Mapping of Fields for Export { .section}

Acumatica ERP Retail Edition provides you with the ability to map fields, which are related to synchronized entities, in Acumatica ERP with fields in BigCommerce. You can define additional mappings of standard or custom fields as well as override the standard mappings provided with the BigCommerce integration.

You define the mappings of fields that should be processed during the export of data from Acumatica ERP into BigCommerce on the **Export Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form. During the export, data from the specified fields is prepared and processed according to the defined mappings.

To map two fields that will be processed during the export, you specify values in the following columns:

-   **External Object**: The object in the external system whose field is set to the value of the ERP field or to a calculated value on export.

    The list of available options depends on the selected entity and the ecommerce connector.

-   **External Field**: The field of the selected external object that is set to the value of the ERP field or to a calculated value on export.

    The list of available options depends on the selected entity, the ecommerce connector, and the external object.

-   **ERP Object**: The object in Acumatica ERP whose field's value is assigned to the external field on export.

    The list of available options depends on the selected entity and the ecommerce connector.

-   **ERP Field / Value**: The field of the selected ERP object whose value is assigned to the external field on export, or the expression to be executed on export to generate the value that is assigned to the external field.

    The list of available options depends on the selected entity and the ERP object.


## Mapping of Fields for Import { .section}

Acumatica ERP Retail Edition provides you with the ability to map fields, which are related to synchronized entities, in Acumatica ERP with fields in BigCommerce. You can define additional mappings of standard or custom fields, as well as override the standard mappings provided with the BigCommerce integration.

You define the mappings of fields that should be processed during the import of data from BigCommerce into Acumatica ERP on the **Import Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form. During the import process, data from the specified fields is prepared and processed according to the defined mappings.

To map two fields that will be processed during the import process, you specify values in the following columns:

-   **ERP Object**: The object in Acumatica ERP whose field is set to the value of the external field or to a calculated value on import.

    The list of available options depends on the selected entity.

-   **ERP Field**: The field of the selected ERP object that is set to the value of the mapped external field or a to calculated value on import.

    The fields that are displayed in the list depend on the selected object.

-   **External Object**: The object in the external system whose field's value is assigned to the ERP field.

    The list of available options depends on the selected entity and the ecommerce connector.

-   **External Field / Value**: The field of the external object whose value is assigned to the ERP field, or the expression to be executed on import to generate the value that is assigned to the ERP field.

    The list of available options depends on the selected entity, the ecommerce connector, and the external object.


## Auto-Mapping of Fields { .section}

When configuring the mapping of fields of the *Stock Item*, *Non-Stock Item*, and *Template Item* entities, instead of selecting a particular target field, you can type `<<Auto_Mapping>>` in the **Target Field** column. During the synchronization process, the system looks for a field similar to the source field and does one of the following:

-   If the field is found, maps it to the source field
-   If the field is not found, creates a new text field in the ecommerce system with the same name as that of the source field

**Note:** If *&lt;&lt;Auto\_Mapping&gt;&gt;* is entered in the target field, you cannot use a formula in the source field.

## Removing Standard Mapping for a Field { .section}

You can remove the mapping for fields that you do not want to be synchronized between Acumatica ERP and the external system. You perform the unmapping for import and export directions separately as follows:

1.  On the [Entities](../Shared/../UserGuide/BC_20_20_00.md) \(BC202000\) form, you select the store and the entity for which you want to modify field mapping.
2.  Depending on the synchronization direction, you do one of the following:

    -   To remove the mapping from an Acumatica ERP field so that it is not used during the import, on the **Import Mapping** tab, you select the needed values in the **ERP Object** and **ERP Field** columns, and then in the **External Object** column, you select *&lt;&lt;Unmap&gt;&gt;*.
    -   To remove the mapping from a field in the external ecommerce system so that it is not used during the export, on the **Export Mapping** tab, you select the needed values in the **External Object** and **External Field** columns, and then in the **ERP Object** column, you select *&lt;&lt;Unmap&gt;&gt;*.
    During the synchronization, the system will not pull data from the unmapped fields or record data to these fields.


## Using of Formulas in Field Mapping { .section}

When you define mappings between fields in Acumatica ERP and in the external system on the [Entities](../Shared/../UserGuide/BC_20_20_00.md) \(BC202000\) form, you can use formulas to calculate the values to be displayed in the target fields. Formulas give you the ability to use advanced calculations and data transformation functions if some values are calculated or depend on the data from other sources.

You can enter the formula directly in the **External Field / Value** column \(**Import Mapping** tab\) or **ERP Field / Value** column \(**Export Mapping**\) or in the [Formula Editor Dialog Box](../Shared/../UserGuide/SM__ref_IS_Formula_Editor_Dialog.md), which you invoke by clicking the Edit button in these columns.

Operators and functions that you can use in formulas on the [Entities](../Shared/../UserGuide/BC_20_20_00.md) \(BC202000\) form are the same as the operators and functions that are used on the [Import Scenarios](../Shared/../UserGuide/SM_20_60_25.md) \(SM206025\) and [Export Scenarios](../Shared/../UserGuide/SM_20_70_25.md) \(SM207025\) forms. For more information about formulas, functions, and operators, see [The Use of Formulas](../Shared/../UserGuide/IS__con_Formulas_in_Mapping.md), [Operators](../Shared/../UserGuide/IS__con_IS_Operators.md), and [Functions](../Shared/../UserGuide/IS__con_IS_Functions.md).

When using formulas in field mapping, you can conditionally unmap fields that should not be synchronized between Acumatica ERP and the external system. You can also apply the default mapping.

In the Formula Editor dialog box, the *Fields* group includes the following options:

-   `Unmap`: Explicitly removes the field mapping. If you unmap a required field, the connector uses either the default value or `NULL` if there is no default value defined.
-   `DefaultMapping`: References the default field mapping defined for the connector. When the keyword is applied, the system follows the default behavior as though no manual mapping is configured. This keyword is especially useful when you want to preserve or conditionally apply the default behavior.

## Mappable Fields and Mapping Limitations { .section}

You can define additional mapping or override default mapping for the following types of Acumatica ERP fields:

-   *Standard fields*: These fields are available in Acumatica ERP out of the box.
-   *Custom fields*: These fields are not present in the out-of-the-box version of Acumatica ERP and are created when a customization project is published.

    **Attention:** Only custom fields created on the [Customers](AR_30_30_00.md) \(AR303000\), [Non-Stock Items](IN_20_20_00.md) \(IN202000\), and [Stock Items](IN_20_25_00.md) \(IN202500\) forms can be used for mapping with BigCommerce.

-   *Attribute fields*: You define an attribute \(that is, additional properties\) of customers on the [Attributes](CS_20_50_00.md) \(CS205000\) form. Then you add the attribute to a customer class on the **Attributes** tab of the [Customer Classes](AR_20_10_00.md) \(AR201000\) form. After that, you specify the appropriate attribute values for particular customers on the **Attributes** tab of the [Customers](AR_30_30_00.md) form. Similarly, you add attributes of inventory items to an item class on the [Item Classes](IN_20_10_00.md) \(IN102000\) form, and then specify the appropriate attribute values for particular stock items, non-stock items, and template items on the [Non-Stock Items](IN_20_20_00.md), [Stock Items](IN_20_25_00.md), and [Template Items](IN_20_30_00.md) \(IN203000\) forms, respectively.

    For more information about attributes, see [Attributes](CS__con_Attributes.md).

-   *User-defined fields*: User-defined fields are similar to attribute fields but are represented differently on Acumatica ERP forms.

    **Attention:** User-defined fields are not supported on the [Stock Items](IN_20_25_00.md) and [Non-Stock Items](IN_20_20_00.md) forms but are supported on the [Customers](AR_30_30_00.md) and [Customer Locations](AR_30_30_20.md) \(AR303020\) forms. Thus, you can use in mappings only the user-defined fields created on these forms.

    For more information about user-defined fields, see [User-Defined Fields](CS__con_User_Defined_Fields.md).


The table below lists the entities for which the mapping of nonstandard fields is supported, as well as the types of fields that are supported for each entity. The last column also displays the objects in BigCommerce to which the nonstandard Acumatica ERP fields can be mapped.

|Acumatica ERP Object|BigCommerce Object|
|Entity|Custom Fields|Attribute Fields|User-Defined Fields|
|--------------------|------------------|
|------|-------------|----------------|-------------------|
|*Stock Item*|Yes|Yes|No|*Product*|
|*Non-Stock Item*|Yes|Yes|No|*Product*|
|*Customer*|Yes|Yes|Yes|-   *Customer*
-   *Customer → Customer Address*
-   *Customer → Customer Form Fields*

|
|*Customer Location*|Yes|Yes|Yes|-   *Customer Address Data*
-   *Customer Address Data → Form Fields*

|

## Import Mapping of Sales Order Details { .section}

You can map the fields with information about the products included in an order in BigCommerce with the fields used in sales order detail lines in Acumatica ERP.

When you define the field mapping to be used for importing sales orders from an external system, you can use both predefined and custom Acumatica ERP fields of sales order detail lines—that is, fields that are used in sales order lines, which are displayed on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. During order synchronization, details of the products in an order placed in BigCommerce is sent to the mapped fields in Acumatica ERP.

To use a sales order detail field in import mapping, on the **Import Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form, you do the following:

1.  In the **ERP Object** column, select the *Sales Order → Details* or *Sales Order → Details → Advanced* option.
2.  In the **ERP Value** column, select a field from the list of fields that hold information about sales order details. Custom fields have the prefix *Usr*.
3.  In the **External Object** column, select the *Order Data → Order Products* option.
4.  In the **External Field / Value** column, select a field from the list of fields holding information about products in BigCommerce orders.

## Import Mapping of BigCommerce Product Modifiers { .section}

You can map the fields used to modify a product in BigCommerce \(which are called *product modifiers* or *customizations* in BigCommerce\) to the fields shown in sales order lines in Acumatica ERP. Product modifiers are used to customize existing products without creating new product variants. For more information about product modifiers, see [the BigCommerce documentation](https://support.bigcommerce.com/s/article/Product-Options-v3).

To use a product modifier in an import mapping, on the **Import Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) for, you select *Order Data → Order Products → Order Product Options* in the **External Object** column and type the name of the product modifier as it appears on the user interface in BigCommerce. To define a more advanced mapping—for example, to display data from multiple product modifier fields to a single sales order line field in Acumatica ERP—you can specify a formula in this column.

## Example 1 { .section}

Suppose that you do not want inventory IDs of stock items maintained in Acumatica ERP to be publicly displayed as SKU names on the storefront of your BigCommerce store. Instead, you want to show IDs maintained for stock items in a custom field, `UsrExtInvID`, which you show in the **External Inventory ID** box added to the [Stock Items](IN_20_25_00.md) \(IN202500\) form. To map the external inventory IDs of stock items in Acumatica ERP to SKUs in BigCommerce, on the **Export Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form, you select the store and the *Stock Item* entity, and in the table row, you specify the conditions corresponding to the settings shown in the following table.

|Active|External Object|External Field|ERP Object|ERP Field / Value|
|------|---------------|--------------|----------|-----------------|
|Selected|*Product*|*Stock Keeping Unit*|*Stock Items → Advanced*|*ItemSettings.UsrExtInvID*|

## Example 2 { .section}

Suppose that you want to provide the customers of your BigCommerce store the ability to add a note when signing up for a new account. You also want this note to be imported into Acumatica ERP during the synchronization of customer data. The standard customer sign-up form available in the BigCommerce store does not contain a field for a note. To add a note field in BigCommerce and map it to an attribute field in Acumatica ERP, you need to perform the following steps:

1.  In the BigCommerce store, you open the **Form Fields** page by clicking **Advanced Settings** &gt; **Account Signup Form** in the left pane, and you create a new field of the text type, *Message for Admin*.
2.  In Acumatica ERP, on the [Attributes](CS_20_50_00.md) \(CS205000\) form, you define an attribute with the following settings:
    -   **Attribute ID**: `MESSAGE`
    -   **Description**: `Message for Admin`
    -   **Control Type**: *Text*
3.  On the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, you select a customer class based on which customer records are created when BigCommerce customers are imported to Acumatica ERP—that is, the customer class specified for the store in the **Customer Class** box on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form—and on the **Attributes** tab, you add the created attribute.
4.  On the [Entities](BC_20_20_00.md) \(BC202000\) form, you select the store and the *Customer* entity, and on the **Import Mapping** tab, you specify the following settings.

    |Active|ERP Object|ERP Field|External Object|External Field / Value|
    |------|----------|---------|---------------|----------------------|
    |Selected|*Customer → Attributes*|*Message to Admin*|*Customer → Form Fields*|*Message for Admin*|

    With this mapping, the text that a customer enters in the **Message to Admin** field in the customer registration form in the BigCommerce store will be imported to Acumatica ERP during the synchronization of customer data, and will be displayed for the customer in the row of the *Message for Admin* attribute on the **Attributes** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.


For step-by-step instructions on mapping a nonstandard field for customers, see [Preparing Entities for Synchronization: Implementation Activity](Commerce_BC_Preparing_Entities_Implem_Activity.md).

## Example 3 { .section}

Suppose that you keep the information about template items along with their matrix items in Acumatica ERP and synchronize this information with the BigCommerce store. However, the information about the matrix items' weights is updated directly in the BigCommerce store. To avoid the override of the weights during the synchronization of the *Template Item* entity, you need to unmap the corresponding field. To do this, you select the *Template Item* entity in the Summary area of the [Entities](BC_20_20_00.md) \(BC202000\) form, and on the **Export Mapping** tab, you specify the conditions corresponding to the settings shown in the following table.

|Active|External Object|External Field|ERP Object|ERP Field / Value|
|------|---------------|--------------|----------|-----------------|
|Selected|*Product → Product Variants*|*Weight*|*&lt;&lt;Unmap&gt;&gt;*|Cleared|

## Example 4 { .section}

Suppose you want to export a tracking number from a shipment in Acumatica ERP to the related BigCommerce order only when the shipment type is *Shipment*. Otherwise, no tracking number should be exported.

To configure this, select the *Shipment* entity in the Summary area of the [Entities](BC_20_20_00.md) \(BC202000\) form. On the **Export Mapping** tab, define the conditions as shown in the following table.

|Active|External Object|External Field|ERP Object|ERP Field / Value|
|------|---------------|--------------|----------|-----------------|
|Selected|*Shipment Data → Fulfillment → Tracking Info*|*Tracking Number*|*Sales Order Shipment*|`=Iif(...`|

In the **ERP Field / Value** column, specify the following formula:

```
=Iif( [BCShipments.ShipmentType] = 'Shipment', DefaultMapping, Unmap )
```

This formula inserts the tracking number \(`DefaultMapping`\) for a BigCommerce order only if the type of the exported shipment is *Shipment*. Otherwise, the external field is unmapped \(`Unmap`\), and the connector assigns no tracking number.

**Parent topic:**[Preparing Entities for Synchronization](../UserGuide/Commerce_BC_Preparing_Entities_Mapref.md)

