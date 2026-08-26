# To Create a Custom Column in an Existing Table {#_78783859-14f5-4b5d-a4a4-03cca2772ad2 .task}

Because you can need a new column in an existing database table only for a bound data field, the Acumatica Customization Platform automatically creates a custom column when you create a custom bound data field by using the New Field wizard.

To add a custom field as a new column that will be appended to the original table of Acumatica ERP, perform the following actions:

1.  Open the **Create New Field** dialog box for the data access class [by using the Data Class Editor](../Shared/../CustomizationPlatform/CG_GL_BL_DAC_AddCustomField.md#_b4eba166-5f4f-4438-a03d-afa3f7ab6458) or [by using the Screen Editor](../Shared/../CustomizationPlatform/CG_GL_BL_DAC_AddCustomField.md#_8d5cd29f-d409-447c-9853-ef3632b73e14).
2.  In the dialog box, specify the custom field parameters and select *DBTableColumn* in the **Storage Type** box to make the system append the column to the original table in the database.
3.  Click **OK** to add the field to the data access class.

The New Field wizard includes an XML declaration of the new field in the *DAC* item for the modified data access class. If the *DAC* item for the modified data access class is absent in the customization project, the wizard creates the appropriate item. Also, the wizard creates a *Table* item with a description of the custom column to be created in the database table for the custom field.

After you publish the customization project at least once, the database schema is changed. Changes to the database schema aren't deleted when you unpublish the project or delete the *DAC* and *Table* items and publish the project once more. You have to remove the changes manually.

**Parent topic:**[Customizing the Database Schema](../CustomizationPlatform/CG_GL_DBSchema.md)

