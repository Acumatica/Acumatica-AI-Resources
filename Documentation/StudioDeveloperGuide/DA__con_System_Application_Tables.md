# System and Application Tables {#_509aefc2-387b-4284-8ff8-ad5fc9b725be .concept}

The database of your Acumatica Framework-based application consists of the following tables:

-   System tables: Those that are created by default for the application template and not used to store your application data
-   Application tables: Acumatica ERP tables \(which exist if you have implemented customization\) and your own tables

Do not add columns to system tables or modify them in any other way. Such modifications could corrupt the application and would be lost during the next database upgrade.

Regarding your own application tables, you have to design and create the needed tables that store your application data. You then map these application tables to data access classes \(DACs\) that define the object model of the application. In one table, you can keep data records of multiple entities, each of which is defined as a separate data access class in the application object model.

**Parent topic:**[Designing the Database Structure and DACs](../StudioDeveloperGuide/DA__mng_Designing_Database_Structure.md)

