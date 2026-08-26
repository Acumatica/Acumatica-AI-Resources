# To Form a List of Applications Manually {#_3ef0087f-f9db-4640-9ac6-1c4975bd55e3 .task}

You can apply a customer payment or prepayment to any number of invoices, debit memos, and overdue charges by using the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) \(AR302000\) form. If there are open credit memos for the customer, they also can be used in payment application.

In the Summary area of the form, the **Available Balance** box holds the balance of the payment that is available for further application, and the **Applied to Documents** box contains the balance that has been applied.

## To Form a List of Outstanding Documents Manually {#section_yy4_4jv_vxb .section}

1.  Open the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) \(AR302000\) form.
2.  In the **Type** box of the Summary area, select *Payment* or *Prepayment*, depending on the document you want to apply.
3.  In the **Reference Nbr.** box, select the reference number of the payment or prepayment you want to apply.
4.  On the table toolbar of the **Documents to Apply** tab, click **Load Documents** to open the **Load Options** dialog box.
5.  If needed, in the dialog box, select the customer documents by specifying any of the following criteria:

    -   The company and branch to which the documents belong, in the **Company/Branch** box
    -   The date range of the documents to be loaded, in the **From Date** and **To Date** boxes
    -   The range of reference numbers of documents to be loaded, in the **From Ref. Nbr.** and **To Ref. Nbr.** boxes
    -   The maximum number of documents to be selected from the database that comply with any other criteria you have specified, in the **Max. Number of Rows** box
    You can also specify the way the system should order the documents on the list by selecting the appropriate option button under **Sort Order**. By default, the **Due Date, Reference Nbr.** option button is selected.

6.  Leave the **Automatically Apply Amount Paid** check box selected to automatically apply the payment amount to the loaded documents.
7.  Click **Load** or **Reload**.

    On the **Documents to Apply** tab, the system loads the list of the open invoices and memos that match any criteria you have specified in the dialog box. The **Load** button adds the documents that match the selected criteria to any documents that have already been added to the table, whereas the **Reload** button first removes any documents from the table and then loads only the documents that match the selected criteria. If there are open credit memos, they are displayed at the top of the list. If you have specified no criteria, the system loads the documents according to the default sort order.

8.  Apply the payment amount to the documents in the table and adjust the application amounts, if necessary, by doing any of the following:
    -   Click **Auto-Apply** on the table toolbar to apply the payment to the listed documents automatically. The system applies the payment amount, starting with the first document displayed in the table.
    -   Select the unlabeled check box in the row of the document. The system updates the **Amount Paid \(Payment currency\)** column with the document balance \(that is, the value in the **Balance** column of the row.\)
    -   Specify the application amount for the document in the **Amount Paid \(Payment currency\)** column.
9.  If the payment document for which you have formed the list of the outstanding documents has the *Balanced* status, you can proceed as follows:
    -   To save the document with the *Balanced* status, on the form toolbar, click **Save**.
    -   To release the payment document and its applications, on the form toolbar click **Release**.

        **Attention:** When you release the payment document, the status of the payment changes to *Closed* if the application amount is equal to the payment amount. If the application amount is less than the payment amount, the status of the released payment document changes to *Open*.

10. If the payment document for which you have formed the list of the outstanding documents has the *Open* status, you can proceed as follows:
    -   To save the document with the *Open* status and the list of applications you have formed, on the form toolbar, click **Save**.
    -   To release the applications, click **Release**. When the application records are released, the status of the payment changes to *Closed* if the application amount is equal to the payment amount. If the application amount is less than the payment amount, the status of the released payment document remains *Open*.

**Parent topic:**[Paying AR Invoices](../UserGuide/Finance_PayingARInvoices_Mapref.md)

