# Expense Receipts with Corporate Cards: To Reconcile Bank Statement {#_30e26edd-df30-401a-b0cd-0c289ee17f2f .task}

This activity will walk you through the process of reconciliation of a bank statement.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that employees of the SweetLife Fruits &amp; Jams company used a corporate card related to the New York Bank. At the end of January, 2026, the New York Bank sent a monthly statement. Acting as SweetLife's accountant, you will reconcile this statement and process a bill for the bank in the system.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Chart of Accounts](GL_20_25_00.md#) \(GL202500\) form, the *29000 - Corporate Credit Card* account has been created.
-   On the [Cash Accounts](CA_20_20_00.md#) \(CA202000\) form, the *29000* cash account linked to the GL account has been created.
-   On the [Corporate Cards](CA_20_25_00.md#) \(CA202500\) form, the *000001 - USD Corporate Card* corporate card has been added, as described in [Corporate Cards: To Configure a Corporate Card](../ImplementationGuide/Corporate_Card_Implem_Activity_CorpCard.md).
-   On the [Vendors](AP_30_30_00.md#) \(AP303000\) form, the *NYBANK* vendor account for the New York Bank has been created.
-   On the [Entry Types](CA_20_30_00.md) \(CA203000\) form, the *BANKFEE* and *INTEREST* entry types have been created.

## Process Overview { .section}

To reconcile a bank statement, you will first import bank transactions on the [Import Bank Transactions](CA_30_65_00.md#) \(CA306500\) form. You will match the bank transactions with the transactions in the system on the [Process Bank Transactions](CA_30_60_00.md#) \(CA306000\) form. You then will reconcile the bank statement on the [Reconciliation Statements](CA_30_20_00.md#) \(CA302000\) form. Finally, you will create a bill to pay the outstanding balance to the bank on the [Bills and Adjustments](AP_30_10_00.md#) \(AP301000\) form.

## System Preparation { .section}

To prepare to perform the instructions of this activity, do the following:

1.  Download the [NewYorkBank\_CorpCard\_Transactions\_January](Files/NewYorkBank_CorpCard_Transactions_January.xlsx) file to your computer.
2.  Make sure that you have completed the [Expense Receipts with Corporate Cards: To Claim Expenses for a Project](TimeExpenses_Expense_Receipts_Process_Activity.md) activity.
3.  Launch the Acumatica ERP website, and sign in as Pam Brawner by using the *brawner* username and the *123* password.
4.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/31/2026*. If a different date is displayed, click the Business Date menu button, and select *1/31/2026* from the calendar. For simplicity, in this activity, you will create and process all documents in the system during this business date.

## Step 1: Importing Bank Transactions { .section}

To import the bank transactions, do the following:

1.  Open the [Import Bank Transactions](CA_30_65_00.md#) \(CA306500\) form, and on the form toolbar, click **Add New Record**.
2.  In the Summary area, specify the following settings:

    -   **Cash Account**: *29000 - Corporate Credit Card*
    -   **Start Balance Date**: *1/1/2026*
    -   **End Balance Date**: *1/31/2026*
    Make sure that *1/31/2026* is selected in the **Statement Date** box.

3.  On the form toolbar, click **Load Records from File** \(![](Images/activity_Projects_LoadRecordsfromFile.png)\).
4.  In the **File Upload** dialog box, which opens, select the file path to the `NewYorkBank_CorpCard_Transactions_January` file, and click **Upload**.
5.  In the **Common Settings** dialog box, which opens, leave the default settings, and click **OK**.
6.  In the **Columns** dialog box, which opens, leave the current mapping, and click **OK**.

    The system uploads transactions. Make sure that the value in the **Calculated Balance** box in the Summary area is *-58.00*.

7.  In the Summary area, specify `-58.00` in the **Ending Balance** box.
8.  Click **Save** on the form toolbar.

## Step 2: Matching Transactions in the System { .section}

To match the uploaded bank transactions with system documents, do the following:

1.  Open the [Process Bank Transactions](CA_30_60_00.md#) \(CA306000\) form.
2.  In the Summary area, select *29000 - Corporate Credit Card* in the **Cash Account** box.
3.  On the form toolbar, click **Auto-Match**.

    Notice that the system has found documents with transactions that match the bank statement transactions.

4.  On the form toolbar, click **Process**.
5.  On the [Import Bank Transactions](CA_30_65_00.md#) \(CA306500\) form, open the bank statement you have imported and notice that the transactions have been processed and matched—that is, the check boxes in the **Matched** and **Processed** columns are selected.

## Step 3: Reconciling a Bank Statement { .section}

Reconcile the bank statement as follows:

1.  Open the [Reconciliation Statements](CA_30_20_00.md#) \(CA302000\) form, and on the form toolbar, click **Add New Record**.
2.  In the **Cash Account** box, select the *29000 - Corporate Credit Card* account.
3.  In the table, for both uploaded rows, select the **Reconciled** check box.
4.  In the Summary area, in the **Statement Balance** box, specify `-33`.
5.  On the form toolbar, click **Remove Hold** to assign the statement the *Balanced* status, and then click **Release** to release the statement.

## Step 4: Paying the Outstanding Balance to the Bank { .section}

To create an accounts payable bill for the bank, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md#) \(AP301000\) form, and on the table toolbar, click **Add New Record**.
2.  In the Summary area, specify the following settings:

    -   In the **Vendor** box, select *NYBANK*.
    -   In the **Description** box, type *Bank account settlement*.
    Make sure that the bill date is *1/31/2026*.

3.  On the **Details** tab, add a row with the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Ext. Cost**: `33.00`
    -   **Account**: *29000* \(selected by default based on vendor settings\)
4.  On the form toolbar, click **Remove Hold** to assign the bill the *Balanced* status, and then click **Release** to release the bill.

You can now pay the bill and process the related documents in the system.

**Parent topic:**[Processing Expense Receipts with Corporate Cards](../UserGuide/TimeExpenses_Expense_Receipts_Mapref.md)

