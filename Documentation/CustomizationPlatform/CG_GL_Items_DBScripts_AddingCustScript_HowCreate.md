# Creating a Custom SQL Script {#_416914ca-25c9-4ab7-8d31-fe5c02d9a6aa .concept}

To create database objects other than custom tables or to insert data into tables, you can add custom SQL scripts to a customization project.

When you publish a customization project that contains a database script, the Acumatica Customization Platform executes the script during the first publication. The platform keeps information about each script that has been executed at least once and has not since been changed in the database, and omits the repeated execution of these scripts for optimization purposes. If you run the **Publish with Cleanup** operation, the platform cleans all the information about previously executed scripts of the customization project, and executes this script once more while publishing the project. See [Customization Project Editor](../UserGuide/SM_20_45_10.md) for details.

## Creating Custom Scripts { .section}

As you write scripts, keep the following guidelines in mind:

-   You have to use a naming convention that provides unique names for your custom objects so that they do not have the same names as existing database objects do.
-   A script can be executed multiple times. Therefore, in the script, you have to check whether an object already exists before you create a new one; otherwise, an error will occur when the script runs on a database that already contains the object.

You can prepare the script directly in the dialect of the target database or prepare the script for on-the-fly interpretation by Microsoft SQL Server or MySQL, depending on the target database. So you have the following options:

-   **Insert the SQL script prepared for the target database, which is Microsoft SQL or MySQL**: During the publication of the project, the Acumatica Customization Platform executes the script as it is. You can use all the functionality of the SQL dialect of the target database, but this script causes the customization project to depend on the database management system that hosts the database of Acumatica ERP.

    You can use SQL script attributes to skip the script batch execution on a database management system. See [Using the SQL Script Attributes](CG_GL_Items_DBScripts_Adding_Attr.md) for details.

-   **Insert the SQL script with support for interpretation for the target database**: Prepare the script in the Microsoft SQL Server dialect, and insert the script with the `--[VmSql]` attribute. During the publication of the project, the system analyzes the script, generates the corresponding SQL statements in the dialect of the target database, and executes the statements. A customization project that includes only these scripts remains independent from the database management system that hosts the database of Acumatica ERP. However, the interpreter supports a relatively limited set of SQL language elements. See [Writing Custom SQL Scripts for Interpretation](CG_GL_Items_DBScripts_WritingCustSQL.md) for details.

    In the script for interpretation, you have to place the `--[VmSql]` attribute before each batch of the SQL script to be interpreted.


**Parent topic:**[To Add a Custom SQL Script to a Project](../CustomizationPlatform/CG_GL_Items_DBScripts_AddingCustScript.md)

