# To Set Up Bank Feeds Loaded from an AMEX GL1025 File {#_2320685a-0595-4ba6-8012-877b8a87e06c .task}

You use the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form to set up bank feeds that load bank transactions from an AMEX GL1025 file. On the same form, you connect to the SFTP folder where source files are stored and specify the mapping between the optional fields of the source file and the settings in Acumatica ERP.

## Before You Proceed { .section}

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, make sure that the *Bank Feed Integration* and *AMEX GL1025 File Import for Bank Feeds* features are enabled.
-   On the [Activate License](SM_20_15_10.md) \(SM201510\) form, make sure that the needed license is activated.

## To Set Up a Bank Feed { .section}

1.  On the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Bank Feed ID**: A unique ID that identifies the bank feed
    -   **Bank Feed Type**: *File*
    -   **Import Start Date**: The date starting from which you want to import bank transactions to the system
    -   **Description**: A description of the bank feed
    -   **Financial Institution**: The name of the bank that will provide source files with transactions
3.  Go to the **Source File** tab and specify the following settings in the **Connection to Source File** section:
    -   **URL**: The path to the SFTP folder, such as `sftp://AMEX/Doc`.
    -   **File Format**: *AMEX GL1025 \(.csv\)* or *AMEX GL1025 \(.txt\)*.
    -   **Login**: The current user's login to the SFTP folder. This value is provided either by the bank or by your organization.
    -   **Password**: The current user's password to the SFTP folder.

        **Attention:** You must specify either a password or the SSH private key.

    -   **SSH Private Key**: The private Secure Shell \(SSH\) key created on the [Encryption Certificates](SM_20_05_30.md) \(SM200530\) form, which will be used for SFTP authentication.
    -   **File Name** \(optional\): The mask for the file name.
    -   **Use Wildcards \(\*, ?\)** \(optional\): Selected if you want to use wildcards in the file name.
4.  Click **Test Connection**.

    The system verifies the connection to the SFTP folder.

5.  In the **Source File** section, click **Set Up Data Provider**.

    In the **Data Provider** box, the system automatically inserts the name of the created data provider.

6.  Optional: In the **Mapping Rules** section, enter the mapping rules between the source file and Acumatica ERP.

    The settings for which the **Active** check box is selected and unavailable are required. You cannot clear the **Active** check box, but you can change the mapping rules for required boxes.

    Other settings are optional. You can modify the mapping rules for optional settings too.

7.  Go to the **Cash Accounts** tab and click **Add Row** on the table toolbar. Specify the following settings in the added row:

    -   **Account Name**: The account name as it is specified in the source file.
    -   **Cash Account**: The cash account in Acumatica ERP that will be mapped to the bank account.
    -   **Statement Period**: The bank statement period required by the bank—for example, *Month*.
    -   **Statement Start Day**: The start date of the bank statement required by the bank—for example, *1*.
    -   **Import Transactions From**: The date starting on which transactions for the cash account will be imported. \(This date is inserted automatically by the system and read-only.\)

        This column is filled in with the latest of the following dates:

        -   The **Import Start Date** in the Summary area.
        -   The transaction date of the most recent bank transaction received through the file bank feed for the selected cash account. This date is specified in the **Tran. Date** column on the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\).
        -   The transaction date of the most recent bank transaction for the selected cash account received from a source other than the *File* bank feed—for example, entered manually or loaded from a Plaid or MX feed or from an OFX file. This date is one day after the date specified in the **Tran. Date** column on the [Import Bank Transactions](CA_30_65_00.md)form.
    -   **Currency**: *USD*.
    Repeat this instruction for each bank account and cash account that you want to map.

    **Tip:** You can click **Load Transactions in Test Mode** on the More menu to review the exact bank account names in the file located in the specified SFTP folder.

8.  Click **Save** to save your settings.
9.  If needed, select the **Create Expense Receipts** check box in the Summary area and specify the settings on the two additional tabs: **Corporate Cards** and **Expense Items**.
10. On the form toolbar, click **Activate** to activate the bank feed, which changes its status to *Active*.

    You can process this bank feed on the [Retrieve Bank Feed Transactions](CA_50_75_00.md) \(CA507500\) form. For details, see [To Load Bank Transactions from a File](CA__HOW_Load_BankFeeds_from_File.md).


**Parent topic:**[Integrating Acumatica ERP with Bank Feeds](../UserGuide/CA__MNG_Bank_Feed_Integration.md)

