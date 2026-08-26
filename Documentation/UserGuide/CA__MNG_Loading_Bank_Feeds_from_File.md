# Loading of Bank Feeds from a File {#_5369b15a-b719-4a55-b719-85f0ebd319af .concept}

To configure the system for loading of bank feeds from a file, the following configuration steps should be performed:

1.  The bank creates a Secure File Transfer Protocol \(SFTP\) folder and provides read-only access to it.
2.  An administrative user sets up a bank feed on the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, specifying the login, the password, and the SFTP folder as the URL.
3.  On the [Bank Feeds](CA_20_55_00.md) form, the administrative user sets up the mapping between the fields of the incoming file and the fields of a bank feed transaction in Acumatica ERP.
4.  The bank then exports the transactions to a file and places the file in the SFTP folder.
5.  Acumatica ERP detects the new file and extracts transactions from it. The system then performs the following steps automatically:
    -   On the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form, creates bank transactions for the cash account that is specified in the bank feed settings
    -   Detects duplicate transactions by transaction ID from the *Ext. Tran ID* field and omits their creation
    -   Creates expense receipts for the corporate card and employee that are specified in the bank feed settings and matches them to a respective bank transaction

## Bank Feed Setup { .section}

To set up a bank feed for loading bank statements from a file, you perform the following general steps:

1.  On the [Activate License](SM_20_15_10.md) \(SM201510\) form, you activate the license that supports the functionality of loading bank feeds from a file.
2.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you enable the *Bank Feed Integration* feature.
3.  On the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, you create a bank feed and select *File* in the **Bank Feed Type** box. For details, see [To Set Up Bank Feeds Loaded from a CSV File](CA__HOW_Set_Up_BankFeeds_from_File.md).

    You can now select this bank feed and load transactions from a file on the [Retrieve Bank Feed Transactions](CA_50_75_00.md) \(CA507500\) form.


## Bank Feed Statuses { .section}

A bank feed with the *File* type can have one of the following statuses on the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form:

-   *Setup Required*: This status is assigned to a bank feed when the bank feed is created. Also, this status is assigned if some bank feed settings are removed in an active or suspended bank feed.
-   *Active*: This status is assigned to a bank feed when you click **Activate** on the More menu and all of the following conditions are met for the bank feed:

    -   In the **Connection to Source File** section of the **Source File** tab, the URL, login, and password are specified.
    -   In the **Mapping Rules** table of the **Source File** tab, mapping rules are set up for all the required rows \(those that have the **Active** check box selected\).
    -   On the **Cash Accounts** tab, at least one line has been added with both the **Account Name** column and the **Cash Account** column filled in.
    Only bank feeds with this status can be processed on the [Retrieve Bank Feed Transactions](CA_50_75_00.md) \(CA507500\) form.

-   *Suspended*: This status is assigned to a bank feed when you click **Suspend** on the More menu.

## Transaction Loading in Test Mode { .section}

To load transactions in test mode from a file for a bank feed with the *File* type, you perform the following actions on the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form:

1.  On the More menu, click **Load Transactions in Test Mode**.

    The system fetches a list of files available in the specified SFTP folder with the specified format. These files are shown in the drop-down list in the **File with Transactions** box.

2.  In the **Load Transactions in Test Mode** dialog box, which is opened, select the needed file in the **File with Transactions** box.
3.  In the dialog box, click **Load Transactions**.

    The system loads transactions to the table according to the mapping rules specified on the **Source File** tab.


## Manual File Loading { .section}

You can manually select a file from a specified SFTP folder and load it, regardless of whether it was processed before. To load a file, you perform the following steps on the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form:

1.  On the More menu, you click **Load File Manually**.

    The system fetches a list of files available in the specified SFTP folder with the specified format. These files are shown in the drop-down list in the **File with Transactions** box.

2.  In the **Load File Manually** dialog box, which is opened, you select the needed file in the **File with Transactions** box.
3.  Optional: You select the **Create Transactions Before Import Transactions From Date** check box. If the check box is selected, the system will create transactions regardless of the **Import Transactions From Date** specified for the cash account on the **Cash Accounts** tab, but it will continue to omit duplicates by using the transaction ID \(**Ext. Tran. ID**\).
4.  In the dialog box, you click **Load**. The system creates bank transactions and expense receipts if the **Create Expense Receipts** check box is selected. The system then performs the steps described in the next section.

## Loading of Bank Feed Transactions {#_1442a076-566f-49e3-8ecd-efac396c63fe .section}

When you select a bank feed and click **Process** on the toolbar of the [Retrieve Bank Feed Transactions](CA_50_75_00.md) \(CA507500\) form, the system does the following:

1.  Verifies that the status of the bank feed is active.
2.  Detects new unprocessed previously files in the SFTP folder.
3.  Pulls the new files into Acumatica ERP and parses them to create bank transactions by using the mapping from the **Mapping Rules** section of the **Source File** tab on the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form.
4.  Applies the mapping of bank accounts to the cash accounts listed on the **Cash Accounts** tab of the [Bank Feeds](CA_20_55_00.md) form, and determines the cash account for which transactions should be created and the transactions' dates.
5.  Applies the corporate cards from the **Corporate Cards** tab and determines the card for which employee expense receipts must be created or updated, as well as the receipts' dates.
6.  Creates transactions and expense receipts by using the current **Import Transactions From** date and bank transaction ID to avoid the duplication of transactions. \(Transactions dated earlier than this date are not created.\)

The imported transactions are displayed on the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form. If you click **Process Transactions** on the form toolbar, the system navigates to the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, where you can proceed to matching the transactions and creating new transactions in the system. For details, see [To Load Bank Transactions from a File](CA__HOW_Load_BankFeeds_from_File.md).

## Creation of Expense Receipts { .section}

To cause the system to create expense receipts, you must select the **Create Expense Receipts** check box in the Summary area of the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form. On the **Corporate Cards** and **Expense Items** tabs, which appear on the form, you specify the needed settings.

The **Create Expense Receipts for Pending Transactions** check box does not appear for bank feeds with the *File* type because source files contain only posted transactions. For more details about the creation of expense receipts, see [Processing Expense Receipts with Corporate Cards](TimeExpenses_Expense_Receipts_Mapref.md).

**Parent topic:**[Integrating Acumatica ERP with Bank Feeds](../UserGuide/CA__MNG_Bank_Feed_Integration.md)

