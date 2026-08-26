# Migration of Financial Documents: General Information {#_72cd782c-da16-4784-8f01-84b9974fa6a4 .concept}

When migrating company data from a legacy system to Acumatica ERP, you need to import into the system accounts payable and accounts receivable documents; these documents may have already been settled in full or partially.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Prepare AP and AR documents for import
-   Activate migration mode for the accounts payable and accounts receivable subledgers
-   Import AP document in migration mode by using predefined import scenarios
-   Import AR documents in migration mode by using predefined import scenarios

## Applicable Scenarios { .section}

You import financial documents from a legacy system before you start to use Acumatica ERP as an ERP system to keep the history of documents and continue processing open documents in the new system. To import the documents without affecting the balances of general ledger accounts, you use data migration mode.

## Preparation of Documents for Import { .section}

Before you start the migration process in Acumatica ERP, you need to prepare the list of all accounts receivable and accounts payable documents that you want to migrate to the system. This list can contain both outstanding and closed documents \(the ones that have been already settled in full but you want to keep them in the new system as well for audit purposes\). For each document, you need to specify its original amount, document date, document line details, and the unpaid balance on the migration date. If the open balance of a document is *0*, the document will be assigned the *Closed* status after you release it.

**Important:** If an open balance is not specified for a document in the import file, then the system will set this balance to *0*; on release, the document will get the *Closed* status.

## Import of Accounts Receivable Documents { .section}

To load AR documents without affecting the general ledger, you have to first activate migration mode for the accounts receivable subledger. To turn on migration mode for the AR subledger, you select the **Activate Migration Mode** check box on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form and save your changes.

**Important:** If migration mode has been activated, the system does not support automatic application of payments to outstanding documents. Also, you cannot create pay-by-line documents in migration mode.

In migration mode, you import the needed documents with the *Balanced* status. The following types of accounts receivable documents can be entered in migration mode:

-   Invoices, debit memos, and credit memos entered by using the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form
-   Payments, prepayments, and refunds entered by using the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form
-   Cash sales and cash returns entered by using the [Cash Sales](AR_30_40_00.md) \(AR304000\) form

The documents created in migration mode can be edited and released only when migration mode is activated. You can mass-release the imported documents on the [Release AR Documents](AR_50_10_00.md) \(AR501000\) form. When the documents are released in migration mode, these documents update the customer balances only; they do not update GL account balances. After you have finished the import and released the imported AR documents, you deactivate migration mode.

## Import of Accounts Payable Documents { .section}

To load AP documents without affecting the general ledger, you have to first activate migration mode for the accounts payable subledger. To turn on migration mode for the AP subledger, you select the **Activate Migration Mode** check box on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form and save your changes.

In migration mode, you import the needed documents with the *Balanced* status. The following types of accounts payable documents can be entered in migration mode:

-   Bills, debit adjustments, and credit adjustments created by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
-   Payments, prepayments, and refunds created by using the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

    You cannot create payments and refunds with open balances in migration mode. Thus, you will not be able to apply other documents to these migrated payments. When you create a payment in migration mode, this document will have the *Closed* status and will affect the vendor's balance. If you need to enter an AP payment with an application in migration mode, you should use the *Prepayment* document type.

-   Cash purchases and cash returns created by using the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form.

The documents created in migration mode can be edited and released only when migration mode is activated. You can mass-release the imported documents on the [Release AR Documents](AR_50_10_00.md) \(AR501000\) form. When the documents are released in migration mode, these migrated documents update vendor balances only; they do not update GL account balances. After you have finished the import and released the imported AP documents, you deactivate migration mode.

**Tip:** When you upload taxable documents in migration mode, the taxes calculated for the migrated documents will be included in the tax reports for the corresponding tax periods. If you have already submitted tax reports for a period, clear the **Automatically Generate Tax Bill** check box on the **Tax Agency Settings** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form for the tax agency before you release the tax reports for this period.

**Parent topic:**[Migrating Financial Documents](../UserGuide/DataMigration_Import_Financial_Documents_Mapref.md)

