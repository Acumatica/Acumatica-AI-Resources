# To Import a Bank Statement in Excel {#_b8242f36-4c6b-4f93-a3e1-da72ae84629c .task}

If you have an Excel file with a single statement, on the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form, you can import the bank transactions for this statement by clicking the **Load Records from File** standard button on the table toolbar.

This procedure describes how to import a single bank statement from a Microsoft Excel file directly into the table of this form.

**Tip:** If you have an Excel file that holds multiple statements, you can import these statements by using a scenario based on the built-in data provider for Excel files. To create this scenario, you use the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form. You can adjust the sample scenario for importing bank statements, which is available with the demo data supplied with Acumatica ERP.

## To Import the Bank Statement {#section_ard_kjv_vxb .section}

1.  Open the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form.
2.  In the **Cash Account** box, select the bank account for which you want to import the statement.
3.  In the **Statement Date** box, either leave the current business date or select another date.
4.  In the **Start Balance Date** box, select the earliest date among the dates of the unreconciled documents.
5.  In the **End Balance Date** box, select the latest date among the dates of the documents listed on the bank statement.
6.  In the **Beginning Balance** box, specify the balance of the account on the start date.
7.  In the **Ending Balance** box, specify the balance of the account on the end date.
8.  On the form toolbar, click **Save**.

    The system creates a blank statement and generates a reference number for it in accordance with the numbering sequence assigned to bank statements on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form.

9.  On the table toolbar, click **Load Records from File**. The **File Upload** dialog box is displayed.
10. In the dialog box, by using the **File Path** box, select the file with the statement. Click **Upload** to upload the file and close the dialog box.
11. In the dialog boxes that the system brings up sequentially, proceed as follows:
    1.  In the **Common Settings** dialog box, in the **Null Value** box, type the character that is used as the null value in the source file.
    2.  In the **Culture** box, select the locale in which the data is presented in the source file. Click **OK** in the dialog box.
    3.  In the **Columns** dialog box that appears, perform mapping of the columns of the source file \(the left column\) to the columns available on the [Import Bank Transactions](CA_30_65_00.md) form. Click **OK** to close the dialog box and complete the import.
12. On the form toolbar, click **Save**.

In the table, you can review the list of imported transactions and manually edit transaction details. You can then process the imported transactions by using the [Process Bank Transactions](CA_30_60_00.md) form. For details, see [Processing Imported Transactions](CA__CON_ProcessingImportTrans.md).

**Parent topic:**[Importing Transactions](../UserGuide/CA__CON_ImportBankTrans.md)

