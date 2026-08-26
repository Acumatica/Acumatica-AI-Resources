# Payments with Write-Offs: Related Reports and Forms {#_570108be-9038-4c3c-9de2-b64fc6a5a721 .concept}

This topic describes reports and forms you may review to gather information about customer payments and the documents to which they have been applied.

**Attention:** If you do not see a particular form or report form, this could mean that you have signed in to the system with a user account that does not have access rights to the form. To access it, you should sign in as the *admin* user \(if you have permission to do so\), or contact your system administrator.

## Viewing Invoices Paid with a Payment Document {#section_mx2_hjv_vxb .section}

To check which invoices, debit memos, and overdue charges a customer payment is applied to, you open the payment document on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form and view the **Application History** tab.

**Attention:** You can see which payment documents were applied to a particular invoice on the **Applications** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

To view the documents that have been paid with a specific payment document, do the following:

1.  Open the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) \(AR302000\) form.
2.  In the **Type** box of the Summary area, select the type of the payment.
3.  In the **Reference Nbr.** box, select the payment whose applications you want to view.
4.  On the **Application History** tab, check the list of applications.

    This tab shows the history of applications rather than the list of documents paid by this payment. When an invoice is applied, the system adds a row with the invoice data, and the applied amount is listed in the **Amount Paid** column. When an invoice application is reversed, the system adds a row with the invoice data and shows the reversed paid amount \(that is, the amount with the negative sign\) in the **Amount Paid** column.


## Reviewing Payment Details {#section_qx2_hjv_vxb .section}

Once you have released a payment and its application to an invoice, you can review the details of the payment by running the [AR Register Detailed](AR_62_20_00.md) \(AR622000\) report. You can run this report directly \(by navigating to the report form\) or from the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form while you are viewing a payment by clicking **AR Register Detailed** \(under **Reports**\) on the More menu. If you run the report from the [Payments and Applications](AR_30_20_00.md) form, the report shows the details of the payment you were viewing. You can review the GL batch the system created when releasing the payment and the accounts that have been updated by the transaction.

**Parent topic:**[Processing Payments with Write-Offs](../UserGuide/Finance_ProcessingCustomerPayment_Mapref.md)

