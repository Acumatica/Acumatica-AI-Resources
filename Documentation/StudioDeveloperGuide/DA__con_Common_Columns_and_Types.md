# Common Columns and Data Types {#_3323a8a3-1736-498a-bf87-55617532c91c .concept}

You should use the following data types for columns. In the **Type Attribute on the Data Field** column in the table below, you can find the most common type attributes that are added to the corresponding data fields in the data access class declaration.

|Value|Data Type \(SQL Server\)|Data Type \(MySQL\)|Type Attribute on the Data Field|
|-----|------------------------|-------------------|--------------------------------|
|Database identity|int|INT|`[PXDBIdentity]`|
|Natural key \(for example, document number\)|nvarchar\(15\)|VARCHAR\(15\) with utf8mb4 character set|`[PXDBString(15, IsKey = true, IsUnicode = true)]`|
|Line number|int|INT|`[PXDBInt]`|
|Short string \(for example, a name or unit of measure\)|nvarchar\(20\), nvarchar\(50\)|VARCHAR\(20\), VARCHAR\(50\) with utf8mb4 character set|`[PXDBString(20, IsUnicode = true)]`|
|Long string \(such as a description\)|nvarchar\(255\)|VARCHAR\(255\) with utf8mb4 character set|`[PXDBString(255, IsUnicode = true)]`|
|Type or status identifier \(for instance, a document type\)|int or char\(1\)|INT or CHAR\(1\)|`[PXDBInt]` or `[PXDBString(1, IsFixed = true)]` respectively|
|Boolean flag \(for example, active/inactive\)|bit|TINYINT\(1\)|`[PXDBBool]`|
|Price or cost, monetary units|decimal\(19, 6\)|DECIMAL\(19, 6\)|`[PXDBDecimal(6)]`|
|Amount or total, monetary units|decimal\(19, 4\)|DECIMAL\(19, 4\)|`[PXDBDecimal(4)]`|
|Quantity, pieces|decimal\(25, 6\)|DECIMAL\(25, 6\)|`[PXDBDecimal(6)]`|
|Maximum, minimum, or threshold quantity, pieces|decimal\(9, 6\)|DECIMAL\(9, 6\)|`[PXDBDecimal(2)]`|
|Percent, rate \(for example, discount percent\)|decimal\(9, 6\)|DECIMAL\(9, 6\)|`[PXDBDecimal(2)]`|
|Weight or volume|decimal\(25, 6\)|DECIMAL\(25, 6\)|`[PXDBDecimal(6)]`|
|Date|smalldatetime|DATETIME|`[PXDBDate]`|
|Time span|int|INT|`[PXDBTimeSpan(DisplayMask = "t", InputMask = "t")]`|
|Coefficient \(such as a conversion factor\)|decimal\(9, 6\)|DECIMAL\(9, 6\)|`[PXDBDecimal(1)]`|

**Parent topic:**[Designing the Database Structure and DACs](../StudioDeveloperGuide/DA__mng_Designing_Database_Structure.md)

