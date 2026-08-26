# Invoice Payments: Manual Payment Application {#_5ed87c78-b875-4e5b-a509-710f12aea229 .concept}

After you have received a payment document from a customer and recorded it in the system, you then need to apply this payment document to the customer's outstanding documents to close the sale.

When you receive a payment from a customer, in Acumatica ERP, you create a corresponding payment document of the *Payment* or *Prepayment* type on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. Payment documents of this type can be applied to the following types of outstanding documents: *Invoice*, *Debit Memo*, and *Overdue Charge*.

In this topic, you will read about how to apply a payment to a specific outstanding document or to multiple outstanding documents. The topic describes how to perform additional operations, such as giving a cash discount, changing a cross rate, writing off a balance, and applying a payment to outstanding documents that belong to child customer accounts.

## Paying a Specific Outstanding Document {#section_xl4_4jv_vxb .section}

Usually a payment document that you receive from a customer references the outstanding document to which it should be applied. In this case, you can use one of the following forms as a starting point to pay the document:

-   [Invoices and Memos](AR_30_10_00.md) \(AR301000\): You select the outstanding document here and then click **Pay** or **Apply** on the form toolbar. The system redirects you to the [Payments and Applications](AR_30_20_00.md) form, where the system has filled in most of the settings of the new payment, which is almost ready for release. For step-by-step instructions, see [Invoice Payments: To Enter a Payment for a Specific Invoice](Finance_PayingARInvoices_Process_Activity.md).
-   [Payments and Applications](AR_30_20_00.md): On this form, you record the payment you have received from the customer, specify the outstanding document or documents in the table on the **Documents to Apply** tab, and release the payment. For step-by-step instructions on recording a payment, see [Invoice Payments: To Enter a Payment for a Specific Invoice](Finance_PayingARInvoices_Process_Activity.md).

In both cases, the system creates an application record \(including the paid amount\) for the outstanding document. When you release the payment, the system releases the application simultaneously.

You can track the history of payment applications on the **Application History** tab of the payment document.

## Paying Multiple Outstanding Documents {#section_bm4_4jv_vxb .section}

You use the [Payments and Applications](AR_30_20_00.md) form to pay multiple outstanding documents. In general, you perform the following steps:

1.  You record a payment, which you may or may not release.
2.  You form the list of documents to be paid. You can form it manually or you can direct the system to form the list of outstanding documents of the customer to be paid with the payment. For details, see the following sections: [Forming the List of Outstanding Documents Manually](#section_nyp_nt3_bw) and [Forming the List of Outstanding Documents Automatically](#section_zgw_nt3_bw).
3.  You distribute the payment amount among the manually added outstanding documents or modify the paid amount filled in by the system, if needed, for each automatically added outstanding document. For details, see [Distributing the Payment Amount](#section_erk_pt3_bw).
4.  If you have released the payment before forming the list of applications, you click **Release** on the form toolbar and the system releases the application records you have created. If you have not released the payment yet, you click **Release**, and the system releases the payment and its application records.

You can track the history of payment applications by using the **Application History** tab of the payment document.

## Forming the List of Outstanding Documents Manually {#section_nyp_nt3_bw .section}

On the [Payments and Applications](AR_30_20_00.md) form, you form the list of outstanding documents by adding documents to the table on the **Documents to Apply** tab one by one; you distribute the payment amount as you prefer. For step-by-step instructions, see [To Form a List of Applications Manually](AR__HOW_To_Form_List_InvoicesToBePaid_Manually.md).

If there are open documents of the *Credit Memo* type, you can add them to the list only if the list will include some outstanding documents when you finish forming it. The system uses the balances of the added credit memos for application to an outstanding document. Thus, the system applies the sum of the payment and credit memo's balances to the sum of the outstanding documents' balances.

The system creates application records for each included outstanding document, with the amount applied specified in the **Amount Paid \(Payment currency\)** column. When you release the payment, the system releases the application record simultaneously.

## Forming the List of Outstanding Documents Automatically {#section_zgw_nt3_bw .section}

When you create a new payment of the *Payment* or *Prepayment* type on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, as soon as you select the customer in the Summary area, the system forms the list of the customer's outstanding documents on the **Documents to Apply** tab. The system loads only open documents of the *Invoice*, *Debit Memo*, *Credit Memo*, and *Overdue Charge* type that do not have unreleased applications.

**Attention:** If the **Auto-Apply Payments** check box is selected for the customer in the **Financial Settings** section on the **Financial** tab of the [Customers](../Shared/../UserGuide/AR_30_30_00.md) \(AR303000\) form, the system does not load any documents on the **Documents to Apply** tab of the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) form automatically.

You can direct the system to load the list of outstanding documents. To begin this process, you click **Load Documents** on the table toolbar of the **Documents to Apply** tab. In the **Load Options** dialog box, which opens, you can specify any of the following selection criteria:

-   The company and branch for which the documents were created.
-   The date range of the documents to be loaded.
-   The range of reference numbers of the documents to be loaded.
-   The sort order in which the documents should be displayed. By default, documents are displayed in ascending order, sorted by due date and then reference number.

You can also specify the maximum number of documents to be loaded \(in the **Max. Number of Rows** box\) and indicate whether the **Amount Paid \(Payment currency\)** column should be automatically filled in when the system loads the documents \(by selecting the **Automatically Apply Amount Paid** check box\). If this check box is selected, the system applies the payment amount as described in the [Distributing the Payment Amount](#section_erk_pt3_bw) section of this topic.

When you click the **Load** or **Reload** button in the dialog box, the system closes the dialog box and forms the list of outstanding documents that meet your selected criteria on the **Documents to Apply** tab. Clicking the **Load** button adds documents that match the selected criteria to any documents that have already been added to the table, whereas clicking the **Reload** button first removes any documents that are listed in the table and then loads only the documents that match the selected criteria.

**Attention:** If the customer account has open documents of the *Credit Memo* type, the system lists them at the top of the list on this tab. The balances of the open credit memos increase the balance that can be applied to outstanding documents.

## Distributing the Payment Amount {#section_erk_pt3_bw .section}

When the system loads outstanding documents to the table on the **Documents to Apply** tab automatically \(that is, when the customer is selected for the entered payment\), the **Amount Paid \(Payment currency\)** column is not filled in.

When you load outstanding documents to the table by clicking **Load Documents** on the table toolbar, specifying selection criteria in the **Load Options** dialog box, and clicking **Load** or **Reload** to close the dialog box, the **Amount Paid \(Payment currency\)** column is filled in based on the value of the **Automatically Apply Amount Paid** check box in the dialog box as follows:

-   If the check box was selected, depending on the value specified in the **Payment Amount** box in the Summary area, one of the following happens:
    -   If **Payment Amount** is zero, the **Amount Paid \(Payment currency\)** of the document in the row becomes equal to the **Balance** of the document.
    -   If **Payment Amount** is nonzero, the payment amount is applied to the documents sequentially, starting with the first document displayed, and the **Amount Paid \(Payment currency\)** of the listed document becomes equal to the lesser of the following: the document balance \(in the **Balance** column of the row\) and the available balance of the payment \(in the **Available Balance** box of the Summary area\).
-   If the check box was cleared, the system does not fill in the **Amount Paid \(Payment currency\)** column.

You can apply the payment amount to the documents added to the **Documents to Apply** tab automatically by clicking **Auto-Apply** on the table toolbar. The system applies the payment amount to the documents as follows:

1.  The system applies the available payment balance to the first document in the list.
2.  If the available payment balance, including the balances of any open credit memos, has not been fully applied, the system applies the rest of the balance to the next document in the list and continues this process until the available payment balance is fully applied.

When you add an outstanding document to the table on the **Documents to Apply** tab manually, document by document, the system fills the **Amount Paid \(Payment currency\)** column as follows:

-   If the balance of the outstanding document is less than the payment available balance, the system fills the **Amount Paid \(Payment currency\)** column with the document balance.
-   If the balance of the outstanding document is more than the payment available balance, the system fills the **Amount Paid \(Payment currency\)** column with the payment balance.
-   If the payment amount is not specified and therefore the available balance of the payment is 0, the system fills in the **Amount Paid \(Payment currency\)** column with the document balance and warns you that the payment is out of balance. You can specify a payment amount that is equal to the value the system added to the **Amount Paid \(Payment currency\)** column. Alternatively, you can specify a smaller amount and adjust the value in the **Amount Paid \(Payment currency\)** column accordingly. If you specify a larger amount, you can add other outstanding documents to fully apply the payment. You can instead click the **Refresh** button right of the **Payment Amount** box in the Summary area to replace the payment amount with the total of amounts of the documents selected for application on the **Documents to Apply** and **Orders to Apply** tabs.

In the Summary area of the form, you can see the balance of the payment that is available for further application in the **Available Balance** box and the balance that has been applied in the **Applied to Documents** box.

The system creates application records for each outstanding document for which the applied amount is specified in the **Amount Paid \(Payment currency\)** column. When you release the payment, the system releases the application records simultaneously. For step-by-step instructions, see [Invoice Payments: To Load AR Documents Automatically](Finance_PayingARInvoices_To_Load_AR_Docs_Automatically.md).

## Correcting the List of Applications {#section_tm4_4jv_vxb .section}

When you form the list of outstanding documents on the **Documents to Apply** tab, the system creates an application record for each line. You can add new documents and remove or modify already-added documents until you release the application records by clicking **Release** on the form toolbar.

When you release the application records, the system moves these records to the **Application History** tab, where you can view \(but not modify\) the list of the applied documents.

If you have mistakenly applied a customer payment or prepayment to the wrong document, you can correct an application record. If the application record has not yet been released, you simply remove the incorrect line from the table on the **Documents to Apply** tab.

If the application record has been released, you reverse the released application record on the **Application History** tab by clicking the mistaken record and then clicking **Reverse Application** on the table toolbar. When you click the button, the system does the following:

-   Adds the reversed application record to the **Documents to Apply** tab with the negative application amount in the **Amount Paid \(Payment currency\)** column
-   Changes the status of the payment and of the applied document to *Open*
-   Changes the available balance and the application amount in accordance with the amount of the application that was reversed

You then release the reversed application record, and the system moves it to the **Application History** tab.

If you have mistakenly applied a customer refund to the wrong document and released the refund with its applications, you can correct the application record similarly. The only difference is that a customer refund cannot have an available balance after it was released. Thus, you must fully apply the available refund balance right after you have reversed the incorrect application record. You then release both the reversed application records and the new ones.

For step-by-step instructions, see [To Correct an Application Record](AR__How_Unapplying_Payments.md).

## Recording a Cash Discount {#section_bn4_4jv_vxb .section}

You can give a customer a discount for early payment when you apply the payment amount to an outstanding document.

If you have configured credit terms for the customer that define the cash discount period and the discount amount, the system automatically calculates whether to add a cash discount. If the cash discount period of the document has not ended, the system fills in the **Cash Discount Taken \(Payment currency\)** column for the document with the discount amount after you have added the document to the table on the **Documents to Apply** tab. You can change the discount amount if needed.

If the credit terms of the customer do not define any cash discount, you can fill in the **Cash Discount Taken \(Payment currency\)** column for the document with the discount amount after you have added the document, and correct the applied amount in the **Amount Paid \(Payment currency\)** column.

For details on configuring credit terms with a cash discount, see [Setup of Credit Terms](AR__con_Credit_Terms.md).

## Writing Off a Balance {#section_gn4_4jv_vxb .section}

If write-offs are enabled and configured in the system, as described in [Direct Write-Offs: Write-Off Setup](AR__CON_SettingUp_WriteOffs.md), you can write off an amount along with the application. For each document that you add for the application, you can specify the amount to write off in the **Balance Write-Off** column \(specifying a positive value for the amount of a balance write-off and a negative value for the amount of a credit write-off\) and the reason code in the **Write-Off Reason Code** column. The total amount of write-offs is displayed in the **Write-Off Amount** box in the Summary area.

Depending on your company's policy, you may need to use separate reason codes for balance write-offs and for credit write-offs. You define reason codes on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, selecting the *Balance Write-Off* option in the **Usage** box for a balance write-off or the *Credit Write-Off* option for a credit write-off. Alternatively, you can configure one reason code for both types of write-offs. In this case, you can select either the *Balance Write-Off* or the *Credit Write-Off* option in the **Usage** box.

For example, suppose that you want to record a payment in the amount of $100 for an invoice in the amount of $99. \(The customer overpaid $1 and you want to write off this amount to close both the payment and the invoice.\) You can write off $1 when you enter a payment for this invoice on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form by specifying `-1` in the **Balance Write-Off** column and selecting a reason code for credit write offs in the **Write-Off Reason Code** column.

When you release applications of this type, the system does not create a document of the *Balance WO* type. The system stores write-off details in the application record and generates a separate transaction to post to general ledger accounts.

## Applying a Payment to Documents of Child Customer Accounts {#section_ln4_4jv_vxb .section}

If the *Parent-Child Customer Relationship* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and parent-child relations between customer accounts are configured, you can add to the list of outstanding documents those that belong to child customer accounts. For details, see [Managing Parent-Child Relationships](Finance_Parent-Child_Relationship_Mapref.md).

## Reserving a Payment for Future Application {#section_nfb_jsv_fw .section}

You can reserve an open payment for future application. To mark an open payment as reserved, on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you click **Hold** on the form toolbar for the payment document with the *Open* status. The system changes the document status from *Open* to *Reserved*.

Reserved payments cannot be applied to outstanding documents and are excluded from the auto-application process. To release the payment from hold, click **Remove Hold** on the form toolbar.

**Parent topic:**[Paying AR Invoices](../UserGuide/Finance_PayingARInvoices_Mapref.md)

