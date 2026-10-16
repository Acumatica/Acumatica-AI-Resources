# Project Transaction Reclassification: Impact of Allocation Rules

When you reclassify a project transaction to another project or project task, the transactions can be affected by the allocation rules of the target project or project task.

Before reclassifying a project transaction on the [Reclassify Project Transactions](PM_50_91_00.md) \(PM509100\) form, make sure that the allocation rule applied to the target project or project task can process the reclassified transaction. For example, the account group specified for the project transaction must be included in the allocation rule. Otherwise, the project transaction may remain unallocated after reclassification.

If *Post PM Transactions Only* is selected in the **Reclassification Posting** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form and the **Post Transactions to GL** check box is selected for the allocation rule on the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form, the system does not create the corresponding general ledger transactions during reclassification.

If the created target project transaction is later processed by project allocation, the resulting allocation transactions inherit the reclassification information of the source transaction. As a result, you can continue tracking reclassification and reversing transactions after allocation processing.

**Parent topic:**[Reclassifying Project Transactions](../UserGuide/Projects_Reclassifying_Project_Transactions_Mapref.md)

