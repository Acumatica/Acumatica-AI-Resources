# Multiple Branch Support \(BranchID, UsrBranchID\) {#_47b7beb9-5667-412c-81e2-a391a3976d02 .concept}

Acumatica ERP supports multibranch functionality. For details about which data is shared between branches and which data is isolated, see [Multiple Branch Support](../UserGuide/CS__con_Multiple_Branch_Support.md).

## Multibranch Support { .section}

Multiple branch support is turned on or off for each particular table individually. To turn on multibranch support for a table, add the `BranchID` or `UsrBranchID` column to it \(see the column parameters in the table below\) and declare the `BranchID` or `UsrBranchID` field in the corresponding data access class. For any table that contains the `BranchID` or `UsrBranchID` column, the framework automatically includes the `BranchID` condition in `Where` clauses. If a table does not have the `BranchID` or `UsrBranchID` column, all data from the table is fully accessible to all branches of the tenant.

|Database Column Name|Data Type \(SQL Server\)|Data Type \(MySQL\)|Type Attribute on the Data Field|
|--------------------|------------------------|-------------------|--------------------------------|
|`BranchID` or `UsrBranchID`|`int`|`INT`|`[Branch]`, `[BranchOfOrganization]`, or `[PXDBInt]`|

**Note:** The Branch and BranchOfOrganization attributes provide additional functionality, such as the assignment of the default value of the field and the verification of the field value, while with the PXDBInt attribute, you need to implement all this functionality on your own.

**Parent topic:**[Designing the Database Structure and DACs](../StudioDeveloperGuide/DA__mng_Designing_Database_Structure.md)

