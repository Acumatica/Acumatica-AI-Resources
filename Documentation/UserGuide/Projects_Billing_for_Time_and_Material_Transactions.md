# Time and Material Billing: Generated Transactions {#_ebfbc859-372a-4d5d-9a8b-5ad6225aaa2c .concept}

The following sections describe the transactions that are related to time and material billing.

## Transactions Related to Time and Material Billing { .section}

The release of a pro forma invoice does not generate general ledger transactions or project transactions directly. When you release the pro forma invoice, the system creates a corresponding accounts receivable invoice with all the information copied from the pro forma invoice. On release of the accounts receivable invoice, the system generates the general ledger transactions and project transactions. For more information about these transactions, see [Pro Forma Invoices: Generated Transactions](Projects_Pro_Forma_Invoices_Transactions.md).

## Project Transactions Generated for an Unbilled Remainder { .section}

If an amount has been postponed in a pro forma invoice and the corresponding accounts receivable invoice \(which contains the line from which this postponed amount originates\) is released, the system generates the project transaction shown in the following table.

|Billable|Billed|Amount|Orig. Doc. Type|Orig. Doc. Nbr.|
|--------|------|------|---------------|---------------|
|Selected|Cleared|Postponed amount|*Unbilled Remainder*|The AR invoice in which the amount was postponed|

The main attributes of the created transaction—such as the project, project task, and inventory item—are the same as those of the original project transaction from which this unbilled remainder originates. The date and financial period of the unbilled remainder transaction is the date of the AR invoice on release of which this unbilled remainder transaction was created.

The system uses the following accounts as the debit and credit accounts in the project transaction it creates:

-   If the project transaction to which the unbilled remainder relates was not posted to the general ledger, the system copies the debit and credit accounts \(the specified accounts or empty values\) of the corresponding project transaction from which the unbilled remainder originates.
-   If the project transaction to which the unbilled remainder relates was posted to the general ledger, the system copies the accounts that are specified in the **GL Settings for Unbilled Remainders** section of the **General** tab of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. If no accounts are specified in the **GL Settings for Unbilled Remainders** section, the system copies the debit and credit accounts of the corresponding project transaction from which the unbilled remainder originates. In the line, the system also specifies the account group that is mapped to the debit account.

    On release of the project transaction generated for the unbilled remainder, the system also generates a batch of general ledger transactions. For details, see [Project Transactions: Generated Transactions](Projects_Transactions_Transactions.md).


When the accounts receivable invoice that contains the unbilled remainder is released, the system generates the reversing project transaction for the unbilled remainder that is shown in the following table.

|Billable|Amount|Orig. Doc. Type|Orig. Doc. Nbr.|
|--------|------|---------------|---------------|
|Cleared|–\(Postponed amount\)|*Unbilled Remainder Reversal*|The AR invoice in which the postponed amount was billed|

The main attributes of the created transaction—such as the project, project task, inventory item, account group, debit account, and credit account—are the same as those of the original project transaction of the unbilled remainder. The date and financial period are copied from the AR document that has caused the reversal of the unbilled remainder transaction \(either credit memo that reverses the original AR invoice, or the AR invoice prepared for the unbilled remainder\).

You can review the created transactions on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. In the table, you can find the project transactions by the original document type in the **Orig. Doc. Type** column.

**Parent topic:**[Billing Projects for Time and Material](../UserGuide/Projects_Billing_for_Time_and_Material_Mapref.md)

