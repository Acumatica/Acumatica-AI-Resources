# Project Transaction Reclassification: Requirements and Limitations

This topic describes the requirements and limitations for project transaction reclassification, including user access requirements and project transaction eligibility.

**Attention:** The ability to perform project transaction reclassification is granted to only users with any of the following predefined roles assigned to them on the [User Roles](SM_20_10_05.md) \(SM201005\) form:

-   *Administrator*
-   *Acumatica Support*
-   *PM Financial Controller*
-   *Project Accountant*

## Project Transaction Eligibility

The project transactions must meet all of the following conditions to be loaded on the [Reclassify Project Transactions](PM_50_91_00.md) \(PM509100\) form:

-   The transaction originates from the projects \(PM\) or general ledger \(GL\) module—that is, functional area of the system.
-   The transaction is associated with an active project and project task.
-   The transaction is released.
-   The transaction and any transaction generated from it \(including transaction copies, allocation transactions, and copies of allocation transactions\) have not been billed.

The following transactions are not eligible for reclassification and therefore cannot be loaded on the [Reclassify Project Transactions](PM_50_91_00.md) form:

-   Project transactions that are excluded from billing
-   Allocation transactions
-   Reversed transactions

**Parent topic:**[Reclassifying Project Transactions](../UserGuide/Projects_Reclassifying_Project_Transactions_Mapref.md)

