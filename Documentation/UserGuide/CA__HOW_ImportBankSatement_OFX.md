# To Import a Bank Statement in OFX, QBO, and QFX Formats {#_c2cf7465-1cf2-42af-91b2-1769c9516af0 .task}

If you have bank transactions in a file in OFX, QBO, or QFX format, you can import these transactions by clicking the **Upload File** button on the form toolbar of the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form. During file uploading, the system creates a statement for each bank account listed in the file.

**Note:** You can also perform this procedure by clicking the **Upload File** button on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form.

This procedure describes how to import bank transactions from an OFX, QBO, or QFX file.

## Before You Proceed {#section_upd_kjv_vxb .section}

Make sure that the *PX.Objects.CA.OFXStatementReader* import service is specified in the **Statement Import Service** box; the location of this box depends on whether the **Import Bank Statements to Single Cash Account** check box, located on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form, is selected:

-   Selected: The import service is specified on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form for each cash account for which you will import statements in one of these formats.
-   Cleared: The import service is specified on the **Bank Statements** tab of the [Cash Management Preferences](CA_10_10_00.md) form.

Also, make sure that the bank account identifier specified in the file is associated with the appropriate cash accounts in the system. That is, for the cash account for which you want to upload transactions, specify the bank account identifier in the **External Ref. Number** box on the [Cash Accounts](CA_20_20_00.md) form. For instance, you can find the bank account identifier in the OFX file under the &lt;ACCID&gt; tag.

**Tip:** If you forget to specify the bank account identifier in the cash account settings and try to upload transactions, the system gives you a warning. The warning contains the bank account identifier from the file, which you can copy and paste to the settings for the cash account. You can then try to upload the file again.

## To Import the Bank Statement {#section_ypd_kjv_vxb .section}

1.  Open the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form.
2.  Click **Upload File** on the from toolbar. The **Statement File Upload** dialog box is displayed.
3.  In the dialog box, make sure that the **Upload file** option is selected.
4.  By using the **Choose File** box, select the file with the statement. Click **Upload** to upload the file and close the dialog box.
5.  Review statement details in the Summary area of the form and the list of imported transactions in the table.
6.  Click **Save** on the form toolbar.

    The system generates a reference number for the list of uploaded transactions in accordance with the numbering sequence assigned to bank statements on the [Cash Management Preferences](CA_10_10_00.md) form.

    **Note:** The procedure is similar if you use the [Process Bank Transactions](CA_30_60_00.md) form to import the bank statement.


You can review the list of imported transactions and manually edit transaction details. You can then process the imported transactions by using the [Process Bank Transactions](CA_30_60_00.md) form. For details, see [Processing Imported Transactions](CA__CON_ProcessingImportTrans.md).

**Parent topic:**[Importing Transactions](../UserGuide/CA__CON_ImportBankTrans.md)

