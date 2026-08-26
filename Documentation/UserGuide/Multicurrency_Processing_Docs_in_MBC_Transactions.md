# Documents in Different Base Currencies: Generated Transactions {#_b34fe806-4d7d-497d-9cba-e8797e2861ad .concept}

As you process AR and AP documents between companies with different base currencies, you create and release an AR invoice and an AP bill. To update the customer and vendor balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for an AR Invoice {#section_pty_3jv_vxb .section}

When you create and release an AR invoice, the system generates the following general ledger transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|*19010 \(Accounts Receivable - Related Company\)*|The customer's AR account specified on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.|Amount|00.00|
|*43000 \(Related Company Sales\)*|The customer's sales account specified on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) form if *Customer Location* is selected in the **Use Intercompany Sales Account From** box on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. If *Inventory Item* is selected in this box, the system instead uses the sales account of the item specified on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form.|00.00|Amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Transaction Generated for an AP Bill {#section_sty_3jv_vxb .section}

When you create and release an AP bill, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|*26010 \(Accounts Payable - Related Company\)*|The vendor's AP account specified on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.|00.00|Amount|
|*53100 \(Intercompany Expenses\)*|The vendor's expense account specified on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) form, if *Vendor Location* is selected in the **Use Intercompany Expense Account From** box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. If *Inventory Item* is selected in this box, the system instead uses the expense account of the item specified on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form.|Amount|00.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

**Parent topic:**[Processing Documents Between Companies with Different Base Currencies](../UserGuide/Multicurrency_Processing_Docs_in_MBC_Mapref.md)

