# Preparing Entities for Synchronization: Field Mapping {#_376382b1-6b7d-434d-9dd0-aefad1b48d6a .concept}

In this topic, you will learn how you can map fields between Acumatica ERP and Shopify to override the standard field mapping or define an additional mapping to suit your synchronization requirements.

## Mapping of Fields for Export { .section}

Acumatica ERP Retail Edition provides you with the ability to map fields, which are related to synchronized entities, in Acumatica ERP with fields in the Shopify store. You can define additional mappings of standard or custom fields as well as override the standard mappings provided with the Shopify integration.

You define the mappings of fields that should be processed during the export of data from Acumatica ERP to Shopify on the **Export Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form. During the export, data from the specified fields is prepared and processed according to the defined mappings.

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

Acumatica ERP Retail Edition provides you with the ability to map fields, which are related to synchronized entities, in Acumatica ERP with fields in Shopify. You can define additional mappings of standard or custom fields, as well as override the standard mappings provided with the Shopify integration.

You define the mappings of fields that should be processed during the import of data from Shopify to Acumatica ERP on the **Import Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form. During the import process, data from the specified fields is prepared and processed according to the defined mappings.

To map two fields that will be processed during the import process, you specify values in the following columns:

-   **ERP Object**: The object in Acumatica ERP whose field is set to the value of the external field or to a calculated value on import.

    The list of available options depends on the selected entity.

-   **ERP Field**: The field of the selected ERP object that is set to the value of the mapped external field or a to calculated value on import.

    The fields that are displayed in the list depend on the selected object.

-   **External Object**: The object in the external system whose field's value is assigned to the ERP field.

    The list of available options depends on the selected entity and the ecommerce connector.

-   **External Field / Value**: The field of the external object whose value is assigned to the ERP field, or the expression to be executed on import to generate the value that is assigned to the ERP field.

    The list of available options depends on the selected entity, the ecommerce connector, and the external object.


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

## Import Mapping of Sales Order Details { .section}

You can map the fields with information about the products included in an order in Shopify with the fields used in sales order detail lines in Acumatica ERP.

When you define the field mapping to be used for importing sales orders from an external system, you can use both predefined and custom Acumatica ERP fields of sales order detail lines—that is, fields that are used in sales order lines, which are displayed on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. During order synchronization, details of the products in an order placed in Shopify is sent to the mapped fields in Acumatica ERP.

To use a sales order detail field in import mapping, on the **Import Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form, you do the following:

1.  In the **ERP Object** column, select the *Sales Order → Details* or *Sales Order → Details → Advanced* option.
2.  In the **ERP Value** column, select a field from the list of fields that hold information about sales order details. Custom fields have the prefix *Usr*.
3.  In the **External Object** column, select the *Order Data → Line Item* option.
4.  In the **External Field / Value** column, select a field from the list of fields holding information about products in Shopify orders.

## Example 1 { .section}

Suppose that you do not want inventory IDs of stock items maintained in Acumatica ERP to be publicly displayed as SKU names on the storefront of your Shopify store. Instead, you want to show IDs maintained for stock items in a custom field, `UsrExtInvID`, which you show in the **External Inventory ID** box added to the [Stock Items](IN_20_25_00.md) \(IN202500\) form. To map the external inventory IDs of stock items in Acumatica ERP to SKUs in Shopify, on the **Export Mapping** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form, you select the store and the *Stock Item* entity, and in the table row, you specify the conditions corresponding to the settings shown in the following table.

|Active|External Object|External Field|ERP Object|ERP Field / Value|
|------|---------------|--------------|----------|-----------------|
|Selected|*Product*|*Stock Keeping Unit*|*Stock Items → Advanced*|*ItemSettings.UsrExtInvID*|

## Example 2 { .section}

Suppose that you keep the information about template items along with their matrix items in Acumatica ERP and synchronize this information with the Shopify store. However, the information about the matrix items' weights is updated directly in the Shopify store. To avoid the override of the weights during the synchronization of the *Template Item* entity, you need to unmap the corresponding field. To do this, you select the *Template Item* entity in the Summary area of the [Entities](BC_20_20_00.md) \(BC202000\) form, and on the **Export Mapping** tab, you specify the conditions corresponding to the settings shown in the following table.

|Active|External Object|External Field|ERP Object|ERP Field / Value|
|------|---------------|--------------|----------|-----------------|
|Selected|*Product → Product Variants*|*Weight*|*&lt;&lt;Unmap&gt;&gt;*|Cleared|

## Example 3 { .section}

Suppose you process domestic and international orders using different order types in Acumatica ERP to support different tax, fulfillment, and accounting workflows. You want Shopify orders shipped to the US and imported into Acumatica ERP to be assigned the corresponding *SO* order type automatically based on the shipping country.

To configure this, select the *Sales Order* entity in the Summary area of the [Entities](BC_20_20_00.md) \(BC202000\) form. On the **Import Mapping** tab, define the conditions as shown in the following table.

|Active|ERP Object|ERP Field|External Field|External Field / Value|
|------|----------|---------|--------------|----------------------|
|Selected|*Sales Order*|*Order Type*|*Order Data → Shipping Address*|`=Iif(...`|

In the **External Field / Value** column, you specify the following formula:

```
=Iif( [OrderDataGQL -> ShippingAddress.CountryCode] = 'US', 'SO', DefaultMapping )
```

This formula assigns the *SO* order type to an imported Shopify order only when the country code of the shipping address is *US*. Otherwise, the connector uses the default logic \(`DefaultMapping`\) and assigns the order type based on the store settings defined on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

**Parent topic:**[Preparing Entities for Synchronization](../UserGuide/Commerce_SP_Preparing_Entities_Mapref.md)

