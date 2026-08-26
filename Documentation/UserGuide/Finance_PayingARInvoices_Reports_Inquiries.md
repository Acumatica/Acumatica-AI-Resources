# Invoice Payments: Related Reports and Inquiries {#_563a67f4-3b32-4789-9ffb-7108a690e4a4 .concept}

This topic describes the reports, inquiries, and forms you may review to gather information about AR payments.

**Attention:** If you do not see a report or inquiry, this could mean that you have signed in to the system with a user account that does not have access rights to the form. Sign in as the *admin* user, or contact your system administrator.

## Reviewing the Customer Balance {#section_uy4_4jv_vxb .section}

You can review the balance of a specific customer by running the [AR Balance by Customer](../Shared/../UserGuide/AR_63_25_00.md) \(AR632500\) report. To review payment applications along with documents, select the *Open + Current Period* report format and select the **Include Applications** check box on the **Report Parameters** tab. Document applications are listed under each document in the report. The **Applied** column shows the period to which the application was posted. The **Closed** column displays the period in which the document was closed. For open documents, the **Closed** column is empty.

For the *COFFEESHOP* customer, the report would show the payment applied to the invoice in the *01-2026* period.

If all the documents have been paid within a financial period, the customer's balance will be zero at the end of this period.

## Reviewing Payment Details {#section_vy4_4jv_vxb .section}

Once you have released a payment and its application to an invoice, you can review the details of the payment by running the [AR Register Detailed](AR_62_20_00.md) \(AR622000\) report. When you run this report from the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form by clicking **AR Register Detailed** \(under **Reports**\) on the More menu, the report shows the details of the payment opened on this form. You can review the GL batch the system created when releasing the payment and the accounts that have been updated by the transaction.

**Parent topic:**[Paying AR Invoices](../UserGuide/Finance_PayingARInvoices_Mapref.md)

