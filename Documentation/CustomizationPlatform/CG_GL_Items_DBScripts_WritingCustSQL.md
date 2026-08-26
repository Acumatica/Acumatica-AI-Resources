# Writing Custom SQL Scripts for Interpretation {#_0d890897-5b11-41e6-a6bc-c7eceb27c979 .concept}

In custom scripts for interpretation, you can use the data types and SQL statements that are listed below.

## Data Types { .section}

The following data types of Microsoft SQL Server are supported for interpretation:

-   bit
-   char, nchar, varchar, and nvarchar
-   smallint, int, and bigint
-   date, datetime, and datetime2
-   uniqueidentifier
-   decimal and double

The following data types of MySQL Server are supported for interpretation:

-   binary, varbinary, and longblob
-   char, varchar, and longtext
-   tinyint, smallint, int, and bigint
-   timestamp and datetime
-   decimal and double

## SQL Statements { .section}

If you prepare a script for interpretation, you can use the following elements of Transact-SQL:

-   CREATE, ALTER, and DROP statements
-   SELECT, INSERT, UPDATE, and DELETE statements with WHERE clauses
-   Logical operators: NOT, AND, OR, and EXISTS
-   Control-of-flow keywords: IF...ELSE and BEGIN...END
-   Expressions: CASE, COALESCE, and NULLIF
-   String functions: LEN, CONCAT, REPLACE, CHAR, RTRIM, LTRIM, SUBSTRING, UPPER, LOWER, REPLICATE, and DATALENGTH
-   Arithmetic operators: +, —, \*, and /
-   Mathematical functions: CEILING, ROUND, and FLOOR
-   Date and time functions: GETDATE, DAYADD, DATEPART, and DATALENGTH
-   Aggregate functions: ABS, MIN, MAX, SUM, and COUNT
-   Conversion functions: CAST and CONVERT
-   System functions: ISNULL and NEWID
-   System variables: @@ROWCOUNT, @@IDENTITY, and @@FETCH\_STATUS
-   Cryptographic functions: HASHBYTES with MD5 only
-   Local variables
-   Cursors
-   Scalar subselect

**Note:** The DATALENGTH function can be applied to a string or binary object, and the function returns the object length in bytes.

## VmSQL Variables { .section}

In the script for interpretation, you can use the @@@is\_mssql, @@@is\_azure, and @@@is\_mysql variables. The following table contains the values of these variables for Microsoft SQL Server, Microsoft Azure SQL Database, and MySQL Server.

|SQL Server|@@@is\_mssql|@@@is\_azure|@@@is\_mysql|
|----------|------------|------------|------------|
|MS SQL Server|1|0|0|
|MS Azure SQL Database|1|1|0|
|MySQL Server|0|0|1|

## Error Messages { .section}

Unsupported data types cause the following error: *Cannot figure out DbType for SqlDataTypeOption*.

Unsupported elements can cause the following errors:

-   *Date interval ... not recognized*: This indicates that the dates are specified in an unknown format in the functions that work with datetime formats.
-   *Unknown algorithm in hashbytes ... not implemented*: If you get this error, an unknown algorithm is specified in the HASHBYTES function. Currently, the interpreter supports MD5 only.
-   *Function ... not implemented*: This means that the script contains an unknown function that cannot be interpreted.

**Parent topic:**[To Add a Custom SQL Script to a Project](../CustomizationPlatform/CG_GL_Items_DBScripts_AddingCustScript.md)

