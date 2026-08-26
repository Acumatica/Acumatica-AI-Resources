# Auto-Applying Payments: General Information {#_1717f920-2056-4429-8d2b-9501b7559797 .concept}

Manually applying payment documents to invoices may require a significant amount of time if your company sells a lot in a financial period. To ease this process, Acumatica ERP provides the functionality to automate the application of payment documents.

In this chapter, you will read about the auto-application options offered by the system, their configuration, and implementation details.

## Learning Objectives {#section_wcq_4jv_vxb .section}

In this chapter, you will learn how to do the following:

-   Run the automatic payment application process
-   Review and release the payment applications prepared by the system

## Applicable Scenarios {#section_zcq_4jv_vxb .section}

You use auto-application of payments to AR documents in the following cases:

-   You work with a customer who purchases very frequently; therefore, there are a lot of invoices and payments involved. For this customer, you can turn on automatic application of new payments to outstanding documents associated with the customer account. For details, see [Auto-Application for a Customer Account](#section_uyd_bhd_cw).
-   You want to apply all open payment documents recorded in the system to outstanding documents at some particular time, such as before preparing customer statements. You use the [Auto-Apply Payments](AR_50_60_00.md) \(AR506000\) mass processing form for this purpose. For details, see [Auto-Application for Multiple Documents](#section_f3j_5nd_cw).
-   It is common in your company to receive payments in advance and you want to apply open payments when you record the related invoice. For details on applying payments when recording invoices, see [AR Invoices: Invoice Recording](AR__CON_InvoiceRecording.md).

## Auto-Application for a Customer Account {#section_uyd_bhd_cw .section}

Suppose that your company has customers who purchase frequently and you want to save time on the application of their documents with the *Payment* type to outstanding documents. For such customers, you select the **Auto-Apply Payments** check box on the **General** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.

When you release a new payment \(with the *Balanced* status\) of one of these customers on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the system automatically applies the payment to any outstanding documents of this customer. The system sorts outstanding documents in descending order by their due date and then their reference number.

**Attention:** For auto-application to occur, when you release the payment, it must not have any outstanding documents specified on the **Documents to Apply** tab.

The system forms the list of outstanding documents and distributes the payment amount as follows:

1.  If the customer account has open documents of the *Credit Memo* type, the system adds them at the top of the list. The balances of the open credit memos increase the balance that can be applied to outstanding documents.
2.  If the **Apply Payments to Overdue Charges First** check box is selected on the [Accounts Receivable Preferences](../Shared/../UserGuide/AR_10_10_00.md) \(AR101000\) form and the customer account has open documents of the *Overdue Charge* type, the system distributes the available payment balance among these documents. If the available payment balance, including the balances of any open credit memos, has not been fully applied, the system searches for outstanding documents of other types.
3.  If the customer account has outstanding documents, the system applies the available payment balance to the first document in the list. If the available payment balance, including the balances of any open credit memos, has not been fully applied, the system applies the rest of the balance to the next document in the list and continues this process until the available payment balance is fully applied.

**Note:** If the *Multibranch Support* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form, the system searches among all outstanding documents associated with the customer account, regardless of the branch specified for the documents.

The system creates application records for each paid outstanding document and releases the application records simultaneously with the payment.

## Auto-Application for Multiple Documents {#section_f3j_5nd_cw .section}

Before you prepare statements for your customers, we recommend that you apply open payment documents from customers to any corresponding invoices and calculate any overdue charges, to avoid incorrect calculation of aged balances. For a statement cycle, if the **Require Payment Application Before Statement Processing** check box is selected on the [Statement Cycles](AR_20_28_00.md) \(AR202800\) form, the system will issue a warning if you try to process statements while there are open payments of customers involved in the statement cycle.

**Tip:** You can review the list of open documents of the customers by using Acumatica ERP reports, as described in [Invoice Payments: Payment Processing Flow](AR__CON_PaymentFlow.md).

If there are open payments and credit memos, you can go through these documents one by one and apply them to the outstanding documents manually, as described in [Invoice Payments: Manual Payment Application](AR__CON_PaymentApplication.md), or you can use the [Auto-Apply Payments](AR_50_60_00.md) \(AR506000\) mass processing form.

On this form, you select a statement cycle or multiple statement cycles to specify the group of customers for which the system will run the auto-application process. When you run the process \(by clicking **Process** or **Process All** on the form toolbar\), the system does the following for each customer that is assigned to the selected statement cycles:

1.  Searches for all open payments and prepayments, and sorts these documents in ascending order by the document date, document type, and reference number. If you have selected the **Apply Credit Memos** check box on the form, the system includes open credit memos in the list of payments.
2.  Searches for all open debit memos, invoices, and overdue charges, and sorts these documents in ascending order by due date. If the **Apply Payments to Overdue Charges First** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the system moves any overdue charges to the top of the list.
3.  Applies any found credit memos \(if included\) and payments to the outstanding documents one by one by creating the corresponding application records, starting with the first credit memo or payment and the first outstanding document.
4.  If you have selected the **Release Batch When Finished** check box on the form, releases application records and closes documents whose balance becomes 0. If this check box is cleared, you need to release application records manually for each payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form or by using the [Release AR Documents](AR_50_10_00.md) \(AR501000\) mass processing form. For details, see [Invoice Payments: Release of Payments](AR__CON_PaymentRelease.md).

    **Attention:** If the **Automatically Post on Release** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) form, the system also posts the released batches.


After the process is complete, for each payment, you can view the list of applications that have been saved but not yet released on the **Documents to Apply** tab of the [Payments and Applications](AR_30_20_00.md) form. You can track the history of released payment applications by using the **Application History** tab of the form.

## Exclusion from the Automatic Application of Payments {#section_odq_4jv_vxb .section}

The system excludes payments and prepayments from the list of payments that can be applied to outstanding documents if they meet at least one of the following criteria:

-   The open payment is linked to a sales order. That is, the payment has a reservation record or multiple reservation records on the **Orders to Apply** tab of the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) \(AR302000\) form. For details, see [Reserving Payments for Sales Orders](../Shared/../UserGuide/SO__con_Payment_Reservation.md).
-   The open payment was put on hold. That is, a user clicked **Hold** on the form toolbar of the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) form for the payment with the *Open* status, and the system changed the document status from *Open* to *Reserved*.

    **Tip:** To release the payment from hold, click **Remove Hold** on the form toolbar.


Thus, the system ignores these payments when you record an invoice and want to perform an application, as well as when you initiate the auto-application process on the [Auto-Apply Payments](AR_50_60_00.md) \(AR506000\) mass processing form.

**Parent topic:**[Auto-Applying Payments to Documents](../UserGuide/Finance_AutoApplication_to_Documents_Mapref.md)

