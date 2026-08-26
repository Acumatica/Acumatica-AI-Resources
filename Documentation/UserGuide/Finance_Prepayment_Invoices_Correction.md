# AR Prepayment Invoices: Correction of a Prepayment Invoice {#_b8cac3f3-afdd-4e02-8f20-e81c2ea54c8a .concept}

In certain cases, a prepayment invoice may need to be voided or reversed. This could happen, for instance, if the items included in the prepayment invoice are no longer needed, or if the data entry clerk made an error while entering the specified amount.

## Writing Off the Unpaid Balance of Partially Paid Prepayment Invoices { .section}

You can write off the unpaid balance of prepayment invoices that have not been paid in full.

To do this, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you open a prepayment invoice with the *Pending Payment* status. On the More menu \(under **Corrections**\), you click the **Write Off Unpaid Balance** command. The system creates a *Credit Memo* document with the *Write-off of prepayment invoice \[Reference Nbr.\]* description and opens it on the current form. On the **Details** tab, the credit memo has a single line that summarizes all detail lines of the prepayment invoice and displays the invoice’s unpaid balance in the **Ext. Price** column. This amount cannot be edited. On the **Applications** tab, the system has added the related prepayment invoice.

On release of the credit memo, the system generates a GL transaction thst debits the customer's prepayment account and credits the Accounts Receivable account. The system specifies the transaction’s reference number on the **Financial** tab of the current form. Once the credit memo is released, it is assigned the *Closed* status; the prepayment invoice still has the *Unapplied* status. The prepayment invoice can be applied to the customer's sales invoices or debit memos or linked to the customer's sales orders.

**Important:** Prepayment invoices can be linked to sales orders if the *Inventory and Order Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

You cannot reverse the application of the credit memo that was created during the write-off of the unpaid balance of a prepayment invoice.

## Voiding the Unpaid Prepayment Invoices { .section}

You can void prepayment invoices with the *Pending Payment* status \(those that have been released but not yet paid\). The system voids a prepayment invoice by writing off its unpaid balance.

To do this, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you open the prepayment invoice with the *Pending Payment* status. On the More menu, you click **Write Off Unpaid Balance** under the **Corrections** section. The system creates a *Credit Memo* document with the *Voiding of prepayment invoice \[Reference Nbr.\]* description and opens it on the current form. On the **Details** tab, the credit memo has a single line that summarizes all detail lines of the prepayment invoice and displays the invoice’s unpaid balance in the **Ext. Price** column. This amount cannot be edited. On the **Applications** tab, the system has added the related prepayment invoice.

On release of the credit memo, the system generates a GL transaction that debits the customer's prepayment account and credits the Accounts Receivable account. This GL transaction reverses the GL transaction that was generated on release of the prepayment invoice. The system specifies the reference number of the newly created transaction on the **Financial** tab of the current form. Once the credit memo is released,it is assigned the *Closed* status, and the prepayment invoice is assigned the *Voided* status.

You cannot reverse the application of the credit memo that was created during the write-off of the unpaid balance of a prepayment invoice.

**Parent topic:**[Processing Prepayment Invoices in AR](../UserGuide/Finance_Prepayment_Invoices_Mapref.md)

