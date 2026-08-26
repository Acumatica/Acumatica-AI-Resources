# Using the SQL Script Attributes {#_a59f0325-9639-437a-bc7a-f4f645f93f0e .concept}

You can decorate a batch of an SQL script with various attributes to control the batch execution.

**Tip:** An SQL batch is a portion of an SQL script located between two GO statements.

## Using the Attributes { .section}

Attributes are based on the line preceding the batch in the following format.

```
--[Attribute(Parameter1 = Value1, Parameter2 = Value2)]
```

Also, it is possible to specify that an attribute is effective only when the script is executed on a particular platform \(MySQL Server or Microsoft SQL Server\). To achieve this, add to the beginning of the attribute name a short database platform name followed by a colon, as follows.

```
--[mysql: Attribute(Parameter1 = Value1, Parameter2 = Value2)]
--[mssql: Attribute(Parameter1 = Value1, Parameter2 = Value2)] 
```

The currently used platform names are *azure*, *mssql*, and *mysql*.

We recommend that you use the following attributes for batches in SQL scripts.

|Attribute|Description|Parameters|Examples|
|---------|-----------|----------|--------|
|Native|The script batch will be executed against the database without any changes or attempts to parse and interpret it. You can use SQL clauses that are specific to the target platform.|-|`--[mssql: Native]`|
|Skip|A script batch can be skipped when the upgrade is being executed on a specific platform.|-|`--[mysql: Skip]`|
|SmartExecute|The whole batch will be executed once for every tenant. \(Inter-tenant visibility mechanisms \(CompanyMask\) are used.\) You write your code in T-SQL, and it will be passed to the interpreter.|-|`--[SmartExecute]`|
|VmSql|The decorated script batch will be interpreted as T-SQL, and a corresponding script for the current database engine will be generated and executed on the database. The number of correctly translated clauses is a limited subset of T-SQL.|-|`--[VmSql]`|

You can create an SQL script that is executed properly on the MySQL database platform and Microsoft SQL database platform, as shown in the example below. This script contains two batches and demonstrates how to use SQL script attributes to control the execution of the batches.

```
--[mysql: Skip]
--[mssql: Native]
IF OBJECT_ID('dbo.View1', 'V') IS NOT NULL DROP VIEW [View1];
CREATE VIEW [View1] AS (SELECT TOP 10 * FROM [AccountClass] )
GO

--[mysql: Native]
--[mssql: Skip]
DROP VIEW IF EXISTS `View1`;
CREATE VIEW `View1` AS (SELECT * FROM `AccountClass` LIMIT 10 )
GO
```

**Parent topic:**[To Add a Custom SQL Script to a Project](../CustomizationPlatform/CG_GL_Items_DBScripts_AddingCustScript.md)

