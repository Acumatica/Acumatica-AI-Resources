# Preparing Entities for Synchronization: Filtering {#_0766a84b-4c9f-45b2-a7d5-b14ef6182afb .concept}

In this topic, you will learn how you can define export and import filtering settings.

## Export and Import Filtering { .section}

You can configure the rules according to which data from Acumatica ERP should be exported to the online store by using the **Export Filtering** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form. You define the filters for data import on the **Import Filtering** tab.

To define a filter, you need to specify at least one filtering condition. Each condition includes the following components:

-   **Field Name**: The data field by which data needs to be filtered.

    The particular fields that you can select in the **Field Name** column depend on the selected entity.

-   **Condition**: The logical operation to apply to the value of the selected data field.
-   **Value**: The value you enter for the logical condition used to filter the data, if the selected condition requires a value.
-   **Value 2**: The second value for the logical condition, if the selected logical condition requires a second value. For example, the *Is Between* logical condition requires a second value.

A filter may contain multiple simple conditions or lines combined into one logical expression with brackets and logical operators \(*And* and *Or*\).

**Attention:** Only data that matches the filtering conditions is included in the synchronization. See the subsequent sections for more information and examples of filtering conditions.

## Export Filtering by Custom Fields { .section}

Export filtering by custom fields, which are fields added to a form as a result of publishing a customization project, is available for the *Customer*, *Stock Item*, *Non-Stock Item*, *Template Item*, and *Sales Order* entities.

To use a custom field in a filtering condition, on the **Export Filtering** tab of the [Entities](BC_20_20_00.md) \(BC202000\) form, you should type the name of the field in the **Field Name** column of the table. The system validates the field name against the API field list and displays an error if the field name cannot be found.

**Tip:**

To avoid typing errors, you can copy the name of the needed field from the API Advanced list as follows:

1.  On the **Export Mapping** tab, in the **ERP Object** column, select the *&lt;Entity&gt; → Advanced* option.
2.  In the **ERP Field / Value** column, click the down arrow, and then select and copy the needed field name.

**Attention:** In some situations, a custom field used in a filtering condition may become unavailable during export, for example, if a customization project that added the field has been unpublished. In this case, the system will treat the value in the condition that contains the missing field as *null*. To avoid issues during the export, the *Is Not Empty* condition should be added to each filtering condition that includes custom fields.

## Export Filtering by Attributes { .section}

Export filtering by attributes is available for the *Customer*, *Stock Item*, *Non-Stock Item*, and *Template Item* entities.

When an attribute is created and added to a customer class or item class, it becomes available for selection on the [Entities](BC_20_20_00.md) \(BC202000\) form. To use an attribute in a filtering condition, you should select it in the **Field Name** column of the table on the **Export Filtering** tab. An attribute can be distinguished from other fields by the *Attributes* prefix before its name.

**Attention:** In some situations, an attribute used in a filtering condition may become unavailable during export, for example, if an attribute has been removed from an item class or a customer class of an item or a customer, respectively, being exported. In this case, the system will treat the value in the condition that contains the missing field as *null*. To avoid issues during the export, the *Is Not Empty* condition should be added to each filtering condition that includes attributes.

## Updating the Filtering Conditions { .section}

If you change the import filter settings after an import has been completed, all records that have been previously processed and match the filtering conditions will remain synchronized \(that is, the corresponding data will not be deleted from Acumatica ERP\) but their synchronization records will be assigned the *Filtered* status on the [Sync History](../Shared/../UserGuide/BC_30_10_00.md) \(BC301000\) form.

## Example 1 { .section}

Suppose that you want to sell in your store only a subset of your stock items—that is, only the stock items of the *NUTS* item class. To configure the filter to export only the stock items of this class, you select the *Stock Item* entity in the Summary area of the [Entities](BC_20_20_00.md) \(BC202000\) form, and on the **Export Filtering** tab, you specify the condition corresponding to the settings shown in the following table.

|Active|Brackets|Field Name|Condition|Value|Value 2|Brackets|Operator|
|------|--------|----------|---------|-----|-------|--------|--------|
|Selected|-|*Item Class*|*Equals*|`NUTS`|Empty|-|*And*|

## Example 2 { .section}

Suppose that you use separate online stores for international and domestic sales, and you want to exclude international customers—that is, customers of any customer class that contains *INTL* in its ID—from the synchronization with your store. To configure the filter, you select the *Customer* entity in the Summary area of the [Entities](BC_20_20_00.md) \(BC202000\) form, and on the **Export Filtering** tab, you specify the condition corresponding to the settings shown in the following table.

|Active|Brackets|Field Name|Condition|Value|Value 2|Brackets|Operator|
|------|--------|----------|---------|-----|-------|--------|--------|
|Selected|-|*Customer Class*|*Does Not Contain*|`INTL`|Empty|-|*And*|

## Example 3 { .section}

Suppose that you sell some of the products through Instagram. These orders are fulfilled by a third-party logistic service provider, and you do not want to import them into Acumatica ERP. To exclude orders with the *instagram* source, you select the *Sales Order* entity in the Summary area of the [Entities](BC_20_20_00.md) \(BC202000\) form, and on the **Import Filtering** tab, you specify the condition corresponding to the settings shown in the following table.

|Active|Brackets|Field Name|Condition|Value|Value 2|Brackets|Operator|
|------|--------|----------|---------|-----|-------|--------|--------|
|Selected|-|*Source Name*|*Does Not Equal*|`instagram`|Empty|-|*And*|

**Parent topic:**[Preparing Entities for Synchronization](../UserGuide/Commerce_SP_Preparing_Entities_Mapref.md)

