# Invoice with Combined Subaccounts: Related Reports and Inquiries {#_02d09480-1eff-4df4-81fa-c89f83f6b56d .concept}

This topic describes reports and inquiry forms that you may want to review to gather information about AR invoices with subaccounts involved.

**Note:** If you do not see a report or an inquiry form that is mentioned in this topic, this could mean that you have signed in to the system with a user account that does not have access rights to the report or inquiry form. Contact your system administrator.

## Reviewing the Details of an Unreleased Invoice {#section_iwr_4jv_vxb .section}

When an invoice has not yet been released, you can review the details of the invoice by running the [AR Edit Detailed](../Shared/../UserGuide/AR_61_05_00.md) \(AR610500\) report. When you run this report from the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form by clicking **AR Edit Detailed** on the More menu \(under **Reports**\), the report shows the details of the invoice you had been viewing. You can review what GL batch the system will create when you release the invoice, which accounts will be updated by the transaction, and how the customer's balance will be affected.

When you run this report directly from the report form, you specify the needed report parameters and can view a list of unreleased invoices based on these parameters.

## Reviewing the Details of a Released Invoice {#section_jwr_4jv_vxb .section}

Once an invoice has been released, you can review the details of the invoice by running the [AR Register Detailed](../Shared/../UserGuide/AR_62_20_00.md) \(AR622000\) report. When you run this report from the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form by clicking **AR Register Detailed** on the More menu \(under **Reports**\), the report shows the details of the invoice you had been viewing. You can review the GL batch the system created when releasing the invoice and the accounts that have been updated by the transaction.

When you run this report directly from the report form, you specify the needed report parameters and can view a list of released invoices based on these parameters.

## Reviewing a Customer's Balance {#section_kwr_4jv_vxb .section}

After an invoice has been released, you can review the customer's balance on the [AR Balance by Customer](../Shared/../UserGuide/AR_63_25_00.md) \(AR632500\) report. On this report form, you select *Open Documents* in the **Report Format** box and specify the needed financial period.

In the report, you can review the open documents and customer balances at the end of the period, grouped by customer and by AR account. When you release an invoice or credit memo, the system updates the customer balance. **Customer Documents Total** is the total amount over all open documents for the customer.

## Reviewing a Customer's Information {#section_lwr_4jv_vxb .section}

You can review the balances of a specific customer on the [Customer Details](../Shared/../UserGuide/AR_40_20_00.md) \(AR402000\) form. When you open this inquiry from the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form by clicking **Customer Details** on the More menu \(under **Inquiries**\), the [Customer Details](../Shared/../UserGuide/AR_40_20_00.md) form shows the outstanding balances of the selected customer and a list of this customer’s documents that have the *Open* status. You can select the **Show All Documents** and **Include Unreleased Documents** check boxes in the Selection area of the form to expand the range of the listed documents.

## Printing an Invoice {#section_mwr_4jv_vxb .section}

You can use the [Invoice/Memo](../Shared/../UserGuide/AR_64_10_00.md) \(AR641000\) report to generate a ready-to-print version of a particular invoice; you then click **Print** on the report toolbar to print the invoice.

To quickly run this report when you are processing a particular invoice on the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form, on the More menu \(under **Printing and Emailing**\), click **Print**.

**Parent topic:**[Processing an Invoice with Combined Subaccounts](../UserGuide/Finance_Invoice_with_Combined_Subs_Mapref.md)

