# Naming Conventions for Tables \(DACs\) and Columns \(Fields\) {#_74ee714c-b70a-4f67-8647-329c5b774b2c .concept}

In this topic, you can learn how you should name the following:

-   The tables and columns in a database that is used by an Acumatica Framework-based application
-   The respective data access classes \(DACs\) and their fields in the code of the application

## General Naming Conventions { .section}

When you are assigning names to tables, DACs, columns, and fields and developing naming conventions, you should consider the following suggestions:

-   Make sure that table and column names are valid C\# identifiers, because these names match the names of the DACs and their fields that you declare in the application. Do not start a table or column name with a digit.
-   Do not use the underscore symbol \(\_\) in a table or column name, because it is a reserved symbol in Acumatica Framework. For example, `TenantType` is a valid column name, while `Tenant_Type` is invalid.
-   Use a singular noun for a table name. Typically, a table is mapped to a data access class that represents the entity. For instance, the `SOShipment` table contains data records that represent instances of the SOShipment entity.

    **Note:** Acumatica Framework generates SQL statements with table and column names in the letter case \(that is, uppercase or lowercase\) in which the corresponding data access classes and fields are declared in the application. Also, the Customization Project Editor produces data access class declarations in the same letter case as is used for the tables and columns in the database schema.

-   Use two prefixes in each table name: a two-letter prefix that represents the functional area, and then a two-letter application module prefix. The prefix for the functional area may represent an area that exists in Acumatica ERP \(such as *AR*, *CR*, or *IN*\) or may be a prefix that you have introduced for a custom functional area. For example, the `RSSVAppointment` table can be used for a custom functional area called Repair Services \(which corresponds to the *RS* prefix\) in the Services \(SV\) module. These prefixes help you to distinguish your application tables from Acumatica ERP tables and tables of other vendors if you create an add-on project or extension library.
-   If you add a column to an Acumatica ERP table, start the column name with the *Usr* prefix so that the column will be preserved during upgrades. For instance, you could use `UsrColumn`. In your own application tables, you do not need to start column names with any prefixes.
-   Be sure that custom indexes for Acumatica ERP tables start with the *Usr* prefix so that the indexes will be preserved during upgrades.
-   Be sure that the length of a DAC name, including all namespaces, does not exceed 255 symbols.
-   Use only English letters for DAC names.

## Column and Field Naming Conventions { .section}

We recommend that you use the following suffixes in column names and the corresponding field names:

-   *ID* for surrogate keys, including database identity columns, such as `CustomerID`
-   *CD* for natural keys, such as `CustomerCD`
-   *Nbr* for numbering identifiers, such as `OrderNbr`
-   *Price* for prices, such as `UnitPrice`
-   *Cost* for costs, such as `UnitCost`
-   *Amt* for amounts, such as `FreightAmt`
-   *Total* for totals, such as `OrderTotal`
-   *Qty*, *QtyMin*, and *QtyMax* for quantities, such as `OrderQty`
-   *Date* for dates, such as `OrderDate`
-   *Time* for time points and time spans, such as `BillableTime`
-   *Pct* for percentages, such as `DiscountPct`

## Reserved Prefixes for Column and Field Names { .section}

Certain prefixes for column and field names are forbidden because they are reserved for identity key fields. For example, the use of the `Company` prefix for a column name, which should be used only for a column that represents an identity key field \(such as CompanyID and CompanyMask, as described in the following section\). This means that you cannot have any other column with the `Company` prefix in your table.

## Reserved Column and Field Names { .section}

In Acumatica ERP, particular column and field names are reserved for system use, such as the following:

-   CreatedByID, LastModifiedByID, and other audit fields: For the full list of these fields, see [Audit Fields](DA__con_Audit_Fields.md).
-   TStamp: For details about this field, see [Concurrent Update Control \(TStamp\)](DA__con_Concurrent_Update_Control.md).
-   NoteID: For more information about this field, see [Attachment of Additional Objects to Data Records \(NoteID\)](DA__con_Attachment_of_Objects_to_Records.md).
-   DeletedDatabaseRecord: For details about the column, see [Preservation of Deleted Records \(DeletedDatabaseRecord\)](DA__con_Preservation_of_Deleted_Records.md).
-   DatabaseRecordStatus: This column is used with the document archival functionality.
-   CompanyID and CompanyMask: These names are described in detail in [Multitenancy Support \(CompanyID, CompanyMask\)](DA__con_Multitenancy_Support.md).
-   BranchID and UsrBranchID: For more information about these fields, see [Multiple Branch Support \(BranchID, UsrBranchID\)](DA__CON_Multiple_Branch_Support.md).
-   CuryRate: This is the default field that is used by the PX.Objects.CM.CurrencyInfoAttribute attribute to show the currency rate.

**Parent topic:**[Designing the Database Structure and DACs](../StudioDeveloperGuide/DA__mng_Designing_Database_Structure.md)

