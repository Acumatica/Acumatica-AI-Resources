# GL DACs: Transactional Data {#_35b2bdb3-6893-4ae4-a148-1bae72e265ad .concept}

In this topic, you can find an overview of the data access classes \(DACs\) that store transactional data.

## Transactional DACs { .section}

Transactional DACs store the general ledger transactions and related entities. The GL DACs that hold transactional data are listed in the following table.

|DAC|Description|
|---|-----------|
|[Batch](https://help.acumatica.com/dacBrowser/PX.Objects.GL/Batch)|Specifies the general information of the batch, such as the date of the batch, the ledger to which transactions should be posted, the branch \(if your company has multiple branches\), and the currency \(if your company uses different currencies\).

The DAC is a header for aggregated GLTran records. It makes sure that the set of GLTran records is balanced.|
|[GLTran](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLTran)|Represents a GL entry, which is a basic accounting record. A GLTran record defines which account and subaccount should be credited or debited and for how much.|
|[GLAllocationHistory](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLAllocationHistory)|Represents a reference between the allocation rule and the created GL batch.|

## Batch Release { .section}

The batch release process marks [Batch](https://help.acumatica.com/dacBrowser/PX.Objects.GL/Batch) and [GLTran](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLTran) records as released and prepares the batch for posting. During the release process, the system performs the following steps:

1.  Validates the Batch record. For example, it verifies that the Batch record has the correct status and is unreleased.
2.  Validates financial periods for both the Batch record and the GLTran record.
3.  Sets GLTran.Released to `true`.
4.  Updates the related [CATran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CATran) record.
5.  Sets Batch.Released to `true` and sets Batch.Status to *U*, which means that the batch is unposted.
6.  Creates project transactions that are related to the GLTran.AccountID, GLTran.ProjectID, and GLTran.TaskID fields.
7.  Creates tax transactions that are related to the GLTran.TaxID field.
8.  Marks the [Currency](https://help.acumatica.com/dacBrowser/PX.Objects.CM/Currency) record from Batch.CuryID as being in use.

## Batch Posting { .section}

The posting of batches is a key aspect of financial accounting in Acumatica ERP. During batch posting, the system updates the account history and the state of the transaction state. Posting also involves the handling of special options of batches, such as auto-reversing and inter-branch records: The process creates reversing batches with GL entries and balancing GL entries.

A general responsibility of the posting process is to update a set of historical entities related to the batch. The main entry is the [GLHistory](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLHistory) record. The GLHistory DAC stores historical records that contain summarized data for the specified master financial period and accounting unit.

Also, during the posting process, the system calculates and processes the following:

-   [GLConsolHistory](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLConsolHistory), which is used in GL consolidation process
-   [GLAllocationAccountHistory](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLAllocationAccountHistory), which is used for allocations and project accounting entities

During the posting process, the system performs the following steps:

1.  Validates financial periods for both the Batch record and the GLTran record.
2.  Updates the account history in GLHistory.
3.  Updates the allocation balance in GLAllocationAccountHistory.
4.  Updates the consolidation balance.
5.  Updates the project balance in [PMHistory](https://help.acumatica.com/dacBrowser/PX.Objects.PM/PMHistory).
6.  Sets Batch.Posted to `true` and sets Batch.Status to *P*, which means that the batch has been posted.

## Trial Balance Import { .section}

By importing the trial balance, a user can reconcile the account balances \(of the specified period\) to the target balances. The user specifies the target YTD balance for the required account and subaccount. The system then calculates the difference between the current and specified amounts and generates adjusting [GLTran](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLTran) records. On the [Trial Balance](../UserGuide/GL_30_30_10.md) \(GL303010\) form, a user can upload data from prepared Excel tables, validate it, and map the data to an existing account and subaccount. For details about the import of trial balances, see [Import of Trial Balances](../UserGuide/GL__CON_Processing_Imported_TB.md).

The following table lists the GL DACs related to import of the trial balance.

|DAC|Description|
|---|-----------|
|[GLTrialBalanceImportMap](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLTrialBalanceImportMap)|A header of the trial balance aggregate.|
|[GLTrialBalanceImportDetails](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLTrialBalanceImportDetails)|A detail record of the trial balance aggregate. Each detail record is shown on the **Transaction Details** tab of the [Trial Balance](../UserGuide/GL_30_30_10.md) form and contains data for imported and actual account–subaccount pairs.|
|[GLHistoryEnquiryWithSubResult](https://help.acumatica.com/dacBrowser/PX.Objects.GL/JournalEntryImport/GLHistoryEnquiryWithSubResult)|A DAC for intermediate calculations. The DAC holds the balances of the account–subaccount pairs. The system uses this DAC to display data on the **Exceptions** tab of the [Trial Balance](../UserGuide/GL_30_30_10.md) form and during the release of trial balances to calculate the amounts of the adjusting [GLTran](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLTran) record.|

A trial balance should be balanced. To enforce this requirement, the system checks the GLTrialBalanceImportMap.DebitTotalBalance and GLTrialBalanceImportMap.CreditTotalBalance fields.

## Release of Trial Balances { .section}

The release process calculates the difference between existing and specified balances for mapped account–subaccount pairs. It then generates the corresponding [GLTran](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLTran) records and a batch of the special *T* type code. A batch of this type can be out of balance in the foreign currency because a user can import data for different accounts \(including denominated ones\). The process creates a shared [CurrencyInfo](https://help.acumatica.com/dacBrowser/PX.Objects.CM/CurrencyInfo) record for GLTran records with the same account currency, CurrencyInfo.BaseCalc \(which is set to *false*\), and rate \(which is set to *1*\).

The system does the following during the release process:

1.  Creates a batch header.
2.  Iterates over balances for the specified period to check the list of mapped account–subaccount pairs and select a suitable record.
3.  If the record was found, generates a GLTran record for the amount of the difference between the actual and desired balances, and deletes the record from the list.
4.  If a suitable record was not found or there is no difference between the actual and desired balances, proceeds with the next account–subaccount pair.
5.  Iterates over the remaining mapped records and creates GLTran records for the entire amount.
6.  Finalizes the batch header and marks the trial balance record as released.

**Parent topic:**[Reviewing General Ledger DACs](../DeveloperGuide/DACOverview_GL_Mapref.md)

