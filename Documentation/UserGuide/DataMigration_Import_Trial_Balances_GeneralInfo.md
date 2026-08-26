# Migration of Trial Balances: General Information {#_af1f4e6a-f50d-48f9-9299-9819c3506db9 .concept}

When migrating company data from a legacy system to Acumatica ERP, you import trial balances to the system to initialize the open balances of the general ledger accounts without migrating general ledger transactions for each historical period.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Prepare Acumatica ERP for importing trial balances
-   Prepare the trial balance to be imported
-   Import the trial balance
-   Review the generated general ledger transactions

## Applicable Scenarios { .section}

You import trial balances to migrate account balances to the system for each period and to be able to prepare accurate financial statements for the periods that precede migration to the new system.

## System Configuration Before Import of the Trial Balance { .section}

Before importing the trial balance, you need to choose the period to start keeping records in Acumatica ERP and decide for which periods you want to import the history of balances. We recommend that you import trial balances for at least a year to be able to produce comparative financial statements for the company later. For example, if you start using Acumatica ERP in *01-2026*, you should import the trial balance for the 2025 financial year. In the legacy system, you should prepare the data to be imported—that is, run the trial balance report for each period that you are going to import.

Depending on the way the account balances are presented in the legacy system, you select the **Sign of the Trial Balance** option on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form as follows:

-   If the *Normal* sign is selected for the trial balance representation in the system, then debit balances of asset and expense accounts and credit balances of liability and income accounts are shown with the plus sign.
-   If the *Reversed* sign is selected, then debit balances of asset and expense accounts are shown with the plus sign, and credit balances of liability and income accounts are shown with the minus sign.

You specify the sign of the trial balances based on the following equations:

-   If credit balances of liability and income accounts are presented with a plus sign, you select the *Normal* option. Normal balances satisfy the following validation criterion:

    ```
    Total Balance of (Asset Accounts + Expense Accounts) = Total Balance of (Income Accounts + Liability Accounts)
    ```

-   If the credit balances of liability and income accounts are presented with a minus sign, you select the *Reversed* option. Reversed credit balances, which are implemented in some applications, satisfy the following validation criterion.

    ```
    Total Balance of (Asset Accounts + Expense Accounts) = – Total Balance of (Income Accounts + Liability Accounts)
    ```

    This criterion can also be expressed as follows.

    ```
    Total Balance of (Asset Accounts + Liability Accounts + Income Accounts + Expense Accounts) = 0
    ```


**Tip:** The **Sign of the Trial Balance** setting on the [General Ledger Preferences](GL_10_20_00.md) form also affects the representation of the trial balance reports and inquiries. After you have finished the trial balance import, you may change the **Sign of the Trial Balance** option to have the needed representation of reports and inquires.

## Preparation and Editing of the File to Be Imported {#section_ilg_mjv_vxb .section}

You prepare the trial balances for each company or branch, considering the following rules:

-   If you are migrating data to a company whose type is *Without Branches*, you import the trial balance for entire company—that is, in the created trial balance entry, you select the company in the **Company/Branch** box on the [Trial Balance](GL_30_30_10.md) form.
-   If you are migrating data to a company whose type is *With Branches Not Requiring Balancing*, you import the trial balance for entire company. In the created trial balance entry, you select the company in the **Company/Branch** box on the [Trial Balance](GL_30_30_10.md) form. The prepared trial balance must contain account balances for all company branches.
-   If you are migrating data to a company that has branches requiring balancing \(that is, if the company type is *With Branches Requiring Balancing*\), in the created trial balance entry, you select an individual branch in the **Company/Branch** box and import data to each branch separately. The prepared trial balances should contain account balances for each of the company branches.

From the legacy ERP software, you should export the prepared trial balance data to a CSV file or to an Excel spreadsheet. The prepared file should include the following columns:

-   *Account*: This column contains the numbers of the accounts whose balances will be imported. Do not include the balance of the YTD Net Income account because it is calculated automatically from the imported balances of income and expense accounts.

    If you use subaccounts to record your financial data, the *Subaccount* column is also required for import. For more information about subaccounts, see [Subaccounts: General Information](../ImplementationGuide/config_Subaccounts_GeneralInfo.md).

-   *YTD Balance*: The ending balance of the account-subaccount pair for the period in the base currency. For this column, the *Currency* or *Text* format setting can be specified in the Excel file. You can specify normal balances or reversed balances of accounts.
-   *Currency YTD Balance*: The ending balance of the account-subaccount pair in the currency of denomination specified for the account for the period. For this column, the *Currency* or *Text* format setting can be specified in the Excel file.

    This column is required if you plan to use multiple currencies—that is, if the *Multicurrency Accounting* or *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

    **Important:** Make sure that you have specified the currency YTD Balance for the accounts denominated to a foreign currency. Otherwise, the balances in the account currency will be incorrect, and you will not be able to reconcile the account balances with the bank statements.

    If the account is not denominated or is denominated to the base currency, the *YTD Balance* and *Currency YTD Balance* columns hold the same value.

-   *Description* \(optional\): An optional description of the account that you can add for your convenience while you work with the file. The description will not be uploaded to the system.

**Tip:** You can include multiple columns with the balances for different financial periods in one file.

## Import of Trial Balances {#section_zmg_mjv_vxb .section}

If you are importing multiple trial balances, you have to import the trial balances one by one, from the earliest period to the latest one, because each subsequent general ledger batch is generated in the amount of the difference between the trial balance for the previous period and the current imported balance.

You import trial balances by performing the following operations:

1.  You import the trial balance and validate the imported data on the [Trial Balance](GL_30_30_10.md) \(GL303010\) form.

    As a result of the validation process, the system maps the accounts \(or account-subaccount pairs, if applicable\) of the trial balance to the internal accounts \(or account-subaccount pairs, if applicable\) in the system. The system shows an error for the records that cannot be mapped during validation.

2.  After you complete the mapping and make sure the debit total and credit total are in balance, you release the trial balance on the same form.
3.  You release the generated batch on the [Journal Transactions](GL_30_10_00.md#) \(GL301000\) form. If the **Automatically Post on Release** check box is cleared on the [General Ledger Preferences](GL_10_20_00.md#) \(GL102000\) form, you also need to post the generated batch on the [Post Transactions](GL_50_20_00.md#) \(GL502000\) form. For details on processing batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md). On release and posting of the batch, the system does the following:

    -   Updates the account balances to match those in the imported trial balance data
    -   Sets to 0 the account balances for which no data was imported
    **Attention:** If you are importing the trial balance in multiple currencies, the debit total may be not equal the credit total in the general ledger transaction generated on release of the trial balance. For more information, see [Data Migration Process: Migrating Multicurrency Documents](DataMigration_DM_Process_MultiCurr_Documents.md).

4.  You verify the imported balances by using the [Trial Balance Summary](GL_63_20_00.md) \(GL632000\) or [Trial Balance Detailed](GL_63_25_00.md) \(GL632500\) report.

    **Tip:** If you have uploaded and released an incorrect trial balance or if you skip a period during import, an incorrect batch might be generated from the imported trial balance for the next period. You can delete the generated general ledger batch before it is released. If you have already released an incorrect batch, you can again import the correct trial balance so that the balances will be adjusted.

5.  You import the next trial balance by performing these same actions in the stated order. For each subsequent trial balance, review the accounts listed on the **Exceptions** tab, if any.

## Review of the Exceptions Tab { .section}

Records on the **Exceptions** tab of the [Trial Balance](GL_30_30_10.md) \(GL303010\) form do not reflect mistakes. When you import the second trial balances \(or the first balance for the second time\), the **Exceptions** tab shows the accounts that have a nonzero balance for the period in the system, but their balance for the currently selected period has not been uploaded from the file. \(Each subsequent import works similarly.\)

If accounts appear on the **Exceptions** tab, make sure the balance of these accounts is *0.00* for the period for which you are importing the trial balance. If the balance should be nonzero, verify the account balances in the Excel file from which you are importing the trial balance. If the **Exceptions** tab is empty, this means that all accounts that have a nonzero balance in the system for the period are listed on the **Transaction Details** tab for import.

On release of the trial balance, for each account listed on the **Exceptions** tab, the system generates a transaction that makes the account balance *0.00* for the period for which you are importing the trial balance.

**Parent topic:**[Importing Trial Balances](../UserGuide/DataMigration_Import_Trial_Balances_Mapref.md)

