# Tax Report for VAT: Generated Transactions {#_99f11410-a67f-4a0f-a93b-f0a6b127b3fd .concept}

As you release a tax report, you create and process an AP bill. To update the balance of the vendor \(tax agency\), the system generates the GL transaction described in the following section.

## Transaction Generated for an AP Bill for the Tax Agency {#section_cq4_fjv_vxb .section}

When you create and release an AP bill, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Tax Payable account|The Tax Payable account of the tax specified on the [Taxes](TX_20_50_00.md) \(TX205000\) form|Accumulated amount of *Output* taxes|0.00|
|Accounts Payable account|The Accounts Payable account of the tax agency, specified on the [Vendors](AP_30_30_00.md) \(AP303000\)|0.00|Accumulated tax amount \(*Output* taxes–*Input* taxes\)|
|Tax Claimable account|The Tax Claimable account of the tax specified on the [Taxes](TX_20_50_00.md) form|0.00|Accumulated amount of *Input* taxes|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

**Parent topic:**[Preparing a Tax Report for Value-Added Taxes](../UserGuide/Taxes_Preparing_a_Tax_Report_VAT_Mapref.md)

