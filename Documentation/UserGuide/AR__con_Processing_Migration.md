# Processing Documents in Migration Mode {#_5345482e-402e-4d46-9b3d-6a48a37021a8 .concept}

Before you start the migration process in Acumatica ERP, you need to prepare the list of all documents that you want to migrate to the system. This list can contain both outstanding and closed documents. For each document, you need to specify its original amount, document date, currency, exchange rate, and open balance on the migration date.

The documents that are added when migration mode is activated do not update the general ledger. If you need to update account balances, you can import either the trial balance \(for details, see [Importing Financial Data](GL__GL_Importing_Data.md)\) or the general ledger transactions.

## Types of Documents That Can Be Migrated { .section}

The following types of documents can be entered when migration mode has been activated for the accounts receivable subledger:

-   *Invoice*, *Debit Memo*, and *Credit Memo*: You add these documents by using the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
-   *Payment*, *Prepayment*, and *Refund*: You add these documents by using the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.
-   *Cash Sale* and *Cash Return*: You add these documents by using the [Cash Sales](AR_30_40_00.md) \(AR304000\) form.

The following types of documents can be entered when migration mode has been activated for the accounts payable subledger:

-   *Bill*, *Debit Adjustment*, and *Credit Adjustment*: You add these types of documents by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
-   *Payment*, *Prepayment*, and *Refund*: You add these types of documents by using the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

    You cannot create payments with an open balance in migration mode. Thus, you will not be able to apply other documents to these migrated payments. When you create a payment in migration mode, this document will have the *Closed* status and will affect the vendor's balance.

    **Tip:** If you need to enter an AP payment with an application in migration mode, you should use the *Prepayment* document type.

-   *Cash Purchase*: You add this type of a document by using the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form.
-   Subcontracts: You add this type of documents by using the [Subcontracts](SC_30_10_00.md) \(SC301000\) form.

The following types of documents and transactions can be entered when migration mode has been activated for projects:

-   Pro forma invoices: You add this type of documents by using the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form.
-   Project transactions: You add this type of documents by using the [Project Transactions](PM_30_40_00.md) \(PM304000\) form.

In migration mode, you add the needed documents with the *On Hold* or *Balanced* status. These documents can be edited and released only when migration mode is activated.

## Entry of a Document's Open Balance { .section}

When you are adding an accounts receivable or accounts payable document, you specify the open balance of a migrated document on the document entry form as follows:

-   In the **Balance** box, which is available for editing on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) and [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) forms
-   In the **Available Balance** box on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form
-   In the **Unapplied Balance** box on the [Checks and Payments](AP_30_20_00.md) \(AP301000\) form \(for documents of the *Prepayment* type only\)

If you need to migrate historical documents that have been already settled in full, enter zero as the open balance of these migrated documents.

When you save a document, the system validates that the open balance does not exceed the document's original amount; if it does, the system displays an error.

An open balance that you specify in a document in migration mode will be displayed in the **Migrated Balance** box on the **Financial** tab on the document entry form once you save a document. This box is available for migrated documents only.

**Note:** In documents entered in migration mode, the system calculates taxes based on the tax zone and tax category specified in the documents.

## Entry of Migrated Documents with Unreleased Retainage { .section}

On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) and [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) forms, you can enter migrated AR documents and AP documents, respectively, with unreleased retainage.

You enter a document with unreleased retainage on the [Invoices and Memos](AR_30_10_00.md) or [Bills and Adjustments](AP_30_10_00.md) form by performing the following steps:

1.  You create the document.
2.  You specify its settings in the Summary area, including the selection of the **Apply Retainage** check box.
3.  You add a document line on the **Details** tab and specify the retainage percent in the **Retainage Percent** column.

    On the **Retainage** tab, the system displays the calculated retainage amount in the **Unreleased Retainage** and **Unpaid Retainage** boxes.

    **Tip:** For the lines of AP bills, you can also specify links to the related subcontracts in the **Subcontract Nbr.** box.


For details on creating a document with retainage, see [Processing AP Documents with Retainage](AP__MNG_Managing_Bills_with_Retainage.md) and [Processing AR Documents with Retainage](AR__MNG_ProcessingInvoices_with_Retainage.md).

## Release of Migrated Documents { .section}

The release of migrated accounts receivable documents causes customer balances to be updated; similarly, the accounts payable documents update vendor balances. These released documents do not produce batches in the general ledger. Thus, on the **Financial** tab of the corresponding document entry forms, instead of the link to the general ledger batch, the word *Migrated* will be displayed for a migrated document in the **Batch Nbr.** box.

On release of a historical accounts receivable or accounts payable document with an open balance of zero, the system adds a line with this document to the **Applications** tab on the document entry form and assigns the *Closed* status to the document. On the **Financial** tab, the **Migrated Balance** box shows *0.00*, which means that the document was closed before migration.

If you are importing AP bills with links to subcontracts, on release of the migrated AP bills, the system will update the **Billed Amount** and **Unbilled Amount** values in the subcontract lines on the [Subcontracts](SC_30_10_00.md) \(SC301000\) form.

**Note:** Migrated documents cannot be edited or released when migration mode is deactivated, and documents created in Acumatica ERP cannot be edited or released when migration mode is activated.

## Migration of Project Balances { .section}

If migration mode is activated for projects on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, you can import pro forma invoices and the corresponding project transactions—along with their balances, original amounts, and dates—without affecting the general ledger. Also, you must link these pro forma invoices and project transactions to the AR documents that correspond to them. Then you need to release the migrated pro forma invoices and project transactions.

**Important:** In order to correctly update project balances without affecting the general ledger, in the lines of the project transactions being imported, you must specify only the debit account and debit subaccount, and leave the credit account and credit subaccount empty. As a result, the release of these project transactions will not produce general ledger transactions.

If the migrated pro forma invoice is linked to the corresponding AR document, a line with this pro forma invoice and AR invoice appears in the related project on the **Invoices** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. The system shows a line for each pro forma invoice that corresponds to the project, along with the corresponding AR document, which is shown in the same row. Also, on the **Revenue Budget** tab of this form, project budget values will be calculated based on the imported data.

**Tip:** To indicate that a pro forma invoice has been migrated, the system selects the **Migrated** check box on the **Financial** tab of the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form.

If in migration mode, some incorrect project transactions with the *AR* source were uploaded to the system, you can reverse these transactions by clicking **Reverse** on the form toolbar of the [Project Transactions](PM_30_40_00.md) \(PM304000\) form. The system creates and releases the reversal transaction and inserts the number of the original transaction in the **Orig. Doc. Nbr.** box.

## Known Limitations {#section_axw_xyx_gsb .section}

The following limitations are applied in the system for creating document in migration mode:

-   When AP bills are entered in migration mode on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, the links to related purchase orders cannot be specified in the **PO Number** columns on the **Details** tab because there is no migration mode for purchase orders. This information also cannot be imported when AP bills are imported in migration mode by using import scenarios.
-   AP payments with applications to other documents cannot be entered in migration mode. You can import them as documents with the *Prepayment* type instead.

    To do this, you perform the following general steps:

    1.  On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you create a prepayment and specify its balance in the **Unapplied Balance** box. When you release the prepayment, it will have the *Open* status.

        **Note:** When you are creating a prepayment in migration mode, the **Documents to Apply** tab does not appear on the [Checks and Payments](AP_30_20_00.md) form. It becomes visible after you release the prepayment. You can add only migrated documents to this tab.

    2.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you create a bill and specify its open balance in the **Balance** box. When you release the bill, it will have the *Open* status.
    3.  On the [Checks and Payments](AP_30_20_00.md) form, you open the prepayment that you created in Step 1. On the **Documents to Apply** tab, you apply the bill that you created in Step 2 to the prepayment, and release the prepayment with the application.

**Parent topic:**[Migrating Documents to Acumatica ERP](../UserGuide/AR__con_Migration_Process_Overview.md)

