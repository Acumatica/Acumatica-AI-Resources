# Bank Reconciliation: Support for OFX and Other File Formats {#_039d01e3-3fde-4f8c-a817-daed252b7696 .concept}

**Attention:** This information is provided for reference and is not required reading in this chapter.

You can import bank statements from Open Financial Exchange \(OFX\), QBO, QFX, and Excel files; the process of importing bank statements is similar for these formats. In [Bank Reconciliation: To Process a Bank Statement in OFX Format \(Part 1\)](Finance_Bank_Reconciliation_Activity2.md), you will import bank statements for one cash account from the files in OFX format. However, an OFX file may contain one bank statement or multiple bank statements for the same cash account or multiple cash accounts. The periods of transactions listed in the file must be in chronological order and should not intersect to avoid duplicating transactions. Duplicate transactions cannot be imported; if you attempt to import duplicates, the system shows an error during the process of importing bank statements.

OFX Versions 1.x and 2.x are supported; the file provided for the activity complies with OFX 2.1.1. The account currency that is specified in `CURDEF` in the OFX file must match the currency of the cash account in the system.

**Tip:** To import a single bank statement from an Excel file, you can upload the records directly to the table on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form. If you want to import multiple bank statements from a single Excel file, you have to compose an import scenario for bank statements and use the import scenario to import the bank statements into the [Process Bank Transactions](CA_30_60_00.md) form.

The system supports import of bank transactions from the `STMTRS` and `CCSTMTRS` OFX aggregates. The bank statement **End Balance Date** and the **Ending Balance** are imported from the `LEDGERBAL` OFX aggregate. The system imports a transaction as a receipt if the transaction amount is positive and as a disbursement if the amount is negative. The transaction type `TRNTYPE` is imported for informational purposes and does not affect the sign of the imported transaction. The following table shows the transaction properties by which the system compares the imported bank transactions with the transactions in the system.

|Match Setting|OFX `STMTTRN` Element|Acumatica ERP Documents and Transactions|Imported Bank Transaction|
|-------------|---------------------|----------------------------------------|-------------------------|
|**Ref. Nbr**|`CHECKNUM`, `REFNUM`, or `FITID` if the previous ones are missing|**Document Ref.** for bank deposits, cash entries, and funds transfers; **Payment Ref.** for AP and AR payments|**Ext. Ref. Nbr.**|
|**Doc. Date**|`DTPOSTED`|**Deposit Date** for bank deposits; **Transaction Date** for cash entries and GL batches; and **Payment Date** for AP and AR payments|**Tran. Date**|
|**Doc. Payee**|`PAYEE` `NAME` or `STMTTRN` `NAME` if `PAYEE` `NAME` is missing|**Company Name** of the vendor or customer account in AP and AR payments|**Payee Name** \(hidden column\)|

The following table shows the information imported to Acumatica ERP from OFX.

|Imported Field|OFX Element|
|--------------|-----------|
|**Single statement**|`STMTRS` or `CCSTMTRS`|
|**Start Balance Date**|`DTSTART`|
|**End Balance Date**|`DTEND`|
|**Statement Date**|`LEDGERBAL` `DTASOF`|
|**Ending Balance**|`LEDGERBAL` `BALAMT`|
|**Currency**|`CURDEF` if the **Ignore Currency Check on Bank Statement Import** check box is cleared on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form; otherwise, the currency from the bank statement is ignored|

**Parent topic:**[Performing Bank Reconciliation](../UserGuide/Finance_Bank_Reconciliation_Mapref.md)

