# Audit Fields {#_9dd06906-0b2f-498c-a333-cfd641bfbd9e .concept}

Audit fields keep meta information on the creation of a database record and the last change to the record. The Acumatica Framework automatically updates audit fields.

To enable the tracking of audit data for a particular table, you should add the columns listed below to the table and declare the corresponding audit data fields in the data access class. You have to add the corresponding type attribute to each audit field.

If the audit columns are properly created in the database table and the corresponding data fields are declared in the data access class, the Acumatica Framework automatically updates the audit data in these fields every time a data record is modified from the application. The date and time values are stored in the database \(in UTC\).

The following table shows the database column name, its data type, and the DAC attribute corresponding to each audit field.

|Database Column Name|Data Type \(SQL Server\)|Data Type \(MySQL\)|Type Attribute on the Data Field|Mandatory|
|--------------------|------------------------|-------------------|--------------------------------|---------|
|`CreatedByID`|`uniqueidentifier`; not null|`CHAR(36)` with ASCII character set; not null|`[PXDBCreatedByID]`|Yes|
|`CreatedByScreenID`|`char(8)`; not null|`CHAR(8)` with ASCII character set; not null|`[PXDBCreatedByScreenID]`|Yes|
|`CreatedDateTime`|`datetime`; not null|`DATETIME`; not null|`[PXDBCreatedDateTime]`|Yes|
|`LastModifiedByID`|`uniqueidentifier`; not null|`CHAR(36)` with ASCII character set; not null|`[PXDBLastModifiedByID]`|Yes|
|`LastModifiedByScreenID`|`char(8)`; not null|`CHAR(8)` with ASCII character set; not null|`[PXDBLastModifiedByScreenID]`|Yes|
|`LastModifiedDateTime`|`datetime`; not null|`DATETIME`; not null|`[PXDBLastModifiedDateTime]`|Yes|
|`StateChangedByID`|`uniqueidentifier`; not null|`CHAR(36)` with ASCII character set; not null|`[PXDBStateChangedByID]`|No|
|`StateChangedByScreenID`|`char(8)`; not null|`CHAR(8)` with ASCII character set; not null|`[PXDBStateChangedByScreenID]`|No|
|`StateChangedDateTime`|`datetime2`; not null|`DATETIME`; not null|`[PXDBStateChangedDateTime]`|No|

**Parent topic:**[Designing the Database Structure and DACs](../StudioDeveloperGuide/DA__mng_Designing_Database_Structure.md)

