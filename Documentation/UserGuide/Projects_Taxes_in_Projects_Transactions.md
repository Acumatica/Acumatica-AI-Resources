# Taxes in Projects: Generated Transactions {#_11e31746-b359-4202-a355-8254fe2b7ab8 .concept}

As you work with projects, you create and process documents that may be subject to different types of taxes. When these documents are released, to update the account balances and record the taxes to the project budget, the system generates the GL transaction described in the following sections.

## Transaction Generated for an AR Invoice {#section_es3_fjv_vxb .section}

When you release a project-related AR invoice that is subject to taxes on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, the system generates the following GL transaction.

|Account|Source of Account|Project|Debit|Credit|
|-------|-----------------|-------|-----|------|
|Accounts Receivable account|Customer|Project in the document line|Total amount|0.00|
|Sales account|Item \(if specified\) or customer|Non-project code|0.00|Line amount excluding taxes|
|Tax Payable account|Tax settings|Project in the document line|0.00|Document tax amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form.

## Transaction Generated for an AP Bill {#section_nzj_fjv_vxb .section}

When you release a project-related AP bill that is subject to sales taxes on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, the system generates the following GL transaction.

|Account|Source of Account|Project|Debit|Credit|
|-------|-----------------|-------|-----|------|
|Accounts Payable account|Vendor|Project in the document line|00.00|Amount + tax amount|
|PO Accrual account \(for stock items and non-stock items requiring a purchase receipt\)|Dependent on the setting of the posting class of the item specified in the **Use PO Accrual Account From** box on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form|Non-project code|Amount|00.00|
|Expense account \(for non-stock items not requiring a purchase receipt\)|Item|
|Tax Expense account|Tax|Project in the document line|Tax amount|00.00|

When you release a project-related AP bill that is subject to use taxes on the [Bills and Adjustments](AP_30_10_00.md) form, the system generates the following GL transaction.

|Account|Source of Account|Project|Debit|Credit|
|-------|-----------------|-------|-----|------|
|Accounts Payable account|Vendor|*X* \(non-project code\)|00.00|Amount|
|PO Accrual account \(for stock items and non-stock items requiring a purchase receipt\)|Dependent on the setting of the posting class of the item specified in the **Use PO Accrual Account From** box on the [Posting Classes](IN_20_60_00.md) form|Project in the document line|Amount|00.00|
|Expense account \(for non-stock items not requiring a purchase receipt\)|Item|
|Tax Expense account|Tax code|Project in the document line|Tax amount|00.00|
|Tax Payable account|Tax code|Non-project code|00.00|Tax amount|

You can view the reference number of the GL batch generated for a particular AP bill in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Working with Taxes in Projects](../UserGuide/Projects_Taxes_in_Projects_Mapref.md)

