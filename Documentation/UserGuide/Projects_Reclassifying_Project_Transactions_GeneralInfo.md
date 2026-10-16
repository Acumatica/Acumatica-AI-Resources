# Project Transaction Reclassification: General Information

Sometimes you need to correct project expenses after they have been recorded. For example, you might need to reassign project expenses to another project or project task or update transaction details for billing or project accounting purposes.

In Acumatica ERP, you can reclassify project transactions by changing the project, project task, or other transaction settings, such as the billing status, earning type, or inventory item.

## Applicable Scenarios

-   Project costs were recorded to the wrong project or project task and must be reassigned to align project budgets and billing with the actual work performed.
-   Project transaction values—such as the billable status, cost code, inventory item, or debit or credit account—must be updated to reflect changes in project accounting or billing requirements.
-   Preengagement costs were tracked separately and must be reassigned to a customer project after the engagement begins.
-   Costs for a significant change order were recorded to an existing project and must be reassigned to a new project.

## Loading Project Transactions

You start the reclassification process on the [Reclassify Project Transactions](PM_50_91_00.md) \(PM509100\) form by clicking **Load Transactions** on the form toolbar.

In the **Load Transactions** dialog box, you specify selection criteria for the transactions to be loaded to the form, such as the project, a range of project tasks, or a date range. You also specify how the system determines the reclassification date for the loaded transactions. You can use either the current business date or the source transaction date. If the selected date falls outside an accessible financial period, the system uses the first day of the first available financial period instead.

When you click **Load**, the system loads only the project transactions that are eligible for reclassification and meet the specified selection criteria. For information about transactions that can't be classified, see [Project Transaction Reclassification: Requirements and Limitations](Projects_Reclassifying_Project_Transactions_Limitations.md).

## Specifying Target Values for Reclassification

After the transactions have been loaded on the [Reclassify Project Transactions](PM_50_91_00.md) \(PM509100\) form, you review their original values and specify the values that should replace them. The original values remain available for comparison while you enter the target values in the **To** columns. Some target values are populated automatically based on your system configuration and the options you selected when loading the transactions. The reclassification date \(**To Date**\) is based on the transaction date option selected during loading, and the target branch \(**To Branch**\) is determined by the project settings and your access rights.

When you change a value in a **To** column, the unlabeled check box is automatically selected, indicating that the project transaction is selected for processing. If you later clear the unlabeled check box, the system discards the pending changes and restores the original values.

## Reclassification of Project Transactions

To start reclassification, click **Process** \(to reclassify the selected transactions\) or **Process All** on the form toolbar of the [Reclassify Project Transactions](PM_50_91_00.md) \(PM509100\) form.

During reclassification, the system creates reversing and replacement transactions so that the original project transaction is corrected while preserving an audit trail. The exact transactions that are created depend on the option selected in the **Reclassification Posting** box of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form:

-   *Post PM Transactions Only*
-   *Post PM and GL Transactions* \(default\)

If *Post PM Transactions Only* is selected, the system does the following:

-   Excludes the **original** project transaction, related copies, and allocation transactions from billing.
-   Creates and releases a **reversing** transaction that offsets the original transaction.
-   Creates and releases a **target** \(replacement\) project transaction by using the values specified in the **To...** columns. The transaction amount is the same as the original transaction amount. The target transaction is linked to the original transaction.
-   Posts the **reversing** and **target** project transactions if the **Automatically Post on Release** check box is selected on the [Projects Preferences](PM_10_10_00.md) form.

If *Post PM and GL Transactions* is selected, the system performs the same project transaction processing and also creates and releases the corresponding GL journal transactions for the **reversing** and **target** project transactions. For details, see [Project Transactions: Generated Transactions](Projects_Transactions_Transactions.md).

On the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form, you can identify reclassified and reversing transactions by using the **Reclassification Transaction** and **Reversing Transaction** check boxes.

For details about project transactions associated with projects or project tasks that use allocation rules, see [Project Transaction Reclassification: Impact of Allocation Rules](Projects_Reclassifying_Project_Transactions_Allocations.md).

## Workflow of Reclassifying Project Transactions

The following diagram shows the general process of reclassifying project transactions.


**Parent topic:**[Reclassifying Project Transactions](../UserGuide/Projects_Reclassifying_Project_Transactions_Mapref.md)

