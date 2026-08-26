# Journal Voucher Entry {#_fd0de835-3e74-46f2-8186-3be1fcf03aae .concept}

You use the [Journal Vouchers](GL_30_40_00.md) \(GL304000\) form to enter multiple documents. You have to enter only the key values for each document type; other elements are populated with the default values. You can also apply payments to the documents of a batch.

In this topic, you will read about creating a document batch, adding documents to it, and applying payments to a document in the batch.

## Creating a Document Batch {#section_ldj_mjv_vxb .section}

A batch can contain any number of documents. In the summary area of the [Journal Vouchers](GL_30_40_00.md) \(GL304000\) form, you specify the summary information of the batch, which includes the branch associated with the transaction \(if your company has multiple branches\), the currency of the documents \(if operations in multiple currencies can be performed\), the default date of the documents \(which may be changed for specific documents\), and the post period for all documents. After you specify the summary information, you can add documents to the batch.

When you save the batch, it gets a reference number based on the numbering sequence assigned in the **Document Batch Numbering Sequence** box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

For instructions on how to create a document batch, see [To Add Documents to a Document Batch](GL__how_Adding_Documents_to_a_Document_Batch.md).

## Adding Documents to a Batch {#section_pdj_mjv_vxb .section}

You can add new documents to a batch with the *On Hold* or *Balanced* status. On the **Transactions** tab of the [Journal Vouchers](GL_30_40_00.md) \(GL304000\) form, you enter information about each of the documents, including the transaction code, the date, the customer or vendor, the document total, and the tax information, if available. \(These details differ slightly for different types of documents.\) Once you specify the transaction code, some of the elements are available, while others are unavailable, depending on the code. For details on transaction codes, see [Voucher Processing Workflow](GL__CON_Processing_a_Batch_of_Documents.md).

**Attention:** As you enter the document information \(transaction code, document type, vendor or customer, and amount\) in a row, the system assigns a reference number to the record based on the numbering sequence assigned to documents of this type. This reference number will be reserved for the document, whether it is successfully generated or its generation fails \(and the document is removed from the system\).

You can enter a document as a one-line document or as a multiline document \(with a header line and detail lines\). For instructions on how to add documents of different types, also see [To Add Documents to a Document Batch](GL__how_Adding_Documents_to_a_Document_Batch.md).

## Adding a One-Line Document {#section_tdj_mjv_vxb .section}

If you enter the document by its summary \(as a one-line document\), it takes one row in the table of the **Transactions** tab of the [Journal Vouchers](GL_30_40_00.md) \(GL304000\) form. This row includes the document header values, as well as the document total and the tax total \(if applicable\).

## Adding a Multiline Document {#_18fb4739-22e8-4389-b188-383eb844f699 .section}

By selecting the **Split** check box on the **Transactions** tab of the [Journal Vouchers](GL_30_40_00.md) \(GL304000\) form, you can enter a document with line details. When you select this check box and click **Add Row**, the system adds a row with the same reference number and transaction code. You can add the required number of lines with a line subtotal. For the document to be complete, it must have total debits that are equal to total credits.

## Applying Payments to the Documents in the Batch {#_7f131f79-979b-45d3-b2c3-6f9de8c6de48 .section}

When you enter documents to the batch on the [Journal Vouchers](GL_30_40_00.md) \(GL304000\) form, you can also apply payments to the documents in this batch or to other documents available in the system. On the **AP Payment Application** tab, you can apply payments, credit adjustments, and prepayments to bills and debit adjustments. On the **AR Payment Application** tab, you can apply customer payments and debit adjustments to invoices and credit adjustments.

The documents added to the batch appear on the **AP Payments Application** and **AR Payments Application** tabs only after you save the batch.

**Tip:** Make sure that the payment methods specified for payments to vendors in the **Payment Method** column have the **Not Required** option selected on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form. In other words, these payment methods must not require check printing and must not be ACH payments.

If you add payments to the batch, you have to ensure that they are fully applied before you take the batch off hold.

**Important:** If invoices or customer payments listed in the batch have an unapplied balance, these documents cannot be used in any other application until the batch is released and the actual documents are generated.

**Parent topic:**[Processing Vouchers](../UserGuide/GL__MNG_Document_Batches.md)

