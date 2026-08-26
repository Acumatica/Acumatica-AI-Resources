# Data Migration Process: Migrating Multicurrency Documents {#_c6eb8dea-aa01-4fe1-ad18-83df49b4fdae .concept}

If your company works with foreign vendors and customers, when migrating from a legacy system, you need to first configure Acumatica ERP for working with multiple currencies, and then import the documents and upload the balances of any accounts denominated in a foreign currency.

## Support of Multiple Currencies { .section}

Acumatica ERP supports the processing of documents and transactions in foreign currencies in the following functional areas:

-   General ledger
-   Cash ​management
-   Accounts payable
-   Accounts receivable
-   Contracts
-   Taxes \(you could report taxes in a currency other than the base currency\)
-   Sales orders
-   ​Purchase orders
-   Purchase requisitions
-   Time and expenses
-   Projects

**Important:** Transactions involving fixed assets, deferred revenue, and inventory can be processed in the base currency only.

## Import of Documents in Foreign Currencies { .section}

To prepare the system for importing documents in foreign currencies to the system, the following requirements must be met:

-   The *Multicurrency Accounting* feature must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   The currency rate types and currencies specified in the import data must be activated on the [Currency Rate Types](CM_20_10_00.md) \(CM201000\) form and the [Currencies](CM_20_20_00.md) \(CM202000\) form, respectively.
-   Currency rate override must be allowed for the vendors and customers for which you are going to import documents in foreign currencies. Currency settings are specified for these records on the [Vendors](AP_30_30_00.md) \(AP303000\) form and the [Customers](AR_30_30_00.md) \(AR303000\) form, respectively. This is needed so that the system can change the rate in the imported documents to upload exactly the same document amounts in the base and in foreign currencies as you have in your legacy system.
-   In import scenarios that will be used for import, the appropriate fields with the currency, currency rate type, and currency rate must be mapped to the appropriate columns in the files with the data to be imported.

After you import the documents to the system, you need to verify the balances of customers and vendors in the base and foreign currencies to make sure that all data was imported correctly.

## Import of Trial Balances { .section}

If you have accounts maintained in a foreign currency \(or accounts denominated in a foreign currency\), you need to import balances in both base and foreign currencies for each of these accounts. Thus, in the Excel file with the data, you need to create two columns with balances: *YTD Balance*, which holds the balance of accounts in the base currency, and *Currency YTD Balance*, which contains the balance of accounts in the foreign currencies assigned to these accounts. Both columns must have the currency or text format. For the accounts that are not denominated or are denominated in the base currency, the *YTD Balance* and *Currency YTD Balance* columns hold the same value.

After you have released the imported trial balance with multiple currencies, the generated batch on the [Journal Transactions](GL_30_10_00.md#) \(GL301000\) form has the following specifics:

-   The only currency available in the **Currency** box in the generated batch is the base currency of the company. The system always shows the base currency as the transaction currency in the trial balance batches, even though the imported account balances might be denominated in different currencies.
-   When you open the trial balance batch on the form, the amounts are shown in the transaction currency which may be different for different accounts: the currency of the denomination for denominated accounts and the base currency for other accounts. In this currency mode, the debit total is not supposed to be equal to the credit total, because the summed amounts are the balances in different currencies. When you toggle the currency in the batch to the base currency, the debit total becomes equal to the credit total because in this mode all the amounts are reflected in the base currency.
-   In the records with the denominated accounts specified in the lines, the debit and credit amounts are shown in the currency of denomination. In all other records in the table, the debit and credit amounts are shown in the base currency.

**Parent topic:**[Preparing System to Migrating Data](../UserGuide/DataMigration_DM_Process_Mapref.md)

