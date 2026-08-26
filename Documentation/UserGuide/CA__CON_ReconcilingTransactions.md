# Bank Reconciliation: Optional Reconciliation Operations {#_9a953704-db79-493c-9ddc-8e85b462a3aa .concept}

Reconciliation is the process of comparing the cash transactions recorded in the system to the records of the same transactions tracked by third parties or by other means. For instance, if you reconcile a bank account, you use the bank statements for comparison. To reconcile a petty cash account, you might use the cash register receipts or point-of-sale reports for reference.

In Acumatica ERP, you mark cash accounts that require reconciliation by selecting the **Requires Reconciliation** check box on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form. For details, see [Configuring Cash Accounts](CA__MNG_CashAccounts.md).

In this topic, you will read about additional operations that will help you perform the reconciliation.

## Handling Voided Transactions {#section_qb2_kjv_vxb .section}

You can indicate to the system how you want to handle voided transactions by using the **Skip Voided Transactions** check box on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form:

-   If the check box is cleared, on the [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) form, the system includes in the list of transactions both the original transaction and the voided transaction.
-   If the check box is selected, the system skips the voided transaction and doesn't include it in the reconciliation statement. The system shows only the original transaction with the *Voided* status and the amount of 0.00.

**Attention:** If a payment is released and reconciled at the end of a financial period and then the payment is voided in the next financial period, the system does not change the released reconciliation statement and does not skip the voided payment during reconciliation.

When you save a reconciliation statement for the first time and the system assigns the reference number to it, the state of the **Skip Voided Transactions** check box at this moment is preserved by the system for this statement. If you change the state of the check box after saving the statement for the first time, the system will display the **Voided Transactions Are Skipped** check box on the [Reconciliation Statements](CA_30_20_00.md) form. This check box reflects the state of **Skip Voided Transactions** at the moment when the statement was first saved. The system will handle voided transactions as this setting indicates.

**Tip:** If you want the system to handle the voided transactions the other way \(that is, with the check box selected if it was cleared or cleared if it was selected\):

1.  Delete the saved reconciliation statement.
2.  Adjust the state of the **Skip Voided Transactions** check box.
3.  Create a new reconciliation statement.

## Voiding of a Reconciliation Statement {#section_wb2_kjv_vxb .section}

Only one open reconciliation statement on the [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) form is allowed for each cash account. If you find an error in an earlier statement for a cash account, delete the open statement \(which is not released\), locate the last released statement, and void it. Voiding the statement removes the reconciliation marks from the documents and makes the documents available again for proper reconciliation. Note that voiding doesn't change the status of the documents that were created during the reconciliation process.

**Tip:** You can void a reconciliation statement that is incorrect. However, you can void and correct only the last reconciliation statement in a sequence of reconciliation statements. To correct an old reconciliation statement, you have to void all reconciliation statements that have been released after the needed one. For example, if it is necessary to correct the March reconciliation statement after the April reconciliation statement has been released, you have to void both the March statement and the April statement, correct and release the March reconciliation, and redo the April reconciliation. When you void a reconciliation statement, the transactions still have the **Cleared** check box selected. You can review the history of reconciliations for a specific cash account on the [Reconciliation Statement History](CA_30_20_10.md) \(CA302010\) form.

**Parent topic:**[Performing Bank Reconciliation](../UserGuide/Finance_Bank_Reconciliation_Mapref.md)

