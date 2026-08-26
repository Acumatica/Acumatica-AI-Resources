# Migration of Unreconciled Payments: General Information {#_ca0c7823-c48c-46a8-b809-6f718db781e6 .concept}

If you are reconciling an account from a financial institution, you compare its statement to the transactions of the cash account as tracked in your system. Regular reconciliations can reduce the number of errors on accounts and make it easier to find overlooked transactions, such as missing payments or checks that have not been deposited or cashed. After the initial balances have been imported into the system, you need to import outstanding checks and deposits in progress and perform an initial reconciliation for the cash accounts.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Import the outstanding checks and deposits in transit into the system
-   Create a first reconciliation statement

## Applicable Scenarios { .section}

You import unreconciled payments during the data migration process to prepare the system for bank reconciliation to be performed before the beginning of Acumatica ERP usage. Then you match the balances in the company’s accounting records for a cash account to the corresponding information on a bank statement to perform the first bank reconciliation.

## Creation of GL Transaction with Unreconciled Payments {#section_vv2_1y4_y4b .section}

The initial balance of the cash accounts is imported into the system with the trial balance import procedure. When you import payments with open balances in migration mode, these payments affect neither cash account balances nor account balances in the general ledger. If you are planning to perform bank reconciliation, you must post general ledger transactions for all unreconciled checks and deposits so that these GL transactions posted to the bank account will be available for further reconciliation.

To create a journal transaction with the outstanding checks and the deposits in transit, you should add the following lines:

-   A line that credits the cash account with its GL balance
-   A line that debits the cash account with the cash account balance from the bank statement
-   A line or lines that credit the cash account with the outstanding checks
-   A line or lines that debit the cash account with the deposits in transit

If you have added all outstanding checks and deposits in transit, in the resulting GL transaction, **Debit Total** must be equal to **Credit Total**.

## Steps of the Reconciliation Process {#section_k12_kjv_vxb .section}

Reconciliation generally has the following goals:

-   To find discrepancies between account balances that have been tracked by different means \(by your company in Acumatica ERP, and by a third-party financial institution through its software\)
-   To identify any errors
-   To make the needed corrections or adjustments

After you import the cash account balances and outstanding payments, you perform the first bank reconciliation in the system. In general, you perform the following steps when you reconcile a cash account:

1.  *Preparing for the reconciliation*: During or after each financial period, on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, you clear transactions for the account as you receive information that the financial institution has processed them. For details, see [Bank Reconciliation: Uploading and Processing of Bank Transactions](Finance_Bank_Reconciliation_Preparation.md).
2.  *Verifying the beginning balance of the cash account*: At the end of the financial period, on the [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) form, you verify that the beginning balance of the cash account in Acumatica ERP matches the beginning balance on the bank statement \(or on your record of the petty cash account\); if they do not match, you void the earlier statement and fix all errors. Also, you can review unreconciled transactions from previous financial periods and see which of them have been preliminarily cleared.

    **Attention:** If a transaction has been matched to an entry on a bank statement on the [Process Bank Transactions](CA_30_60_00.md) form, the **Cleared** check box is selected for the transaction on the [Reconciliation Statements](CA_30_20_00.md) form. Also, a transaction is cleared if a user has selected the **Cleared** check box for it on the form where the transaction was entered.

3.  *Creating the reconciliation statement*: You create a new reconciliation statement for the cash account on the [Reconciliation Statements](CA_30_20_00.md) form and enter the statement balance—for instance, the ending balance from the bank statement.
4.  *Clearing the transactions*: If you have used the [Process Bank Transactions](CA_30_60_00.md) form to clear bank transactions, on the [Reconciliation Statements](CA_30_20_00.md) form, you click the **Reconcile Processed** button on the table toolbar, and the system selects the **Reconciled** check boxes in the table for all released documents that were processed on the [Process Bank Transactions](CA_30_60_00.md) form.

    If you have been manually clearing transactions during the financial period for which you have created the reconciliation statement and are sure that the clearing is valid, you select the **Reconciled** check box for each cleared transaction.

    If no transactions have been cleared, by using a bank statement or other paper documents confirming transactions, you compare the transactions to the lines of the bank statement by using transaction identifiers, dates, and amounts. For each confirmed transaction, you select the **Reconciled** check box.

    **Tip:** You can perform reconciliation in as many sessions as you need. You can save the reconciliation statement at any time to continue to work with it later.

5.  *Adjusting the cash account balance*: As you progress through the list on the [Reconciliation Statements](CA_30_20_00.md) form, you can view the updated value of the difference between the reconciled balance of the cash account and the balance of the statement you have entered. You can create cash adjustments for transactions \(such as bank interest or service charges\) that have occurred but were not recorded to the account in Acumatica ERP. The reconciliation is finished when the difference between the reconciled balance of the cash account and the balance of the statement is 0.
6.  *Confirming the reconciliation results*: When you have finished comparing the cash account transactions to a bank statement on the [Reconciliation Statements](CA_30_20_00.md) form and the reconciled balance of the cash account is the same as the balance of the statement, you save the reconciliation statement. You can now release the reconciliation statement, which confirms that the cash account balance is reconciled for the financial period.

**Tip:** If you need to learn about bank reconciliation that is performed on a regular basis, see the topics of the [Performing Bank Reconciliation](Finance_Bank_Reconciliation_Mapref.md) chapter.

**Parent topic:**[Importing Unreconciled Payments](../UserGuide/DataMigration_Import_Unreconciled_Payments_Mapref.md)

