# Best Practices {#_4cb4f1f9-1ee9-4179-a3c2-36fb514eb398 .concept}

We recommend that you heed the best practices described below when you are customizing a table schema for a customization project.

## Adding a Default Value to a Column { .section}

When you are customizing a column in a table schema of your customization project by using the **Database Scripts** page of the Customization Project Editor or a custom SQL script, we recommend that you not specify a default value for this new column by using the approach described in [To Add a Custom Column to an Existing Table](CG_GL_Items_DBScripts_AddCustomColumns.md). The database engine does not consistently enforce default values at the database level, so adding a default value to a column of an existing table schema does not guarantee that it will be applied when the database is created or upgraded.

We recommend that you specify the default value for a column in a DAC by using the [PXDefaultAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=96b4e224-d0d2-e2d8-671e-9ba2ed73c21b) or [PXDBDefaultAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=c97384f1-fe6e-9c90-c97e-ba2e53af675d) attribute instead. \(For usage examples of these attributes, click their respective links.\)

If you want to add a new column with a default value to a table schema that has existing records, you need to write a custom SQL script that adds this new column with the specified default value, and updates this default value for all existing records.

The data for some entities in Acumatica ERP, such as generic inquiries and reports, can be defined and stored in XML format. These entities are described with XML definitions in the `/App_Data/XmlExportDefinitions` folder of your application. If you define a new column that does not accept Null values for such an entity, you will need to create a C\# class that implements the [XMLEntityUpgrader](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=0376310a-291b-a258-6983-fb56e068ec66) interface. This class should define the upgrade logic to update all existing records with the specified default value for the new column.

**Parent topic:**[Database Scripts](../CustomizationPlatform/CG_GL_Items_DBScripts.md)

