# To Import a Trial Balance {#_9703c4ff-a6b5-4730-acf7-34f732c774c1 .task}

You use the [Trial Balance](GL_30_30_10.md) \(GL303010\) form to import the trial balance file to Acumatica ERP.

## Before You Proceed {#section_a4g_mjv_vxb .section}

Before importing trial balances, make sure of the following:

-   The CSV or Excel file is correctly prepared for importing trial balance data in the system. For details, see [Preparation for Importing Trial Balances](GL__con_Import_of_Trial_Balances.md).
-   The chart of accounts is configured on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, and all the accounts for which data may be imported have been defined in Acumatica ERP.
-   If the trial balance file to be imported contains subaccounts, the *Subaccounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. Also, subaccounts have to be configured in the system as described in [Managing Subaccounts](GL__CON_Optional_Configuration.md#_5ffd7bb4-b7ad-4246-8085-6983f76e9927).
-   On the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, in the **Sign of the Trial Balance** box, the selected option \(*Normal* or *Reversed*\) corresponds to the balances that you are going to import.

## To Import the Trial Balance {#section_c4g_mjv_vxb .section}

1.  Open the [Trial Balance](../Shared/../UserGuide/GL_30_30_10.md) \(GL303010\) form.
2.  In the **Import Date** box, specify the date of the import.

    The system automatically fills in the **Period** box with the period of the current business date. You can change it if necessary.

3.  In the **Company/Branch** box, select the company or a branch of the organization whose trial balance is to be imported.
4.  In the **Ledger** box, select the ledger to which the imported data should be posted.
5.  On the **Transaction Details** tab, perform the following steps to prepare for the import:
    1.  On the table toolbar, click **Load Records from File**.
    2.  In the **File Upload** dialog box, select the prepared file, and click **Upload**.
    3.  In the **Common Settings** dialog box, do the following, and click **OK**:
        -   In the **Null Value** box, type the character that is used as the null value in the source file, or leave this box empty.
        -   In the **Culture** box, select the locale in which the data is presented in the source file.
        -   In the **Mode** box, select the *Insert All Records* option to add all rows from the file to the table.
    4.  In the **Columns** dialog box, for each of the columns in your file, select the appropriate property name; click **OK**.

        The records are exported from the file to the table area of the tab.

    5.  On the table toolbar, select the *Validate* action, and do one of the following:
        -   To validate all records in the list, click **Process All**.
        -   To validate particular accounts, in the table, select the unlabeled check box next to an imported record or multiple records that you want to validate, and click **Process**.
    6.  If there are accounts or subaccounts with the *Error* status, map them manually to the corresponding internal accounts or subaccounts.
    7.  If there are accounts or subaccounts with the *Duplicate* status, on the table toolbar, select the *Merge Duplicate* action, and click **Process** \(after first selecting the unlabeled check boxes in the rows of the duplicate accounts or subaccounts\) or **Process All** \(if all rows are duplicates\).
6.  Review the records on the **Exceptions** tab. This tab displays the list of accounts and subaccounts \(with their balances\) that currently exist in the ledger for the period you are importing the trial balance for and that are not present in the data being imported. If there are accounts, make sure the balance of these accounts should be zero for the period you are importing the trial balance for.
7.  In the Summary area, check the **Debit Total** and **Credit Total** amounts, and if required, in the **Control Total** box, enter the control amount to be used to validate the total amount of the balance to be imported. This amount is equal to the total of the balances of the assets and expenses \(which should be equal to the total of the liabilities and income\).
8.  On the form toolbar, click **Remove Hold**.
9.  On the form toolbar, click **Save**, and then click **Release**.
10. In the **Batch Number** box, click the number of the batch that was generated for the imported trial balance when you released it.

    The [Journal Transactions](../Shared/../UserGuide/GL_30_10_00.md) \(GL301000\) form opens with the generated batch.

11. Release and post the batch, as described in [Processing Transactions](../Shared/../UserGuide/Finance_Processing_Batch_Mapref.md).

## Notes About the Procedure {#section_d4g_mjv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following general recommendation: If you are going to import the trial balance for more than one financial period, you have to import the trial balances one by one, and release and post each generated batch before you import the trial balance for the next period. The steps must be completed in this order because the system generates journal entries in the amount of the difference between the ending balance of the specified period in the system and in the imported balance.

Note the following about the Summary area of the form:

-   The **Company/Branch** box appears on the form only if the *Multibranch Support* and *Multicompany Support* features are enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.
-   The **Control Total** box is available only if the **Validate Batch Control Totals on Entry** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

About the **Exceptions** tab of the form, note that if you perform periodic imports and the target ledger contains records, this tab displays the list of accounts and subaccounts \(with their balances\) that currently exist in the ledger for the period you are importing the trial balance for and that are not present in the data being imported.

**Parent topic:**[Importing Financial Data](../UserGuide/GL__GL_Importing_Data.md)

