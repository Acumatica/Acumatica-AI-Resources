# Attachment of Additional Objects to Data Records \(NoteID\)

You can attach additional objects to a data record—for instance, attach a text note or an uploaded file or multiple uploaded files to a data record.

You turn on or off support for data record attachments for each particular table individually. To turn on support for data record attachments, add a `NoteID` column that stores the global data record identifier to the table and declare the corresponding field in the data access class. For more information on uploading files through an Acumatica ERP form, see [To Display an Attached Image on the Form](BL__how_Display_Attached_Image.md). See below for the parameters of the global identifier column and the attribute that should be added to the corresponding DAC field.

<table id="table_yml_2fg_pl"><thead><tr><th>

Database Column

</th><th>

Data Type \(SQL Server\)

</th><th>

Data Type \(MySQL\)

</th><th>

Type Attribute on the Data Field

</th></tr></thead><tbody><tr><td>

Global data record identifier \(named `NoteID`\)

</td><td>

`uniqueidentifier`; not null

</td><td>

`CHAR(36)`

</td><td>

`[PXNote]`

</td></tr></tbody>
</table>

**Tip:** If you have added the NoteID column to a custom table, we recommend to create a unique index for this table with the CompanyID and NoteID columns. Both columns are required to achieve a unique index because when a snapshot is taken the NoteID values stay the same as they were in the tenant where the snapshot is taken.

**Parent topic:**[Designing the Database Structure and DACs](../StudioDeveloperGuide/DA__mng_Designing_Database_Structure.md)

