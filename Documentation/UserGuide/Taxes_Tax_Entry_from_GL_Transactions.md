# Tax Entry from GL: Generated Transactions {#_01beeb54-dc4c-4a02-a664-daceafe21fe8 .concept}

As you create a taxable GL entry, the system generates the GL transaction described in the following section.

## General Ledger Transaction with Taxes {#section_ksh_fjv_vxb .section}

When you create and release a GL entry, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Expense account \(or income account\)|Account entered by the user when creating a GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form|Amount + tax amount|0.00|
|Tax Payable account|Account defined for the tax in the **Tax Payable** box on the [Taxes](TX_20_50_00.md) \(TX205000\) form|0.00|Tax amount|
|Accounts Payable account|Account entered by the user when creating a GL transaction on the [Journal Transactions](GL_30_10_00.md) form|0.00|Amount|

**Parent topic:**[Entering Taxes from the General Ledger](../UserGuide/Taxes_Entering_Taxes_from_GL_Mapref.md)

