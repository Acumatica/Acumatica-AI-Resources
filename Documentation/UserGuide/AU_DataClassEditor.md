# Data Class

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

## Page Toolbar and More Menu

The page toolbar includes standard buttons and page-specific buttons and commands. The page-specific commands can be shown as buttons on the page toolbar, as commands on the More menu, or in both places. These commands are listed in the following table in alphabetical order.

<table id="table_ikc_4np_gq"><thead><tr><th>

Button

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Change Attributes of Base Field**

</td><td>

Opens the **Change Existing Field** dialog box, which you can use to add an existing field of the DAC to the customization project.

</td></tr><tr><td>

**Create New Field**

</td><td>

Opens the **Create New Field** dialog box, which you can use to add a new custom field to the DAC.

</td></tr><tr><td>

**Edit Attributes**

</td><td>

Opens the **Customize Attributes** dialog box, which you can use to customize the attributes of the selected field. Before clicking the command, in the table of the Customized Fields pane, you click the row with the field. This command is unavailable if you are creating a new custom field.

 This command is unavailable if you click a row with a new field before clicking the button.

</td></tr><tr><td>

**Edit Selector Columns**

</td><td>

Opens the**Customize Selector Columns** dialog box, in which you can modify the columns in the lookup table that corresponds to the selector field you have selected in the Customized Fields pane.

 This command is available only if you have selected a selector field before clicking **Edit Selector Columns** on the More menu.

</td></tr><tr><td>

**Open Screen**

</td><td>

Opens the primary form of Acumatica ERP for the DAC.

 **Tip:** If there is a primary business logic controller \(BLC\) for the class, then the primary form is the form bound to this container. Otherwise, the primary form is the form bound to the BLC in which the class is the main DAC of the primary view.

</td></tr><tr><td>

**View Source**

</td><td>

Opens the **Data Access** tab of the [Source Code](SM_20_45_70.md) \(SM204570\) form, which displays the DAC source code.

</td></tr></tbody>
</table>

## Create New Field Dialog Box

This dialog box opens when you click **Create New Field** on the More menu. You can also open the dialog box by clicking **New Field** on the **Add Data Fields** tab of the [Screen Editor](AU_20_45_20.md) page.

<table id="_2ab1ea8f-b659-4235-b97d-7fb135d6745b"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td colspan="2">

The dialog box contains the following elements.

</td></tr><tr><td>

**Field Name**

</td><td>

The name of the field in the DAC. Because this is a custom field, the *Usr* prefix must begin its name. If you do not add the prefix, the system adds it automatically when the box loses focus.

</td></tr><tr><td>

**Display Name**

</td><td>

The name of the field to be displayed on the form. The specified string is inserted as the DisplayName parameter of the PXUIField attribute of the field.

</td></tr><tr><td>

**Storage Type**

</td><td>

The storage type for the field.

 The storage type can be one of the following:

 -   *NonPersistedField*: An unbound field of the DAC. The unbound field is added only to the data access class and is not mapped to the database.
-   *DBTableColumn* \(default\): An ordinary bound field. The platform adds the database column to the base table by altering the base table schema.
-   *NameValuePair*: A "name-value" bound field. The platform stores the field value in a dedicated table of the database without altering the schema of the base table.

</td></tr><tr><td>

**Data Type**

</td><td>

The data type to be used for a custom field. The type can be one of the following: *string*, *int* \(default\), *bool*, *decimal*, *datetime*, and *guid*.

</td></tr><tr><td>

**Length**

</td><td>

The maximum field length. For the *string* type, you enter the maximum number of symbols in the field value; for the *decimal* type, you enter the precision of the value \(the maximum total number of decimal digits that will be stored, both to the left of the decimal point and to the right of it\).

 This box appears if you have selected the *string* or *decimal* data type.

</td></tr><tr><td>

**Decimal**

</td><td>

The scale of the value \(that is, the number of decimal digits that will be stored to the right of the decimal point\).

 This box appears if you have selected the *decimal* data type.

</td></tr><tr><td colspan="2">

This dialog box has the following buttons.

</td></tr><tr><td>

**OK**

</td><td>

Adds the new field with the specified properties to the data access class and closes the dialog box. The field appears in the list of customized fields of the class on the page.

</td></tr><tr><td>

**Cancel**

</td><td>

Closes the dialog box without making any changes.

</td></tr></tbody>
</table>

## Change Existing Field Dialog Box

This dialog box opens when you click **Change Attributes of Base Field** on the More menu. You use the dialog box to change the attributes of a field of the current DAC.

<table id="_23b6955e-fc7a-4f7b-99c7-3eb65c27f831"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td colspan="2">

The dialog box contains the following box.

</td></tr><tr><td>

**Field Name**

</td><td>

The existing field \(of the DAC\) whose attributes you want to change.

</td></tr><tr><td colspan="2">

This dialog box has the following buttons.

</td></tr><tr><td>

**OK**

</td><td>

Adds the selected field to the list of the customized fields of the data access class, and closes the dialog box. You then customize the attributes of this field in the Source Code pane.

</td></tr><tr><td>

**Cancel**

</td><td>

Closes the dialog box without adding any fields to the list of customized fields.

</td></tr></tbody>
</table>

## Customize Selector Columns Dialog Box

This dialog box opens when you click **Edit Selector Columns** on the More menu. In the dialog box, you can add, delete, and sort columns to customize the lookup table that is opened on the form when the user clicks the magnifier button.

<table id="_323a3508-99e8-4835-8ed5-d762553a7e89"><thead><tr><th>

Button

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Add Columns**

</td><td>

Opens the **Add Columns to Selector** dialog box, which you use to add columns to the lookup table that corresponds to the selector field.

</td></tr><tr><td>

**Up**

</td><td>

Moves up the selected field, so that the column moves left in the lookup table.

</td></tr><tr><td>

**Down**

</td><td>

Moves down the selected field, so that the column moves right in the lookup table.

</td></tr></tbody>
</table>

<table id="_13ab4a17-c4b6-42a1-bb5c-3de4b9ddf4d4"><thead><tr><th>

Column

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Column Name**

</td><td>

The value of the DisplayName parameter of the PXUIField attribute of the field.

</td></tr><tr><td>

**Data Field**

</td><td>

The name of the public virtual property of the field in the DAC.

</td></tr></tbody>
</table>

<table id="table_hnh_fgt_l5b"><thead><tr><th>

Button

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**OK**

</td><td>

Applies the modifications to the lookup table associated with the selector field.

 As a result, the PXCustomizeSelectorColumns attribute is added to the selector field, and you can view the attribute in the **Customize Attributes** area of the Data Class page. This attribute defines the new set and order of the columns in the lookup table.

</td></tr><tr><td>

**Cancel**

</td><td>

Closes the dialog box without making any changes.

</td></tr></tbody>
</table>

## Add Columns to Selector Dialog Box

This dialog box opens when you click **Add Columns** in the **Customize Selector Columns** dialog box. You use the dialog box to add one column to the lookup table that corresponds to the selector field or to add multiple columns to the lookup table at once.

<table id="_79c342c8-d7e7-44d4-81e9-155f96ff48ee"><thead><tr><th>

Tab

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**All**

</td><td>

Displays all fields.

</td></tr><tr><td>

**Selector**

</td><td>

Displays only selector fields.

</td></tr><tr><td>

**Custom**

</td><td>

Displays new custom fields.

</td></tr></tbody>
</table>

<table id="_5b67726b-21d9-43ba-a8a1-06575c873674"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Selected**

</td><td>

A check box that you use to select the fields for which columns will be added to the lookup table that corresponds to the selector field.

</td></tr><tr><td>

**Column Name**

</td><td>

The value of the DisplayName parameter of the PXUIField attribute of the field.

</td></tr><tr><td>

**Data Field**

</td><td>

The name of the public virtual property of the field in the DAC.

</td></tr></tbody>
</table>

<table id="table_b2d_fht_l5b"><thead><tr><th>

Button

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**OK**

</td><td>

Applies the modifications and adds the selected columns to the table of the **Customize Selector Columns** dialog box.

</td></tr><tr><td>

**Cancel**

</td><td>

Closes the dialog box without making any changes.

</td></tr></tbody>
</table>

## Customize Attributes Dialog Box

This dialog box opens when you click a field on the Data Class page and then click **Edit Attributes** on the More menu. In the dialog box, you edit the attributes of the selected field.

<table id="_71e8fac8-6f76-4606-b370-00877ac7cd46"><thead><tr><th>

Button

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Delete**

</td><td>

Deletes the attribute selected in the **Attributes** column.

 As a result, the \[PXRemoveBaseAttribute\(typeof\(AttrNameAttribute\)\)\] attribute is added to the field, and you can view the attribute in the **Customize Attributes** area of the Data Class page.

</td></tr></tbody>
</table>

<table id="_eab2c91a-92b9-411d-b55e-8a7d349ade56"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Attributes**

</td><td>

The list of field attributes.

</td></tr><tr><td>

**Property**

</td><td>

The name of the parameter of the attribute selected in the **Attributes** column.

</td></tr><tr><td>

**Value**

</td><td>

The original value of the parameter selected in the **Attributes** column.

 You can enter any string as the parameter value without the system performing type validation. If the value of the customized parameter has an incorrect type, it causes a validation error during the publication of the customization project.

</td></tr></tbody>
</table>

<table id="table_kvj_c3t_l5b"><thead><tr><th>

Button

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**OK**

</td><td>

Applies the modifications to the field.

 As a result, the \[PXCustomizeBaseAttribute\(typeof\(AttrNameAttribute\), "ParameterName", NewValue\)\] attribute is added to the field for the modified parameter. You can view the source code of the attribute in the **Customize Attributes** area of the Data Class page.

 **Note:** The system currently inserts the deprecated PXCustomizeBaseAttribute attribute, which is used to redefine the value of a property for an attribute. In a future release, the system will instead insert an attribute from the [PXCustomize](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=65178fd8-b72b-6d7b-3282-22e3f004d66a) static class.

</td></tr><tr><td>

**Cancel**

</td><td>

Closes the dialog box without making any changes.

</td></tr></tbody>
</table>

## Customized Fields Pane

The Customized Fields pane \(the left pane of the Data Class page\) contains a table that lists all of the currently customized fields of the DAC. In the table, you select a field, and then you view or edit its attributes in the Source Code pane \(the right pane of this page\). The table has a single column: **Field Name**.

The table toolbar has only standard buttons.

## Source Code Pane

You use the Source Code pane \(the right pane of the page\) to customize the attributes of the field that is currently selected in the table of the Customized Fields pane.

The title of the pane contains the name and type of the selected field. The type of the field is specified in parentheses and can be one of the following: *New Field* or *Customized Existing Field*.

The work area contains the following elements.

<table id="_c306ee3b-e729-4778-83ab-9ae7278d1713"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Customize Attributes**

</td><td>

The area in which you can edit the source code of the attributes of the selected field.

</td></tr><tr><td>

Drop-down list

</td><td>

The way in which the system applies the changes to the field attributes.

 The following options are available:

 -   *Keep Original*: The original attributes remain on the field until you select another option in this box.
-   *Replace Original*: The original attributes are replaced on the field with the custom attributes specified in the **Customize Attributes** area.
-   *Append to Original* \(default\): The custom attributes are added to the end of the list of the original attributes of the data field. If you use this option, make sure that you do not duplicate attributes on the field.

 This element is available for only an existing customized field.

 If you want to change the original attributes in the **Customize Attributes** area, before typing any text in the area, select the *Replace Original* option. The original attributes will be copied to the **Customize Attributes** area.

</td></tr><tr><td>

**Original Attributes**

</td><td>

The area in which you view the source code of the original attributes of the selected field.

</td></tr></tbody>
</table>

