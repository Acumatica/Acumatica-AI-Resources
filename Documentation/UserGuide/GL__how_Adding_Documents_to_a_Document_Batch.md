# To Add Documents to a Document Batch {#_4a446408-bbe7-4363-8a72-fbb4061bb626 .task}

You can create a batch of documents by using the [Journal Vouchers](GL_30_40_00.md) \(GL304000\) form. On this form, you can quickly enter miscellaneous documents.

For each document type \(as determined by the transaction code\), you enter only the required information, by summary or with row details, if needed. When you release the batch, the actual documents in the Accounts Payable, Accounts Receivable, and Cash Management subledgers are generated and released automatically \(the documents correspond to the rows you enter on the **Transactions** tab of the [Journal Vouchers](GL_30_40_00.md) form\).

## Before You Proceed {#section_nfj_mjv_vxb .section}

Make sure that the necessary codes have been defined on the [Voucher Entry Codes](GL_10_60_00.md) \(GL106000\) form. You can enter your own codes, as described in [To Add Documents to a Document Batch](GL__how_Adding_Documents_to_a_Document_Batch.md), or upload the [Voucher Entry Codes](Files/Document_Quick_Entry_via_Document_Batches_L_Transaction_Codes_20120510.xlsx) file, which contains the Acumatica ERP predefined transaction codes.

## To Create a Document Batch {#section_pfj_mjv_vxb .section}

1.  Open the [Journal Vouchers](../Shared/../UserGuide/GL_30_40_00.md) \(GL304000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the table toolbar, click **Add Row**.
3.  Make sure that the date specified in the **Transaction Date** box is correct. If it is not, enter the correct date.
4.  In the **Branch** box, select the branch with which the documents are associated.
5.  If needed, in the **Description** box, type a description for the batch.
6.  Click **Save**.
7.  On the **Transactions** tab, click **Add Row** to add a new row to the table. Add documents to the batch.
8.  If the **Control Total** box appears in the Summary area, enter the amount, which is equal to the credit and debit total.
9.  On the form toolbar, click **Save**.

You can release a batch that has a status of *Balanced*. Releasing the batch causes the system to generate and release the actual documents in the respective modules.

## To Add an Accounts Payable or Accounts Receivable Document to the Batch {#1 .section}

1.  Open the [Journal Vouchers](../Shared/../UserGuide/GL_30_40_00.md) \(GL304000\) form.
2.  In the **Batch Number** box, select the batch to which you want to add a document.
3.  On the **Transactions** tab, perform the following steps for each document you want to add:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Tran. Code** column, select the transaction code for the accounts payable or accounts receivable document you want to add.
    3.  Check the date in the **Transaction Date** column, and change it if necessary.
    4.  In the **Customer/Vendor** column, select the vendor or customer shown on the original document.
    5.  In the **Ext. Ref. Number** column, enter the reference number of the document used by the vendor or customer.
    6.  In the **Total Amount** column, enter the total amount of the document.
    7.  If needed, provide the tax category and the tax zone in the **Tax Category** and **Tax Zone** column respectively.
    8.  If needed, in the **Transaction Description** column, type a brief description of the document.
    9.  If you want to enter the document with details, select the **Split** check box, and do the following for each line item:
        1.  On the table toolbar, click **Add Row**. The new row has the same reference number as the bill header row.
        2.  In the **Total Amount** column, specify the line amount.
        3.  Specify the credit or debit account and a corresponding subaccount for the line, depending on the document type, if they are different from the default ones.
    10. Make sure that the document is balanced and its total credits equal total debits.
    11. If the **Control Total** box appears in the Summary area, enter the amount, which is equal to the credit and debit total.
4.  On the form toolbar, click **Save**.

## To Add a Cash Adjustment to the Batch {#3 .section}

1.  Open the [Journal Vouchers](../Shared/../UserGuide/GL_30_40_00.md) \(GL304000\) form.
2.  In the **Batch Number** box, select the batch to which you want to add a cash entry.
3.  On the **Transactions** tab, perform the following steps for each cash entry you want to add:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Tran. Code** column, select the transaction code of the cash transaction you want to add.
    3.  Check the date in the **Transaction Date** column, and change it, if needed.
    4.  In the **Entry Type ID** column, specify the entry type of the cash transaction.
    5.  In the **Ext. Ref. Number** column, enter the reference number shown on the external document.
    6.  Enter the **Total Amount** of the cash transaction.
    7.  If needed, in the **Transaction Description** column, type a brief description of the cash transaction.
    8.  If you want to enter the cash transaction without details \(by its summary\), specify both the **Credit Account** and **Debit Account** \(with corresponding subaccounts, if needed\).
    9.  If you want to enter the document with details, select the **Split** check box, and do the following for each line item of the document:
        1.  Click **Add Row** on the table toolbar. The new row has the same reference number as the transaction's header row.
        2.  In the **Total Amount** column, specify the line amount.
        3.  Specify the credit or debit account and a corresponding subaccount for the line, depending on the entry type \(expense or disbursement\).
    10. Make sure that the document is balanced and its total credits equal total debits.
    11. If the **Control Total** box appears in the Summary area, enter the amount, which is equal to the credit and debit total.
4.  On the form toolbar, click **Save**.

## To Add a Batch of Journal Transactions to the Document Batch {#4 .section}

**Note:** By using the quick entry form, you can add only transactions that have at least one entry \(debit or credit\) with the amount equal to the transaction total.

1.  Open the [Journal Vouchers](../Shared/../UserGuide/GL_30_40_00.md) \(GL304000\) form.
2.  In the **Batch Number** box, select the batch to which you want to add a general ledger entry.
3.  On the **Transactions** tab, perform the following steps for each general ledger entry you want to add:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Tran. Code** column, select the transaction code for the journal transaction you want to add.
    3.  In the **Transaction Date** column, check the date, and change it if necessary.
    4.  In the **Ext. Ref. Number** column, enter the reference number shown on the external document.

        **Note:** The length of this number must not exceed 15 characters, otherwise the system displays an error message and the journal voucher will not be released.

    5.  Enter the **Total Amount** of the batch.
    6.  If needed, in the **Transaction Description** column, type a brief description of the general ledger transaction.
    7.  If the batch includes only two journal entries, specify both the **Credit Account** and **Debit Account** \(with corresponding subaccounts\).
    8.  If the batch has split entries, select the **Split** check box, and do the following for each split journal entry:
        1.  On the table toolbar, click **Add Row**.
        2.  In the **Total Amount** column, specify the entry amount.
        3.  Specify the appropriate credit or debit account and subaccount for the journal entry.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Processing Vouchers](../UserGuide/GL__MNG_Document_Batches.md)

