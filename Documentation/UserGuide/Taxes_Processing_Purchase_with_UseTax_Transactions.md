# Purchases with Use Taxes: Generated Transactions {#_ddabd562-cfc3-4150-a8c3-69d106dae7c9 .concept}

An AP bill is created on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form for a purchase order and purchase receipt, and the transactions generated on release of this AP bill differ based on the applicable taxes included in the AP bill and the type of the item in a line of the AP bill. The following table lists the transactions that are generated on release of an AP bill that is subject to a use tax that has the **Use Tax Expense Account** check box selected and the **Tax Expense Account** specified on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form.

**Attention:** For the transactions generated for AP documents that are subject to a use tax for which the **Use Tax Expense Account** check box is cleared, see [Taxes Included in the Cost of Items: Generated Transactions](Taxes_Including_Tax_to_Item_Cost_Transactions.md).

## Stock Items and Non-Stock Items Requiring a Purchase Receipt {#section_fpk_fjv_vxb .section}

For the lines of an AP bill with stock items or non-stock items with the **Require Receipt** check box selected on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, when the AP bill is released, the following GL transactions are generated.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|00.00|Amount|
|PO Accrual account|Dependent on the setting of the posting class of the item specified in the **Use PO Accrual Account From** box on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form\)|Amount|00.00|
|Tax Expense Account|Tax code|Tax amount|00.00|
|Tax Payable Account|Tax code|00.00|Tax amount|

## Non-Stock Items Not Requiring a Purchase Receipt {#section_hpk_fjv_vxb .section}

For the lines with non-stock items that have the **Require Receipt** check box cleared on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, when the AP bill is released, the following GL transactions are generated.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|Vendor|00.00|Amount|
|Expense account|Item|Amount|00.00|
|Tax Expense Account|Tax code|Tax amount|00.00|
|Tax Payable Account|Tax code|00.00|Tax amount|

You can view the reference number of the GL batch generated for a particular AP bill in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Processing Purchases with Use Taxes](../UserGuide/Taxes_Processing_Purchase_with_Use_Tax_Mapref.md)

