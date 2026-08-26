# Customizing the Database Schema {#_6e1b9ff0-1fd5-492a-ad1a-f7cee87a40d5 .concept}

You can use the platform to customize the database of an Acumatica ERP instance. The database customization can include changes in both the data and the schema of the database.

To change the database schema, you can add to a customization project the following scripts:

-   A script to create a custom table
-   A script to create a custom column in an existing table
-   A script to create an extension table for an existing table
-   A custom script

When you publish a customization project with a database script, which changes the database schema, the script is executed. Changes to the database schema aren't deleted when you unpublish the project or delete the script and publish the project once more. You have to remove the changes to the database schema manually.

For detailed information on creating custom database scripts and adding the scripts to a customization project, see the following topics:

-   [To Create a Custom Table](CG_GL_DBSchema_AddCustomTable.md)
-   [To Create a Custom Column in an Existing Table](CG_GL_DBSchema_AddColunm.md)
-   [To Create an Extension Table](CG_GL_DBSchema_CustomColumns.md)
-   [To Add a Custom SQL Script to a Customization Project](CG_GL_DBSchema_AddCustScript.md)

-   **[To Create a Custom Table](../CustomizationPlatform/CG_GL_DBSchema_AddCustomTable.md)**  

-   **[To Create a Custom Column in an Existing Table](../CustomizationPlatform/CG_GL_DBSchema_AddColunm.md)**  

-   **[To Create an Extension Table](../CustomizationPlatform/CG_GL_DBSchema_CustomColumns.md)**  

-   **[To Add a Custom SQL Script to a Customization Project](../CustomizationPlatform/CG_GL_DBSchema_AddCustScript.md)**  


