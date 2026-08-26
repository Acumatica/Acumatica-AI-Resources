# To Add a Custom Data Field {#_5a2bddc7-dd58-4de4-a9f5-f4d5ce073b77 .concept}

You can add a custom data field to an existing data access class by using the [Screen Editor](../UserGuide/AU_20_45_20.md) or [Data Class](../UserGuide/AU_DataClassEditor.md), as described in the following sections:

-   [By Using the Data Class Editor](#_b4eba166-5f4f-4438-a03d-afa3f7ab6458)
-   [By Using the Screen Editor](#_8d5cd29f-d409-447c-9853-ef3632b73e14)

Both of the editors opens the [Create New Field Dialog Box](../UserGuide/AU_DataClassEditor.md#_cdaebe06-9e8d-43fc-8dda-6850986501b6) dialog box, which you use to enter the parameters of the new field and to launch the New Field wizard, which includes an XML declaration of the new field in the *DAC* item for the modified data access class. If the *DAC* item for the modified data access class is absent in the customization project, the wizard creates the appropriate item. Also, the wizard creates a *Table* item with a description of the custom column added to the table for the custom field.

You can select the way a custom field will be stored in the database when you add the field to a data access class. You can add a custom field as one of the following:

-   Without mapping to the database
-   As a new column to the database table by altering the table schema
-   As a name-value pair to a dedicated table without altering the table schema

The detailed information is described in the following sections:

-   [To Add a Custom Field Without Mapping to the Database](#section_mzw_cx2_hq)
-   [To Add a Custom Field as a New Column](#section_ihj_zw2_hq)
-   [To Add a Custom Field as a Name-Value Pair](#section_c5t_cx2_hq)
-   [To Delete a Custom Field](#section_qx1_dx2_hq)

To be able to create a control for the new field to be displayed on a form, you have to publish the project to make the system create the column in the database table and compile the customization code. After the publication, you can add the control for the new field to a form by using the Screen Editor. See [To Add a Box for a Data Field](CG_GL_UI_PXForm_AddBox.md) or [To Add a Column for a Data Field](CG_GL_UI_PXGrid_AddColumn.md) for details.

## By Using the Data Class Editor {#_b4eba166-5f4f-4438-a03d-afa3f7ab6458 .section}

You generally use the [Data Class](../UserGuide/AU_DataClassEditor.md) to add a custom field to a data access class \(DAC\) and store the changes in the customization project as a *DAC* item. To do this, perform the following actions:

1.  Start customization of the data access class, as described in [To Start the Customization of a Data Access Class](CG_GL_BL_DAC_ToOpen.md).
2.  On the toolbar of the Data Class page, click **Create New Field**.
3.  In the **New Field** dialog box, which opens, specify the custom field parameters that are described in [Create New Field Dialog Box](../UserGuide/AU_DataClassEditor.md#_cdaebe06-9e8d-43fc-8dda-6850986501b6).
4.  Click **OK** to save changes in the customization project.

## By Using the Screen Editor {#_8d5cd29f-d409-447c-9853-ef3632b73e14 .section}

If you customize a form by using the [Screen Editor](../UserGuide/AU_20_45_20.md), you may need to create a custom data field to be used to create a new control on the form. By using the editor, you can create a new field in the main DAC of the data view that provides data for the object selected in the Control Tree. To do this, perform the following actions:

1.  In the Control Tree of the Screen Editor, select the node of a container to which you intend to add a new control, or a subnode within the container node.
2.  Click the **Add Data Fields** tab item.
3.  On the table toolbar of the tab item, click **New Field**.
4.  In the **Create New Field** dialog box, which opens, specify the custom field parameters, which are described in [Create New Field Dialog Box](../UserGuide/AU_DataClassEditor.md#_cdaebe06-9e8d-43fc-8dda-6850986501b6).
5.  Click **OK** to save your changes to the customization project.

## To Add a Custom Field Without Mapping to the Database {#section_mzw_cx2_hq .section}

To add a custom field without mapping to the database, perform the following actions:

1.  Open the **Create New Field** dialog box for the data access class [By Using the Data Class Editor](#_b4eba166-5f4f-4438-a03d-afa3f7ab6458) or [By Using the Screen Editor](#_8d5cd29f-d409-447c-9853-ef3632b73e14).
2.  In the dialog box, specify the custom field parameters and select *NonPersistedField* in **Storage Type**.
3.  Click **OK** to add the field to the data access class.

The New Field wizard includes an XML declaration of the new field in the *DAC* item for the modified data access class. The new field declaration contains the data type attribute that specifies an unbound field, such as `[PXString]`.

## To Add a Custom Field as a New Column {#section_ihj_zw2_hq .section}

To add a custom field as a new column that will be appended to the original table of Acumatica ERP, perform the following actions:

1.  Open the **Create New Field** dialog box for the data access class [by using the Data Class Editor](../Shared/../CustomizationPlatform/CG_GL_BL_DAC_AddCustomField.md#_b4eba166-5f4f-4438-a03d-afa3f7ab6458) or [by using the Screen Editor](../Shared/../CustomizationPlatform/CG_GL_BL_DAC_AddCustomField.md#_8d5cd29f-d409-447c-9853-ef3632b73e14).
2.  In the dialog box, specify the custom field parameters and select *DBTableColumn* in the **Storage Type** box to make the system append the column to the original table in the database.
3.  Click **OK** to add the field to the data access class.

The New Field wizard includes an XML declaration of the new field in the *DAC* item for the modified data access class. If the *DAC* item for the modified data access class is absent in the customization project, the wizard creates the appropriate item. Also, the wizard creates a *Table* item with a description of the custom column to be created in the database table for the custom field.

## To Add a Custom Field as a Name-Value Pair {#section_c5t_cx2_hq .section}

To add a custom field a name-value pairs stored in a dedicated table of Acumatica ERP, perform the following actions:

1.  Open the **Create New Field** dialog box for the data access class [By Using the Data Class Editor](#_b4eba166-5f4f-4438-a03d-afa3f7ab6458) or [By Using the Screen Editor](#_8d5cd29f-d409-447c-9853-ef3632b73e14).
2.  In the dialog box, specify the custom field parameters and select *NameValuePair* in **Storage Type**.
3.  Click **OK** to add the field to the data access class.

The New Field wizard includes an XML declaration of the new field in the *DAC* item for the modified data access class. If the *DAC* item for the modified data access class is absent in the customization project, the wizard creates the appropriate item. The wizard doesn't generate any definitions to change the database schema.

## To Delete a Custom Field {#section_qx1_dx2_hq .section}

To delete a custom field or custom attributes on a field from the data access class, open the data access class in the Data Class Editor and delete the custom field from the field list. If you work in Microsoft Visual Studio, publish the customization project to update the file with the customized data access class in the file system. After the project has been published, the customization will be removed from the data access class.

**Parent topic:**[Data Access Class](../CustomizationPlatform/CG_GL_BL_DAC.md)

