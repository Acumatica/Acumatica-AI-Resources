# Database Scripts {#_b53a5313-aa16-468b-93a0-8e2c72495681 .concept}

With the Acumatica Customization Platform, you can use custom SQL scripts for the following changes to the database in the scope of a customization project:

-   The creation of custom tables
-   The creation of views, indexes, and other database objects
-   The insertion of data into tables
-   The increasing of the size of a text column of a table

See [Changes in the Database Schema](CG_Platform_Framework_DBSchema.md) for details.

You use the [Database Scripts](../UserGuide/AU_20_90_00.md) \(AU209000\) page of the [Customization Project Editor](../UserGuide/SM_20_45_10.md) to manage *Sql* and *Table* items in the customization project.

**Note:** An *Sql* item contains a custom database table definition or a custom SQL script that has to be executed while the customization project is published. A *Table* item contains a description of the custom columns added to a table for bound custom fields created in the appropriate data access class.

The [Database Scripts](../UserGuide/AU_20_90_00.md) page displays the list of the custom SQL scripts and customized tables that have been added to the customization project.

When you create a custom table in the database, we recommend that you add the table schema to the customization project, as described in [To Add a Custom Table to a Project](CG_GL_Items_DBScripts_AddingCustTable.md). To create other database objects or insert data into the tables, you have to compose the corresponding SQL script and add the script to the customization project, as described in [To Add a Custom SQL Script to a Project](CG_GL_Items_DBScripts_AddingCustScript.md).

On the [Database Scripts](../UserGuide/AU_20_90_00.md) page, you can perform various operations, as described in the following topics:

-   [To Add a Custom Table to a Project](CG_GL_Items_DBScripts_AddingCustTable.md)
-   [To Update Custom Tables in the Project](CG_GL_Items_DBScripts_UpdatingCustTable.md)
-   [To Add a Custom Column to an Existing Table](CG_GL_Items_DBScripts_AddCustomColumns.md#)
-   [To Increase the Size of a Column in an Existing Table](CG_GL_Items_DBScripts_AlterTableCol.md)
-   [To Add a Custom SQL Script to a Project](CG_GL_Items_DBScripts_AddingCustScript.md)
-   [To Edit a Custom SQL Script](CG_GL_Items_DBScripts_Editing.md#)
-   [To Delete an Sql or Table Item From a Project](CG_GL_Items_DBScripts_Deleting.md)

-   **[Best Practices](../CustomizationPlatform/CG_GL_Items_DBScripts_Best_Practices.md)**  

-   **[To Add a Custom Table to a Project](../CustomizationPlatform/CG_GL_Items_DBScripts_AddingCustTable.md)**  

-   **[To Update Custom Tables in the Project](../CustomizationPlatform/CG_GL_Items_DBScripts_UpdatingCustTable.md)**  

-   **[To Add a Custom Column to an Existing Table](../CustomizationPlatform/CG_GL_Items_DBScripts_AddCustomColumns.md)**  

-   **[To Increase the Size of a Column in an Existing Table](../CustomizationPlatform/CG_GL_Items_DBScripts_AlterTableCol.md)**  

-   **[To Add a Custom SQL Script to a Project](../CustomizationPlatform/CG_GL_Items_DBScripts_AddingCustScript.md)**  

-   **[To Edit a Custom SQL Script](../CustomizationPlatform/CG_GL_Items_DBScripts_Editing.md)**  

-   **[To Delete an Sql or Table Item From a Project](../CustomizationPlatform/CG_GL_Items_DBScripts_Deleting.md)**  


**Parent topic:**[Managing Items in a Project](../CustomizationPlatform/CG_GL_Items.md)

