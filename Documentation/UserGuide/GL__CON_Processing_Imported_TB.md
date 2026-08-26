# Import of Trial Balances {#_0c7e3994-c4dd-4abe-94d1-d609b7c25a94 .concept}

You have to import the trial balances one by one because each next General Ledger batch is generated in the amount of the difference between the trial balance for the previous period and the current imported balance. You have to import each trial balance in the following order:

1.  You import the trial balance and process imported date on the [Trial Balance](GL_30_30_10.md) \(GL303010\) form. For details on data preparation for importing, see [Preparation for Importing Trial Balances](GL__con_Import_of_Trial_Balances.md).
2.  You release the trial balance on the same form.
3.  You release the generated batch on the [Journal Transactions](GL_30_10_00.md#) \(GL301000\) form. For details on processing batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).
4.  If the **Automatically Post on Release** check box is cleared on the [General Ledger Preferences](GL_10_20_00.md#) \(GL102000\) form, you post the generated batch on the [Post Transactions](GL_50_20_00.md#) \(GL502000\) form.
5.  Verify the imported balances.
6.  \(Optional\) Import the next trial balance.

For detailed instructions on importing a trail balance, see [To Import a Trial Balance](GL__how_To_Import_Trial_Balance.md).

In this topic, you will read about mapping accounts and reviewing exceptions after importing data from the prepared file as well as about releasing and editing the trial balance.

## Mapping Accounts {#section_dng_mjv_vxb .section}

You import data by preparing an Excel or CSV file with the trial balance and then uploading it on the [Trial Balance](GL_30_30_10.md) \(GL303010\) form. You import data to the posting ledger of the selected target branch for the specified financial period. For the import to complete successfully, you have to map the imported list of accounts \(and subaccounts, if any\) to the accounts \(and subaccounts, if applicable\) used in Acumatica ERP.

After you have uploaded the file with the trial balance, the list of accounts \(and subaccounts\) to be imported is displayed on the **Transaction Details** tab of the [Trial Balance](GL_30_30_10.md) form. Acumatica ERP performs most of the mapping of the imported accounts \(and subaccounts\) and the internal accounts \(and subaccounts\) when you select the *Validate* action and click **Process** or **Process All** on the table toolbar. However, after the mapping process is finished, some lines may contain unmapped accounts \(and subaccounts\). These records are marked as errors and displayed in red font. In this case, you need to perform the mapping of accounts and subaccounts manually. The system also marks the duplicate records as errors. For the duplicates, merge the duplicate records by selecting these records in the table, selecting the *Merge Duplicates* action on the table toolbar, and processing the selected records.

## Reviewing Exceptions {#section_gng_mjv_vxb .section}

The **Exceptions** tab of the [Trial Balance](GL_30_30_10.md) \(GL303010\) form displays the accounts that have a nonzero balance for the previous period in the system, but their balance for the currently selected period hasn't been uploaded from the file. This tab is empty for the first importing of the trial balance for system initialization as well as if all accounts that have a nonzero balance in the system are listed on the **Transaction Details** tab for import.

If the **Exceptions** tab contains the list of accounts \(and subaccounts, if applicable\), you should review this list carefully and make sure that the balances of these accounts should be equal to zero in the period for which you are importing the trial balance. This review is needed because on release of the trial balance entry, for each account listed on the **Exceptions** tab, the system generates a transaction that makes the account balance zero for the period you are importing the trial balance for. If these accounts balances should be nonzero, verify and correct the list of accounts in the file from which you are importing the trial balance.

## Releasing a Trial Balance {#section_jng_mjv_vxb .section}

Once you are done mapping the accounts and adjusting the records as needed, you click **Remove Hold** on the form toolbar and release the trial balance entry. When you release the entry, the system generates a batch of General Ledger transactions that adjusts account balances in the ledger to match the imported trial balance. The system assigns the *Released* status to the trial balance.

If you are importing the trial balance not for the first time, the system generates journal entries in the amount of the difference between the ending balances of the specified period and the imported balance. Therefore, if you import the trial balance for more than one financial period, you have to release each generated batch and post the transactions before you import the trial balance for the next period; otherwise, the transactions might be generated incorrectly.

The General Ledger batch generated on release of the trial balance entry has the *On Hold* status if the **Hold Batches on Entry** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. If this check box is cleared, the batch has the *Balanced* status.

You can release the created batch or you can delete it if you find mistakes. The system keeps the history of all trial balance documents that have been released, but it shows a warning if the batch generated by a particular trial balance document had been deleted.

## Editing a Trial Balance {#section_ong_mjv_vxb .section}

On the [Trial Balance](GL_30_30_10.md) \(GL303010\) form, you can edit a trial balance with the *On Hold* or *Balance* status. Once a trial balance has been released, you cannot edit it. If you have imported old or incorrect values, you can repeat the importing procedure once again. After you release and post the General Ledger batch, the account balances will be adjusted.

**Parent topic:**[Importing Financial Data](../UserGuide/GL__GL_Importing_Data.md)

