# Project Transactions: GL Transactions Related to Projects {#_aabaf7b2-e15d-4803-b711-d264b685cbfb .concept}

On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, you can directly create a general ledger transaction related to a specific project and project task. To associate the transaction line with a project, you specify this project in the **Project/Contract** column and the applicable project task in the **Project Task** column.

**Attention:** If a general ledger transaction has a project and project task specified, in the **Account** column on the [Journal Transactions](GL_30_10_00.md) form, you can select only an account that is mapped to an account group on the [Account Groups](PM_20_10_00.md) \(PM201000\) form.

## Creation of Project Transaction { .section}

When a batch of GL transactions is released, for each transaction line in the batch with a project and project task specified, the system creates the corresponding project transaction with the following settings specified in a row of the table on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form:

-   **Project**: The project associated with the GL transaction
-   **Project Task**: The project task associated with the GL transaction
-   **Inventory ID**: The inventory item associated with the GL transaction

    If no item is associated with the GL transaction, the system uses the empty item code, which is *&lt;N/A&gt;* by default and specified on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.

-   **Debit Account**: The account of the GL transaction
-   **Account Group**: The account group to which the account of the GL transaction is mapped on the [Account Groups](PM_20_10_00.md) \(PM201000\) form
-   **Credit Account**: Empty
-   **GL Batch Nbr.**: The batch number of the GL transaction

**Tip:** When a transaction is generated in another functional area of Acumatica ERP—such as accounts receivable, accounts payable, order management, or time and expenses—and posted to the general ledger, the system generates the corresponding project transaction in the same way as on release of GL transactions.

## Amount and Quantity in the Project Transaction Lines { .section}

For each line of the project transaction that has been generated on release of a general ledger transaction, the system uses the following rules to specify the amount:

-   For the debit side of the GL transaction, the system specifies the actual amount in the corresponding project transaction line as follows:
    -   If the type of the GL account matches the type of the account group, then the system copies the debit amount of the GL transaction line to the project transaction line with the same sign.
    -   If the type of the GL account does not match the type of the account group, then the system copies the debit amount of the GL transaction line to the project transaction line with the reversed sign.
-   For the credit side of the GL transaction, the system specifies the actual amount in the corresponding project transaction line as follows:
    -   If the type of the GL account matches the type of the account group, then the system copies the credit amount of the GL transaction line to the project transaction line with the reversed sign.
    -   If the type of the GL account does not match the type of the account group, then the system copies the credit amount of the GL transaction line to the project transaction line with the same sign.

For each line of the project transaction that has been generated on release of a general ledger transaction, the system uses the following rules to specify the quantity:

-   If the type of the GL account matches the type of the account group, the system copies the quantity of the GL transaction line to the project transaction line with the same sign.
-   If the type of the GL account does not match the type of the account group, the system copies the quantity of the GL transaction line to the project transaction line with the reversed sign.

**Parent topic:**[Processing Project Transactions](../UserGuide/Projects_Transactions_Mapref.md)

