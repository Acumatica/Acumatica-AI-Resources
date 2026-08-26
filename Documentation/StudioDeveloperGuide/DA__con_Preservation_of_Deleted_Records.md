# Preservation of Deleted Records \(DeletedDatabaseRecord\) {#_4a1939a3-26aa-49e3-83c6-5bcc884e66b9 .concept}

Acumatica Framework provides a low-level mechanism \(which is performed on the database level\) for preserving deleted data records in the database. With this mechanism, when an application initiates the deletion of a data record, the data access layer generates an SQL query that marks the data record as deleted but does not permanently remove the data record from the table. When data records are selected from the table, the data access layer generates the SQL query, which returns only data records that are not marked as deleted. The data records that are preserved in this way can be restored.

You can turn on or off the preservation of deleted data records for each table individually. You implement this functionality slightly differently depending on whether a table is a custom table or a standard Acumatica ERP table:

-   To preserve data records in a custom table: Add the `DeletedDatabaseRecord` column to the table, and do not declare the data field in the data access class.
-   To preserve data records in a standard Acumatica ERP table: Add the `UsrDeletedDatabaseRecord` column to the table, and do not declare the data field in the data access class.

When a data record is deleted in the table, the framework automatically preserves the deleted data record transparently to the application developer. Below you can see the details of the columns to be added.

|Database Column|Data Type \(SQL Server\)|Data Type \(MySQL\)|Type Attribute on the Data Field|
|---------------|------------------------|-------------------|--------------------------------|
|`DeletedDatabaseRecord`|`bit`; not null|`TINYINT(1)`; not null|Not declared in DAC|
|`UsrDeletedDatabaseRecord`|`bit`; not null|`TINYINT(1)`; not null|Not declared in DAC|

**Parent topic:**[Designing the Database Structure and DACs](../StudioDeveloperGuide/DA__mng_Designing_Database_Structure.md)

