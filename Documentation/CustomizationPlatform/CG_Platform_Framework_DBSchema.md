# Changes in the Database Schema {#_324bf7e9-4a40-4579-909e-ca6ca1554ad8 .concept}

The Acumatica Customization Platform permits the following changes to the database in the scope of a customization project:

-   [Creation of custom tables](#section_ant_3jc_nw)
-   [Creation of custom columns in existing tables](#section_hgx_3jc_nw)
-   [Creation of views, indexes, and other database objects](#section_i4h_jjc_nw)

## Creation of Custom Tables {#section_ant_3jc_nw .section}

We recommend that you create a custom table in the database of your development environment by using a database administration tool, such as SQL Server Management Studio, and then import the table schema from the database to a customization project by using the [Customization Project Editor](../UserGuide/SM_20_45_10.md). The project keeps the schema in XML format. While publishing the customization project, the platform executes a special procedure to create the table by the schema, while meeting all the requirements of Acumatica ERP.

## Creation of Custom Columns in Existing Tables {#section_hgx_3jc_nw .section}

To create a custom database-bound field, you add a column to the database table and declare the field in the extension of the base \(original\) DAC.

The new column is appended to the original table by altering the table schema. When you create the database-bound field by using the [Data Class](../UserGuide/AU_DataClassEditor.md) page, the platform generates the DAC extension code for the new field and adds to the customization project the XML definition of the new column to be created in the database. To be able to create a UI control for the new field to display on a form, you have to publish the project to make the system create the column in the database table and compile the customization code. After the publication, you can add the control for the new field to the form by using the [Screen Editor](../UserGuide/AU_20_45_20.md) page.

## Creation of Views, Indexes, and Other Database Objects {#section_i4h_jjc_nw .section}

With the Acumatica Customization Platform, you can add to a customization project an SQL script to be executed during the publication of the project. However, we recommend that you avoid doing this.

**Warning:** A possible result of a custom SQL script is the loss of the integrity and consistency of the application data.

If you do add a custom SQL script, you must adhere to the following requirements for the script:

-   Because Acumatica ERP supports multitenancy, you must create an SQL script that correctly creates a database object that properly specifies and uses the company mask.
-   You must correctly specify the attributes for the script so that the script can be executed on the target database servers: MySQL Server, Microsoft SQL Server, or both. For details about attributes, see [Using the SQL Script Attributes](../Shared/../CustomizationPlatform/CG_GL_Items_DBScripts_Adding_Attr.md#).

**Important:** If you have created custom database tables or custom fields for a tenant and have created the full-text search index for these elements, you need to add these tables to the `pp_DisableFullText` and`pp_EnableFullText` stored procedures in your customization project. This step is necessary to avoid errors when administrators copy tenants or create and restore snapshots.

**Parent topic:**[Customization Framework](../CustomizationPlatform/CG_Platform_Framework.md)

