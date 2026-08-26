# Applying Reverse VAT: Generated Transactions {#_a70c2589-90fd-4f79-b96c-493e66df9072 .concept}

As you process purchases with a reverse VAT, you create and process an AP bill. To update the vendor balance and calculate a reverse VAT that should be paid to and later claimed from the tax agency, the system generates the GL transactions described in the following section.

## Transaction Generated for an AP Bill {#section_bjp_fjv_vxb .section}

When you create and release an AP bill with a reverse VAT applied, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Expense account|The expense account specified for the document line on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|Amount|0.00|
|Accounts Payable account|The AP account of the vendor specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Amount|
|Tax Claimable account|The Tax Claimable account specified for the reverse VAT of the *Input* type on the [Taxes](TX_20_50_00.md) \(TX205000\) form|Tax amount|0.00|
|Tax Payable account|The Tax Payable account specified for the general VAT of the *Output* type on the [Taxes](TX_20_50_00.md) form|0.00|Tax amount|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

**Parent topic:**[Applying a Reverse VAT](../UserGuide/Taxes_Applying_Reverse_VAT_Mapref.md)

