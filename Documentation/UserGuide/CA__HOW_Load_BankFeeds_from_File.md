# To Load Bank Transactions from a File {#_3cfd9024-123f-4c3d-8e23-32484b808756 .task}

You use the [Retrieve Bank Feed Transactions](CA_50_75_00.md) \(CA507500\) form to load bank transactions from a file. Alternatively, you can use the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) or [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form. You can load transactions for a bank feed that has the *Active* status.

## To Load Bank Transactions on the Retrieve Bank Feed Transactions Form { .section}

To use the [Retrieve Bank Feed Transactions](CA_50_75_00.md) \(CA507500\) form as a starting point for loading bank transactions, do the following:

1.  Open the [Retrieve Bank Feed Transactions](CA_50_75_00.md) form.
2.  In the table, select the unlabeled check box for the needed bank feed, and click **Process** on the form toolbar.

    The system loads the bank transactions from the specified bank feed.

3.  Open the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form, and select the reference number of the imported document for the needed cash account.
4.  On the form toolbar, click **Process Transactions**.

For details on matching bank transactions to documents in the system and creating new transactions, see [Bank Reconciliation: To Process a Bank Statement in OFX Format \(Part 1\)](Finance_Bank_Reconciliation_Activity2.md) and [Bank Reconciliation: To Process a Bank Statement in OFX Format \(Part 2\)](Finance_Bank_Reconciliation_Activity3.md).

## To Load Bank Transactions on the Import Bank Transactions Form { .section}

To use the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form as a starting point for loading bank transactions, do the following:

1.  Open the [Import Bank Transactions](CA_30_65_00.md) form.
2.  In the Summary area, select the needed cash account in the **Cash Account** box.
3.  On the form toolbar, click **Retrieve Transactions**.

    The system populates the table on the form with the transactions from the source file.

4.  On the form toolbar, click **Process Transactions**.

    The system opens the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, where you can match the transactions to documents in the system or create new documents for the transactions.

    For details on matching bank transactions to documents in the system and creating new transactions, see [Bank Reconciliation: To Process a Bank Statement in OFX Format \(Part 1\)](Finance_Bank_Reconciliation_Activity2.md) and [Bank Reconciliation: To Process a Bank Statement in OFX Format \(Part 2\)](Finance_Bank_Reconciliation_Activity3.md).


## To Load Bank Transactions on the Process Bank Transactions Form { .section}

To use the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form as a starting point for loading bank transactions, do the following:

1.  Open the [Process Bank Transactions](CA_30_60_00.md) form.
2.  In the Selection area, specify the needed cash account in the **Cash Account** box.
3.  On the form toolbar, click **Retrieve Transactions**.

    The system populates the table in the left pane with the transactions from the source file. You can match these transactions to documents in the system or create new documents for the transactions. For details, see [Bank Reconciliation: To Process a Bank Statement in OFX Format \(Part 1\)](Finance_Bank_Reconciliation_Activity2.md) and [Bank Reconciliation: To Process a Bank Statement in OFX Format \(Part 2\)](Finance_Bank_Reconciliation_Activity3.md).


## To Process Bank Transactions Loaded from a File { .section}

To process bank transactions that the system has loaded from a file, do the following:

1.  Open the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form.
2.  Select a transaction in the left pane.
3.  Match the transaction in the left pane with the needed document in the right pane.

    You can match a bank transaction to a document with the *Payment*, *Invoice*, or *Expense Receipt* type.

4.  If there are no transactions in the system that can be matched to the selected bank transaction and you need to create one, on the **Create Payment** tab, select the **Create** check box. Specify the settings for a receipt or disbursement transaction.
5.  On the form toolbar, click **Process**.

    The system creates cash transactions based on the loaded bank transactions. You can review the created transactions on the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form.


**Parent topic:**[Integrating Acumatica ERP with Bank Feeds](../UserGuide/CA__MNG_Bank_Feed_Integration.md)

