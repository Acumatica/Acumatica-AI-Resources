# Balance Reconciliation: General Information {#_0c3eabf5-3b9c-4aff-af3d-f7eb19a5cf0e .concept}

After you have imported data to the system, you need to reconcile the balances.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Identify which accounts should be reconciled after data migration
-   Reconcile the balance of accounts after data migration

## Applicable Scenarios { .section}

To verify the results of data migration and to ensure that data is complete and accurate and the system is ready to be used in a production environment, you need to make sure that the uploaded balances are the same as those in the legacy system.

## Reconciliation of Migrated Data { .section}

The process of reconciling the data migrated from a legacy system includes the following general steps:

-   You reconcile the accounts payable subledger with the general ledger.

    For the last imported period, you compare the balances of the Accounts Payable account, according to the trial balance, with the balance of this account based on the open accounts payable documents \(bills and prepayments\) that you have imported.

-   You reconcile the accounts receivable subledger with the general ledger.

    For the last imported period, you compare the balances of the Accounts Receivable account, according to the trial balance, with the balance of this account based on the open accounts receivable documents \(invoices and payments\) that you have imported.

-   You reconcile the fixed asset subledger with the general ledger \(if the *Fixed Assets Management* feature is in use\).

    You need to compare the balances of the fixed assets and accumulated depreciation accounts, according to the trial balance, with the records in the fixed asset subledger after you have migrated the fixed assets data. For more information, see [Migrating Fixed Assets](FixedAssets_Data_Migration_Mapref.md).

-   You reconcile the inventory subledger with the general ledger \(if the *Inventory and Order Management* feature is in use\).

    For the last imported period, you compare the balances of the Inventory account, according to the trial balance, with the balance of this account based on the sales and purchase documents that you have imported.

    **Important:** Migration of inventory is out of the scope of this course.


Also, you compare the account balances with the balances from the legacy system.

**Parent topic:**[Reconciling Financial Balances](../UserGuide/DataMigration_Reconcile_Balances_Mapref.md)

