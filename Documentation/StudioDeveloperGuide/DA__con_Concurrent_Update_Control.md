# Concurrent Update Control \(TStamp\) {#_8d904e5f-2b8c-4d82-a8f5-bc863f8ffc8f .concept}

You can add the SQL Server time stamp column to a table to make Acumatica Framework able to handle concurrent updates. The corresponding time stamp data field should be declared in the data access class. If the time stamp data field is declared, Acumatica Framework handles the time stamp column automatically. Acumatica Framework checks the row version every time the row is modified. We recommend that you add the time stamp column, with the parameters shown in the following table, to all tables of your application.

|Database Column Name|Data Type \(SQL Server\)|Data Type \(MySQL\)|Type Attribute on the Data Field|
|--------------------|------------------------|-------------------|--------------------------------|
|`TStamp`|`timestamp`; not null|`TIMESTAMP(6)`; not null|`[PXDBTimestamp]`|

**Parent topic:**[Designing the Database Structure and DACs](../StudioDeveloperGuide/DA__mng_Designing_Database_Structure.md)

