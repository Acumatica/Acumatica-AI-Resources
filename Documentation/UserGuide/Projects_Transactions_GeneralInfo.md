# Project Transactions: General Information {#_c17cd111-2ac9-4e6e-a687-fa3ccdaa1e16 .concept}

Project accounting is integrated with other functional areas of Acumatica ERP. Project-related information from other functional areas flows to projects by means of project transactions that are used for tracking budget costs and revenue. You can also create project transactions directly without involving other documents.

## Learning Objectives {#section_emb_jsj_1qb .section}

In this chapter, you will learn how to do the following:

-   Capture project costs using project transactions
-   Make the system create a project transaction based on a GL transaction
-   Create a project transaction without posting to the general ledger
-   Review how the system has updated the project budget on release of the project transaction

## Applicable Scenarios { .section}

You manually create project transactions if you need to directly capture project costs without updating the general ledger. The transactions created for a project update the actual values of the project budget with the incurred expenses that you may need in one of the following cases:

-   To control the amount of money spent on the project against the budgeted values
-   To bill the customer for the incurred expenses
-   To control the project profitability

You manually create general ledger transactions for a project if you need to directly capture project costs without creating original documents \(such as bills, purchase orders, or time activities\).

## Manual Creation of Project Transactions {#section_oqd_rjs_fpb .section}

You can create a project transaction directly on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form. When you specify the **Debit Account** and **Credit Account** for the project transaction and release the transaction, the system creates the following general ledger transactions on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, based on whether the amount of the project transaction is positive or negative:

-   For a positive amount, the GL transaction debits the debit account of the project transaction and credits the credit account.
-   For a negative amount, the GL transaction credits the debit account of the project transaction and debits the credit account.

If either a debit account or a credit account is not specified in the project transaction, on the release of the transaction, the system does not generate the corresponding GL transaction.

If the *Subaccounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you must specify the debit subaccount along with the debit account \(if one is specified\); otherwise, the project transaction will not produce a general ledger transaction. Similarly, you must specify the credit subaccount along with the credit account \(if one is specified\); otherwise, the project transaction will not produce a general ledger transaction.

## Update of the Project Budget with Project Transactions { .section}

The project budget key is the combination of the project, project task, account group, inventory item, and cost code, if applicable. The system uses the project budget key to match the transaction with a project budget line. If a budget line with the same project budget key exists, the system updates the **Actual Quantity** and **Actual Amount** of the corresponding budget line. For a new project budget key that does not exist in the project budget, the system creates a new budget line. For a detailed explanation on the rules that the system uses to update or create budget lines, see [Project Transactions: Update of the Project Budget Structure](Projects_Transactions_Project_Budget_Update.md).

For each line of a project transaction on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form, the system uses the following rules to update the budget of the corresponding project:

1.  The system determines the number of lines to be updated as follows:
    -   If an account group but no credit account group is specified in the project transaction line, the system will update one project budget line.
    -   If the project transaction line has both an account group and a credit account specified, the system will update two project budget lines: the line with the project budget key that includes the account group, and the line with the project budget key that includes the credit account group.
2.  The system updates the budget as follows, depending on the type of the account group specified in the **Account Group** or **Credit Account Group** column:
    -   *Expense*: The system updates the cost budget line of the project on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.
    -   *Income*: The system updates the revenue budget line of the project on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) form.
    -   *Asset*, *Liability*, or *Off-Balance*: The system updates only the project balance on the **Balances** tab of the [Projects](PM_30_10_00.md) form; it does not update any revenue budget lines or cost budget lines of the project. The system also creates a line on the [Project Budget](PM_30_90_00.md) \(PM309000\) form.
3.  The system updates the actual amount in the project budget lines as follows:
    -   If an account group of the *Expense* or *Asset* type was specified in the **Account Group** column, the system updates the actual amount by adding the amount in the project transaction line.
    -   For an account group of the *Income* or *Liability* type that was specified in the **Account Group** column, the system updates the actual amount by subtracting the amount in the project transaction line.
    -   If an account group of the *Expense* or *Asset* type was specified in the **Credit Account Group** column, the system updates the actual amount by subtracting the amount in the project transaction line.
    -   For an account group of the *Income* or *Liability* type that was specified in the **Credit Account Group** column, the system updates the actual amount by adding the amount in the project transaction line.
4.  The system updates the actual quantities in the project budget lines as follows:
    -   For the account group that was specified in the **Account Group** column, the system updates the actual quantity by adding the quantity in the project transaction line.
    -   For the account group that was specified in the **Credit Account Group** column, the system updates the actual quantity by subtracting the quantity in the project transaction line.

**Parent topic:**[Processing Project Transactions](../UserGuide/Projects_Transactions_Mapref.md)

