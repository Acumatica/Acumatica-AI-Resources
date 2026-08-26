# Preparation for Importing Trial Balances {#_9fb11332-7bbb-4944-8d9e-995918abc51b .concept}

In Acumatica ERP, to initialize the system during initial implementation, you can import either a trial balance \(or balances\) or a number of GL transactions from a legacy system. Alternatively, you can import trial balances and then upload the GL transactions from subsequent periods. If you import the GL transactions, you do not need to import the trial balance because the trial balance will be computed by the system automatically based on the imported GL transactions. If you do not need to keep the history of GL transactions in Acumatica ERP, you can import the trial balance only.

Before importing the trial balance, you need to choose the period to start keeping records in Acumatica ERP, and decide whether you want to import the history of balances for multiple preceding periods or just one period. For example, if you start using Acumatica ERP in *01-2020*, you should import the trial balance for at least *12-2019*.

In the legacy system, you should prepare the data to be imported. For each required period, you should run the trial balance report.

In this topic, you will read about preparing the file with a trial balance and configuring the system for importing.

## Preparing and Editing the File to Be Imported {#section_ilg_mjv_vxb .section}

From the third-party software, you should export the prepared trial balance data to a CSV file or to an Excel spreadsheet. The file should have the following columns:

-   *Account*: The number of the account whose balance is to be imported.
-   *Subaccount*: The identifier of the subaccount to be imported. Specify a non-specific subaccount that fits the *SUBACCOUNT* segmented key in your system—for example, *000-00-00*. For details, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md).

    **Note:** This column is required only if you plan to use subaccounts with your accounts. In this case, the *Subaccounts* feature should be enabled in Acumatica ERP on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) from.

-   *YTD Balance*: The ending balance of the account-subaccount pair for the period. For this column, the *Currency* or *Text* format setting can be specified in the Excel file.

    **Note:** The file can contain multiple columns with the balances for different financial periods.

-   *Currency YTD Balance*: The ending balance of the account-subaccount pair in the currency of denomination specified for the account for the period. If the account is not denominated, the *YTD Balance* and *Currency YTD Balance* columns hold the same value. For this column, the *Currency* or *Text* format setting can be specified in the Excel file.

    **Note:** This column is required only if you plan to use subaccounts with your accounts. In this case, the *Multicurrency Accounting* feature should be enabled in Acumatica ERP on the [Enable/Disable Features](CS_10_00_00.md) from.

-   *Description* \(optional\): A description of the account that you can add for your convenience while you work with the file. The description will not be uploaded to the system.

You should not import the balance of the *YTD Net Income* account; Acumatica ERP calculates this balance automatically from the imported balances of income and expense accounts.

## Configuring the System Before Importing a Trial Balance {#section_olg_mjv_vxb .section}

Depending on the way the account balances are presented in the trial balance in your legacy system \(from which you are importing the data\), you specify the sign of the trial balances in the **Sign of the Trial Balance** box in the **Chart of Accounts** section of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form as follows:

-   If credit balances of liability and income accounts are presented with a plus sign, you select the *Normal* option. Normal balances satisfy the following validation criterion:

    ``` {#codeblock_qlg_mjv_vxb}
    Total Debit Balance of the (Assets + Expense) Accounts = Total Credit Balance of the (Income + Liabilities) Accounts
    ```

-   If the credit balances of liability and income accounts are presented with a minus sign, you select the *Reversed* option. Reversed credit balances, which are implemented in some applications, satisfy the following validation criterion.

    ``` {#codeblock_rlg_mjv_vxb}
    Total Debit Balance of (Assets + Expense) Accounts = – Total Credit Balance of (Income + Liabilities) Accounts)
    ```

    This criterion can also be expressed as follows.

    ``` {#codeblock_tlg_mjv_vxb}
    Total Debit Balance of (Assets + Expense) Accounts + Total Credit Balance of (Income + Liabilities) Accounts = 0
    ```


**Parent topic:**[Importing Financial Data](../UserGuide/GL__GL_Importing_Data.md)

