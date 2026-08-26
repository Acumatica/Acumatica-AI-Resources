# To Set Up Bank Feeds Loaded from a CSV File {#_155354ab-696c-403f-8797-dbded1188e16 .task}

You use the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form to set up bank feeds that load bank transactions from a CSV file. On the same form, you connect to the SFTP folder where source files are stored and specify the mapping between the fields of the source file and the settings in Acumatica ERP.

In the **Amount Format** box of the [Bank Feeds](CA_20_55_00.md) form \(**Source File** tab\), you select the option that describes the format of debit and credit amounts in the source file; the bank feed is set up slightly differently depending on the result in this file. The following sections describe how to set up bank feeds that use different amount formats.

## Before You Proceed { .section}

Make sure that the *Bank Feed Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. On the [Activate License](SM_20_15_10.md) \(SM201510\) form, make sure that the needed license is activated.

## To Set Up a Bank Feed \(Debit/Credit in Same Column\) { .section}

To set up a bank feed that loads a source file with the *Debit/Credit in Same Column* amount format, do the following:

1.  On the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Bank Feed ID**: A unique ID that identifies the bank feed
    -   **Bank Feed Type**: *File*
    -   **Import Start Date**: The date starting from which you want to import bank transactions to the system
    -   **Description**: A description of the bank feed
    -   **Financial Institution**: The name of the bank that will provide source files with transactions
3.  Go to the **Source File** tab, and specify the following settings in the **Connection to Source File** section:
    -   **URL**: The path to the SFTP folder, such as `sftp://FirstBankSFTP`.
    -   **File Format**: *CSV \(Comma-Separated Values\)* \(inserted by default\).
    -   **Login**: The current user's login to the SFTP folder. This value is provided either by the bank or by your organization.
    -   **Password**: The current user's password to the SFTP folder.
    -   **SSH Private Key**: The private Secure Shell \(SSH\) key created on the [Encryption Certificates](SM_20_05_30.md) \(SM200530\) form, which will be used for SFTP authentication.
4.  Click **Test Connection**.

    The system verifies the connection to the SFTP folder.

5.  In the **Source File** section, click **Set Up Data Provider**.

    In the **Data Provider** box, the system automatically inserts the name of the created data provider.

6.  In the **Amount Format** box, make sure that *Debit/Credit in Same Column* is selected.
7.  In the **Mapping Rules** section, enter the mapping rules between the source file and Acumatica ERP.

    The settings for which the **Active** check box is selected and unavailable are required. Other settings are optional. The following table shows an example of this mapping.

    |Active|Target Field|Source Field or Value|
    |------|------------|---------------------|
    |Selected|*Bank Account Name*|*=\[Account Number\]*|
    |Selected|*Ext. Tran. ID*|*=\[???TransactionID\]*|
    |Selected|*Tran. Date*|*=\[Posting Date\]*|
    |Selected|*Transaction Amount*|*=\[Transaction Amount\]*|
    |Selected|*Tran. Desc*|*=\[Supplier - Name\]*|
    |Cleared|*Card Number*|*=\[Cardholder ID\]*|
    |Cleared|*Ext. Ref. Nbr.*|*=\[???TransactionID\]*|
    |Cleared|*Custom Tran. Desc.*|*=Concat\( \[Supplier - Merchant Category Code\], \[Supplier - Name\]\)*|
    |Cleared|*Invoice Nbr.*|*=\[Authorization Number\]*|
    |Cleared|*Payee/Payer*|*=\[Supplier - Name\]*|
    |Cleared|*Tran. Code*|*=\[Authorization Number\]*|

8.  Go to the **Cash Accounts** tab, and click **Add Row** on the table toolbar. Specify the following settings in the added row:

    -   **Account Name**: The account name as it is specified in the source file
    -   **Cash Account**: The cash account in Acumatica ERP that will be mapped to the bank account
    -   **Statement Period**: *Month*
    -   **Statement Start Day**: *1*
    -   **Import Transactions From**: The date that is specified in the Summary area for the bank feed \(inserted automatically by the system\)
    -   **Currency**: The currency of the bank transactions
    Repeat this instruction for each bank account and cash account that you want to map.

9.  Click **Save** to save your settings.
10. On the form toolbar, click **Activate** to activate the bank feed. The bank feed's status changes to *Active*.

    You can process this bank feed on the [Retrieve Bank Feed Transactions](CA_50_75_00.md) \(CA507500\) form. For details, see [To Load Bank Transactions from a File](CA__HOW_Load_BankFeeds_from_File.md).

    .


## To Set Up a Bank Feed \(Debit and Credit in Different Columns\) { .section}

To set up a bank feed that loads a source file with the *Debit and Credit in Different Columns* amount format, do the following:

1.  On the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Bank Feed ID**: A unique ID that identifies the bank feed
    -   **Bank Feed Type**: *File*
    -   **Import Start Date**: The date starting from which you want to import bank transactions to the system
    -   **Description**: A description of the bank feed
    -   **Financial Institution**: The name of the bank that will provide source files with transactions
3.  Go to the **Source File** tab, and specify the following settings in the **Connection to Source File** section:
    -   **URL**: The path to the SFTP folder, such as `sftp://FirstBankSFTP`.
    -   **File Format**: *CSV \(Comma-Separated Values\)* \(inserted by default\).
    -   **Login**: The current user's login to the SFTP folder. This value is provided either by the bank or by your organization.
    -   **Password**: The current user's password to the SFTP folder.
    -   **SSH Private Key**: The private Secure Shell \(SSH\) key that will be used for SFTP authentication.
4.  Click **Test Connection**.

    The system verifies the connection to the SFTP folder.

5.  In the **Source File** section, click **Set Up Data Provider**.

    In the **Data Provider** box, the system automatically inserts the name of the created data provider.

6.  In the **Amount Format** box, select *Debit and Credit in Different Columns*.
7.  In the **Mapping Rules** section, enter the mapping rules between the source file and Acumatica ERP.

    The settings for which the **Active** check box is selected and unavailable are required. Other settings are optional. The following table shows an example of this mapping.

    |Active|Target Field|Source Field or Value|
    |------|------------|---------------------|
    |Selected|*Bank Account Name*|*=\[Account Parent\]*|
    |Selected|*Ext. Tran. ID*|*=\[???TransactionID\]*|
    |Selected|*Tran. Date*|*=\[Posting Date\]*|
    |Selected|*Receipt Amount*|*=\[Credit Amount\]*|
    |Selected|*Disbursement Amount*|*=\[Debit Amount\]*|
    |Selected|*Tran. Desc*|*=\[Supplier - Name\]*|
    |Selected|*Card Number*|*=\[Cardholder ID\]*|
    |Selected|*Ext. Ref. Nbr.*|*=\[???TransactionID\]*|
    |Selected|*Custom Tran. Desc.*|*=\[Supplier - Name\]*|
    |Selected|*Invoice Nbr.*|*=\[Authorization Number\]*|
    |Selected|*Payee/Payer*|*=\[Supplier - Name\]*|
    |Selected|*Tran. Code*|*=\[Authorization Number\]*|

8.  Go to the **Cash Accounts** tab, and click **Add Row** on the table toolbar. Specify the following settings in the added row:

    -   **Account Name**: The account name as it is specified in the source file
    -   **Cash Account**: The cash account in Acumatica ERP that will be mapped to the bank account
    -   **Statement Period**: *Month*
    -   **Statement Start Day**: *1*
    -   **Import Transactions From**: The date that is specified in the Summary area for the bank feed \(inserted automatically by the system\)
    -   **Currency**: The currency of the bank transactions
    Repeat this step for each bank account and cash account that you want to map.

9.  Click **Save** to save your settings.
10. On the form toolbar, click **Activate** to activate the bank feed. The bank feed's status changes to *Active*.

    You can process this bank feed on the [Retrieve Bank Feed Transactions](CA_50_75_00.md) \(CA507500\) form. For details, see [To Load Bank Transactions from a File](CA__HOW_Load_BankFeeds_from_File.md).


## To Set Up a Bank Feed \(Debit/Credit Property in Separate Columns\) { .section}

To set up a bank feed that loads a source file with the *Debit/Credit Property in Separate Columns* amount format, do the following:

1.  On the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Bank Feed ID**: A unique ID that identifies the bank feed
    -   **Bank Feed Type**: *File*
    -   **Import Start Date**: The date starting from which you want to import bank transactions to the system
    -   **Description**: A description of the bank feed
    -   **Financial Institution**: The name of the bank that will provide a source file with transactions
3.  Go to the **Source File** tab, and specify the following settings in the **Connection to Source File** section:
    -   **URL**: The path to the SFTP folder, such as `sftp://FirstBankSFTP`
    -   **File Format**: *CSV \(Comma-Separated Values\)* \(inserted by default\)
    -   **Login**: The current user's login to the SFTP folder. This value is provided either by the bank or by your organization.
    -   **Password**: The current user's password to the SFTP folder.
    -   **SSH Private Key**: The private Secure Shell \(SSH\) key that will be used for SFTP authentication.
4.  Click **Test Connection**.

    The system verifies the connection to the SFTP folder.

5.  In the **Source File** section, click **Set Up Data Provider**.

    In the **Data Provider** box, the system automatically inserts the name of the created data provider.

6.  In the **Amount Format** box, select *Debit/Credit Property in Separate Columns*.
7.  In the **Disbursement Property** box, enter the setting from the source file that is used for disbursement entries, such as `Dr`.
8.  In the **Receipt Property** box, enter the setting from the source file that is used for receipt entries, such as `Cr`.
9.  In the **Mapping Rules** section, enter the mapping rules between the source file and Acumatica ERP.

    The settings for which the **Active** check box is selected and unavailable are required. Other settings are optional. The following table shows an example of this mapping.

    |Active|Target Field|Source Field or Value|
    |------|------------|---------------------|
    |Selected|*Bank Account Name*|*=\[Account Parent\]*|
    |Selected|*Ext. Tran. ID*|*=\[???TransactionID\]*|
    |Selected|*Tran. Date*|*=\[Posting Date\]*|
    |Selected|*Transaction Amount*|*=\[Transaction Amount\]*|
    |Selected|*Debit/Credit Property in Separate Column*|*=\[Transaction - Debit/Credit Indicator\]*|
    |Selected|*Tran. Desc*|*=\[Supplier - Name\]*|
    |Cleared|*Card Number*|*=\[Cardholder ID\]*|
    |Cleared|*Ext. Ref. Nbr.*|*=\[???TransactionID\]*|
    |Cleared|*Custom Tran. Desc.*|*=Concat\( \[Posting Date\], \[Supplier - Name\],\[Supplier - City\]\)*|
    |Cleared|*Invoice Nbr.*|*=\[Authorization Number\]*|
    |Cleared|*Payee/Payer*|*=\[Supplier - Name\]*|
    |Cleared|*Tran. Code*|*=\[Authorization Number\]*|

10. Go to the **Cash Accounts** tab, and click **Add Row** on the table toolbar. Specify the following settings in the added row:

    -   **Account Name**: The account name as it is specified in the source file
    -   **Cash Account**: The cash account in Acumatica ERP that will be mapped to the bank account
    -   **Statement Period**: *Month*
    -   **Statement Start Day**: *1*
    -   **Import Transactions From**: The date that is specified in the Summary area for the bank feed \(inserted automatically by the system\)
    -   **Currency**: The currency of the bank transactions
    Repeat this step for each bank account and cash account that you want to map.

11. Click **Save** to save your settings.
12. On the form toolbar, click **Activate** to activate the bank feed. The bank feed's status changes to *Active*.

    You can process this bank feed on the [Retrieve Bank Feed Transactions](CA_50_75_00.md) \(CA507500\) form. For details, see [To Load Bank Transactions from a File](CA__HOW_Load_BankFeeds_from_File.md).


**Parent topic:**[Integrating Acumatica ERP with Bank Feeds](../UserGuide/CA__MNG_Bank_Feed_Integration.md)

