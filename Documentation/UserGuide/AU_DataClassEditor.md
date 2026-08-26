# Data Class {#_06c038a5-1d75-482b-9b17-f2483ada0154 .reference}

Page ID: \(AU203001\)

You use the Data Class page to develop the content of the extension for a data access class \(DAC\). The full name of the page is *Data Class:*, followed by the name of the customized DAC. By using this page, you can do the following:

-   Customize the attributes of the existing fields of a DAC
-   Add custom fields to a DAC
-   For a selector field, add, delete, and sort the columns of the associated lookup table
-   Review the modifications made to an original class
-   View the source code of an original data access class
-   Navigate to the form on which a field of a class is used

**Tip:** While performing customization, you can open this page in the following ways:

-   From the **Element Properties** dialog box, which you access by clicking **Customization Menu** &gt; **Inspect Element**, if you click **Actions** &gt; **Customize Data Fields**
-   From the Customized Data Classes page of the Customization Project Editor, by clicking the link in the **Name** column of a DAC
-   From the navigation pane of the Customization Project Editor, by clicking an item listed under **Data Access**

The platform gives you advanced possibilities to control the field customization by using additional attributes in the DAC extension. See [Customization of Field Attributes in DAC Extensions](../CustomizationPlatform/CG_Platform_Framework_CS_DACExt_FieldAttributes.md) of [Customization Framework](../CustomizationPlatform/CG_Platform_Framework.md) for details.

## Page Toolbar and More Menu { .section}

The page toolbar includes standard buttons and page-specific buttons and commands. The page-specific commands can be shown as buttons on the page toolbar, as commands on the More menu, or in both places. These commands are listed in the following table in alphabetical order.

|Button|Description|
|------|-----------|
|**Change Attributes of Base Field**|Opens the **Change Existing Field** dialog box, which you can use to add an existing field of the DAC to the customization project.|
|**Create New Field**|Opens the **Create New Field** dialog box, which you can use to add a new custom field to the DAC.|
|**Edit Attributes**|Opens the **Customize Attributes** dialog box, which you can use to customize the attributes of the selected field. Before clicking the command, in the table of the Customized Fields pane, you click the row with the field. This command is unavailable if you are creating a new custom field.

 This command is unavailable if you click a row with a new field before clicking the button.

|
|**Edit Selector Columns**|Opens the**Customize Selector Columns** dialog box, in which you can modify the columns in the lookup table that corresponds to the selector field you have selected in the Customized Fields pane.

 This command is available only if you have selected a selector field before clicking **Edit Selector Columns** on the More menu.

|
|**Open Screen**|Opens the primary form of Acumatica ERP for the DAC.

 **Tip:** If there is a primary business logic controller \(BLC\) for the class, then the primary form is the form bound to this container. Otherwise, the primary form is the form bound to the BLC in which the class is the main DAC of the primary view.

|
|**View Source**|Opens the **Data Access** tab of the [Source Code](SM_20_45_70.md) \(SM204570\) form, which displays the DAC source code.|

## Create New Field Dialog Box {#_cdaebe06-9e8d-43fc-8dda-6850986501b6 .section}

This dialog box opens when you click **Create New Field** on the More menu. You can also open the dialog box by clicking **New Field** on the **Add Data Fields** tab of the [Screen Editor](AU_20_45_20.md) page.

|Element|Description|
|-------|-----------|
|The dialog box contains the following elements.|
|**Field Name**|The name of the field in the DAC. Because this is a custom field, the *Usr* prefix must begin its name. If you do not add the prefix, the system adds it automatically when the box loses focus.|
|**Display Name**|The name of the field to be displayed on the form. The specified string is inserted as the DisplayName parameter of the PXUIField attribute of the field.|
|**Storage Type**|The storage type for the field.

 The storage type can be one of the following:

 -   *NonPersistedField*: An unbound field of the DAC. The unbound field is added only to the data access class and is not mapped to the database.
-   *DBTableColumn* \(default\): An ordinary bound field. The platform adds the database column to the base table by altering the base table schema.
-   *NameValuePair*: A "name-value" bound field. The platform stores the field value in a dedicated table of the database without altering the schema of the base table.

|
|**Data Type**|The data type to be used for a custom field. The type can be one of the following: *string*, *int* \(default\), *bool*, *decimal*, *datetime*, and *guid*.|
|**Length**|The maximum field length. For the *string* type, you enter the maximum number of symbols in the field value; for the *decimal* type, you enter the precision of the value \(the maximum total number of decimal digits that will be stored, both to the left of the decimal point and to the right of it\).

 This box appears if you have selected the *string* or *decimal* data type.

|
|**Decimal**|The scale of the value \(that is, the number of decimal digits that will be stored to the right of the decimal point\).

 This box appears if you have selected the *decimal* data type.

|
|This dialog box has the following buttons.|
|**OK**|Adds the new field with the specified properties to the data access class and closes the dialog box. The field appears in the list of customized fields of the class on the page.|
|**Cancel**|Closes the dialog box without making any changes.|

## Change Existing Field Dialog Box {#_21c98585-8fb0-4981-ad35-abab98f2e802 .section}

This dialog box opens when you click **Change Attributes of Base Field** on the More menu. You use the dialog box to change the attributes of a field of the current DAC.

|Element|Description|
|-------|-----------|
|The dialog box contains the following box.|
|**Field Name**|The existing field \(of the DAC\) whose attributes you want to change.|
|This dialog box has the following buttons.|
|**OK**|Adds the selected field to the list of the customized fields of the data access class, and closes the dialog box. You then customize the attributes of this field in the Source Code pane.|
|**Cancel**|Closes the dialog box without adding any fields to the list of customized fields.|

## Customize Selector Columns Dialog Box {#_bf428176-8d39-4317-ac59-b297decc2365 .section}

This dialog box opens when you click **Edit Selector Columns** on the More menu. In the dialog box, you can add, delete, and sort columns to customize the lookup table that is opened on the form when the user clicks the magnifier button.

|Button|Description|
|------|-----------|
|**Add Columns**|Opens the **Add Columns to Selector** dialog box, which you use to add columns to the lookup table that corresponds to the selector field.|
|**Up**|Moves up the selected field, so that the column moves left in the lookup table.|
|**Down**|Moves down the selected field, so that the column moves right in the lookup table.|

|Column|Description|
|------|-----------|
|**Column Name**|The value of the DisplayName parameter of the PXUIField attribute of the field.|
|**Data Field**|The name of the public virtual property of the field in the DAC.|

|Button|Description|
|------|-----------|
|**OK**|Applies the modifications to the lookup table associated with the selector field.

 As a result, the PXCustomizeSelectorColumns attribute is added to the selector field, and you can view the attribute in the **Customize Attributes** area of the Data Class page. This attribute defines the new set and order of the columns in the lookup table.

|
|**Cancel**|Closes the dialog box without making any changes.|

## Add Columns to Selector Dialog Box {#_52009a4f-5e4b-45ad-ab64-c330584e48d2 .section}

This dialog box opens when you click **Add Columns** in the **Customize Selector Columns** dialog box. You use the dialog box to add one column to the lookup table that corresponds to the selector field or to add multiple columns to the lookup table at once.

|Tab|Description|
|---|-----------|
|**All**|Displays all fields.|
|**Selector**|Displays only selector fields.|
|**Custom**|Displays new custom fields.|

|Element|Description|
|-------|-----------|
|**Selected**|A check box that you use to select the fields for which columns will be added to the lookup table that corresponds to the selector field.|
|**Column Name**|The value of the DisplayName parameter of the PXUIField attribute of the field.|
|**Data Field**|The name of the public virtual property of the field in the DAC.|

|Button|Description|
|------|-----------|
|**OK**|Applies the modifications and adds the selected columns to the table of the **Customize Selector Columns** dialog box.|
|**Cancel**|Closes the dialog box without making any changes.|

## Customize Attributes Dialog Box {#_be60f44b-5c2f-46ee-925a-799387f38a7c .section}

This dialog box opens when you click a field on the Data Class page and then click **Edit Attributes** on the More menu. In the dialog box, you edit the attributes of the selected field.

|Button|Description|
|------|-----------|
|**Delete**|Deletes the attribute selected in the **Attributes** column.

 As a result, the \[PXRemoveBaseAttribute\(typeof\(AttrNameAttribute\)\)\] attribute is added to the field, and you can view the attribute in the **Customize Attributes** area of the Data Class page.

|

|Element|Description|
|-------|-----------|
|**Attributes**|The list of field attributes.|
|**Property**|The name of the parameter of the attribute selected in the **Attributes** column.|
|**Value**|The original value of the parameter selected in the **Attributes** column.

 You can enter any string as the parameter value without the system performing type validation. If the value of the customized parameter has an incorrect type, it causes a validation error during the publication of the customization project.

|

|Button|Description|
|------|-----------|
|**OK**|Applies the modifications to the field.

 As a result, the \[PXCustomizeBaseAttribute\(typeof\(AttrNameAttribute\), "ParameterName", NewValue\)\] attribute is added to the field for the modified parameter. You can view the source code of the attribute in the **Customize Attributes** area of the Data Class page.

 **Note:** The system currently inserts the deprecated PXCustomizeBaseAttribute attribute, which is used to redefine the value of a property for an attribute. In a future release, the system will instead insert an attribute from the [PXCustomize](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=65178fd8-b72b-6d7b-3282-22e3f004d66a) static class.

|
|**Cancel**|Closes the dialog box without making any changes.|

## Customized Fields Pane { .section}

The Customized Fields pane \(the left pane of the Data Class page\) contains a table that lists all of the currently customized fields of the DAC. In the table, you select a field, and then you view or edit its attributes in the Source Code pane \(the right pane of this page\). The table has a single column: **Field Name**.

The table toolbar has only standard buttons.

## Source Code Pane { .section}

You use the Source Code pane \(the right pane of the page\) to customize the attributes of the field that is currently selected in the table of the Customized Fields pane.

The title of the pane contains the name and type of the selected field. The type of the field is specified in parentheses and can be one of the following: *New Field* or *Customized Existing Field*.

The work area contains the following elements.

|Element|Description|
|-------|-----------|
|**Customize Attributes**|The area in which you can edit the source code of the attributes of the selected field.|
|Drop-down list|The way in which the system applies the changes to the field attributes.

 The following options are available:

 -   *Keep Original*: The original attributes remain on the field until you select another option in this box.
-   *Replace Original*: The original attributes are replaced on the field with the custom attributes specified in the **Customize Attributes** area.
-   *Append to Original* \(default\): The custom attributes are added to the end of the list of the original attributes of the data field. If you use this option, make sure that you do not duplicate attributes on the field.

 This element is available for only an existing customized field.

 If you want to change the original attributes in the **Customize Attributes** area, before typing any text in the area, select the *Replace Original* option. The original attributes will be copied to the **Customize Attributes** area.

|
|**Original Attributes**|The area in which you view the source code of the original attributes of the selected field.|

