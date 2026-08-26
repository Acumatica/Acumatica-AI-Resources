# Parameters in Fluent BQL {#_9d56ea11-0768-4f4d-b7ab-1cea724c42cb .concept}

If you need to specify values in a fluent business query language \(BQL\) statement, you use fluent BQL parameters, which are replaced with the needed values in the translation to SQL. For details about how BQL statements with parameters are translated to SQL, see [Translation of a BQL Command with Parameters to an SQL Query Tree](AD__con_BQL_Translation_to_SQL.md#_ff6436a7-d8a9-43c8-9201-d5ea9afbe2d5).

In this topic, you can find a description of the fluent BQL parameters and the difference between them.

## Use of the Current Value of the Field from PXCache { .section}

To insert into the SQL query the field value of the Current object from the PXCache object, you append .FromCurrent to the field name in a fluent BQL query. If the Current object from the PXCache object is `null`, FromCurrent retrieves the default value of the field. If you do not need to retrieve the default value if the Current object is `null`, you need to append .FromCurrent.NoDefault to the field name in a fluent BQL query. In this case, the system does not retrieve the default value and inserts `null`.

**Tip:** FromCurrent is the equivalent of the Current parameter in traditional BQL. FromCurrent.NoDefault is the equivalent of the Current2 parameter in traditional BQL.

By using the current field value from PXCache in the declaration of a data view, you can refer to another view to relate these data views to each other. A typical example is referencing the current master record on master-detail forms. For details on how the current field value is used, see [To Relate Data Views to Each Another](AD__how_Use_Parameters_in_FBQL.md#_27cf551c-951d-463a-9005-74584894a725).

## Insertion of a Specific Value into the Query { .section}

To insert a specific value into the SQL query, you use the @P.As\[Type\] classes, where \[Type\] corresponds to the C\# type of the parameter. The following table lists the fluent BQL types that correspond to C\# types.

|C\# Type|Fluent BQL Type|
|--------|---------------|
|`bool`|@P.AsBool|
|`byte`|@P.AsByte|
|`short`|@P.AsShort|
|`int`|@P.AsInt|
|`long`|@P.AsLong|
|`float`|@P.AsFloat|
|`double`|@P.AsDouble|
|`decimal`|@P.AsDecimal|
|`Guid`|@P.AsGuid|
|`DateTime`|@P.AsDateTime|
|`DateTime`|@P.AsDateTime.UTC|
|`DateTime`|@P.AsDateTime.WithTimeZone|
|`String`|@P.AsString \(NVARCHAR\)|
|`String`|@P.AsString.ASCII \(VARCHAR\)|
|`String`|@P.AsString.Fixed \(NCHAR\)|
|`String`|@P.AsString.ASCII.Fixed \(CHAR\)|
|`String`|@P.AsString.Fixed.ASCII \(CHAR\)|

**Tip:** @P.As\[Type\] is the equivalent of the Required parameter in traditional BQL.

By using these classes, you can pass values to the SQL query, as described in [To Pass a Field Value to the SQL Query](AD__how_Use_Parameters_in_FBQL.md#_6e19063a-c756-4b7d-88a0-7d0100a187d9) and [To Pass Multiple Field Values to the SQL Query](AD__how_Use_Parameters_in_FBQL.md#_cc3c4e58-b049-4351-b3c6-ebd9e62a350d).

## Use of the Fluent BQL AsDateTime Parameter Type and Its Variants { .section}

Note the difference between the three types of `DateTime` fields listed in the table in the previous section:

-   The fluent BQL parameter types AsDateTime and AsDateTime.UTC represent a `DateTime` value in Coordinated Universal Time \(UTC\).
-   The parameter type AsDateTime.WithTimeZone represents a `DateTime` value in the local time zone.

**Tip:** When you are working with a `DateTime` field whose values are represented in UTC, we recommend using the AsDateTime.UTC parameter type because it explicitly indicates the time zone that is being represented by this parameter type. Or you can instead use its shorthand version, AsDateTime.

If you want to compare a `DateTime` field represented by one of these parameter types to a value, then this value must represent the same time zone as the `DateTime` field that it is being compared to. Suppose that you want to compare a `DateTime` field of parameter type AsDateTime or AsDateTime.UTC to a value. This value must be converted to the UTC time zone before you execute the query that compares this value to the `DateTime` field. Conversely, suppose that you want to compare a `DateTime` field of parameter type AsDateTime.WithTimeZone to a value. This value must be converted to the local time zone before you execute the query that compares this value to the `DateTime` field.

If the appropriate conversion has not been performed for a value before the value is compared to a `DateTime` field, as described above, the fluent BQL query may retrieve inaccurate results. Inaccurate results are more likely when the query is using the IsEqual comparison operator.

## Use of the Fluent BQL AsString Parameter Type and Its Variants { .section}

When you use the fluent BQL parameter type AsString in a fluent BQL query, you should make sure that the your parameter type has the same data type as the underlying field in the database against which this query will be executed. This ensures that the database management system \(DBMS\) is not forced to perform any type casting to match the field values in this database field to parameter type used in the query. If there is a mismatch between the data type of the database field and the parameter type used in your fluent BQL query, performance may be degraded: The DBMS will cast field values to the fluent BQL parameter type used in the query, and end up having to scan the whole database table instead of being able to use the index that was already built for that field in the database.

An example of such a mismatch occurs when a field in the database has the `CHAR` data type and you use the generic @P.AsString parameter type in your fluent BQL query to perform a comparison using that database field. The @P.AsString parameter type has the `NVARCHAR` data type. Thus, the DBMS must cast field values in the database field to `NVARCHAR`, causing it to be unable to use the index that was already built for this database field based on the original `CHAR` data type. To mitigate this issue, you should use the appropriate variant of the AsString parameter type that matches the data type of the database field. In the fluent BQL query of the example above, you could mitigate the described issue by using the @P.AsString.ASCII.Fixed parameter type instead of the generic AsString parameter type. The variants of the AsString parameter type are listed in the table of the *Insertion of a Specific Value into the Query* section.

## Insertion of an Optional Value into the Query { .section}

To insert an optional value into the query, you append .AsOptional to the field name in a fluent BQL query. If you specify an explicit value for this parameter during the execution of the BQL statement, AsOptional uses the specified value. If you do not specify an explicit value for this parameter during the execution of the BQL statement, AsOptional works similarly to FromCurrent—that is, retrieves the field value of the Current object from the PXCache object and uses the default value of the field if the Current object is `null`. You can append .AsOptional.NoDefault to the field name in a fluent BQL query to make the system not use the default value and insert `null`.

**Tip:** AsOptional is the equivalent of the Optional parameter in traditional BQL. AsOptional.NoDefault is the equivalent of the Optional2 parameter in traditional BQL.

By using AsOptional, you can pass the external presentations of the values to the SQL query, as described in [To Provide External Presentation of the Field Value to the SQL Query](AD__how_Use_Parameters_in_FBQL.md#_4473b629-e9a7-4f41-9041-c0442303d2be).

When a DAC includes more than one key field, you may need to use .AsOptional in the primary data view of the graph. In this case, the primary data view typically filters the data records by all of the key fields except the last one. For example, you can select documents with the same document type as the current data record has and navigate through these documents with different document numbers. In the following example, the `Document` DAC has two key fields, `DocType` and `DocNbr`.

```
public SelectFrom<Document>.
        Where<Document.docType.IsEqual<**Document.docType.AsOptional**>>.View Receipts;
```

.AsOptional could be replaced with .FromCurrent in the code above unless you need to execute the `Receipts` data view in code to select a document with specific document type and number.

## Insertion of a Value from the UI Control into the Query { .section}

To insert a value from the UI control into the SQL query, you use the Argument.As\[Type\] classes, where \[Type\] corresponds to the C\# type of the inserted value. The following table lists the fluent BQL types that correspond to C\# types.

|C\# Type|Fluent BQL Type|
|--------|---------------|
|`bool`|Argument.AsBool|
|`byte`|Argument.AsByte|
|`short`|Argument.AsShort|
|`int`|Argument.AsInt|
|`long`|Argument.AsLong|
|`float`|Argument.AsFloat|
|`double`|Argument.AsDouble|
|`decimal`|Argument.AsDecimal|
|`Guid`|Argument.AsGuid|
|`DateTime`|Argument.AsDateTime|
|`String`|Argument.AsString|

By using the Argument classes, you can pass values to the data view delegates. For more information on how to use the Argument classes, see [To Pass a Value from a UI Control to a Data View](AD__how_Use_Parameters_in_FBQL.md#_1f3bef64-92a7-469f-9fd2-89f0910565fe).

**Parent topic:**[Creating Fluent BQL Queries](../StudioDeveloperGuide/AD__mng_Fluent_BQL.md)

