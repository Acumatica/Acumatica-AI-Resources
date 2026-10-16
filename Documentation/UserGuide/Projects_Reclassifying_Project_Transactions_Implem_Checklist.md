# Project Transaction Reclassification: Implementation Checklist

Before users begin reclassifying project transactions, you must make sure that the system has been configured properly, as described in the following table.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Projects* feature has been enabled.|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that the appropriate option has been selected in the **Reclassification Posting** box: *Post PM Transactions Only* to generate only project transactions, or *Post PM and GL Transactions* to also generate the corresponding general ledger transactions.|
|[User Roles](SM_20_10_05.md) \(SM201005\)|Make sure that each user who will reclassify project transactions is assigned the *PM Financial Controller* or *Project Accountant* role, which have the *Delete* access level to the [Reclassify Project Transactions](PM_50_91_00.md) \(PM509100\) form.|
|[GL Account Access](GL_10_40_00.md)\(GL104000\), [GL Accounts by Branch Access](GL_10_30_40.md) \(GL103040\), and [Subaccounts by Branch Access](GL_10_30_60.md) \(GL103060\)|If *Post PM and GL Transactions* is selected on the [Projects Preferences](PM_10_10_00.md) form and access restrictions are configured for accounts and subaccounts, make sure that users who will change accounts and subaccounts during reclassification have access to the applicable accounts and subaccounts.|

## Other Settings That Affect the Workflow

-   To cause the branch of the target project to be used for reclassification transactions, select *Use Project Branch* or *Use Project Branch in Lines Only* in the **Branch in Project Documents** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. To use the branch of the original project transaction, select *Ignore Project Branch*.
-   To cause the reversing and target project transactions to be posted automatically after release, select the **Automatically Post on Release** check box on the [Projects Preferences](PM_10_10_00.md) form.

## Known Process Limitations

The following transactions are not eligible for reclassification and therefore cannot be loaded on the [Reclassify Project Transactions](PM_50_91_00.md) \(PM509100\) form:

-   Project transactions that are excluded from billing
-   Allocation transactions
-   Reversed transactions

**Parent topic:**[Reclassifying Project Transactions](../UserGuide/Projects_Reclassifying_Project_Transactions_Mapref.md)

