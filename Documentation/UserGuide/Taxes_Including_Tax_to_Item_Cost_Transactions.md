# Taxes Included in the Cost of Items: Generated Transactions {#_dc8d2355-7b34-41af-9059-2d53cd07b451 .concept}

To process the purchase of items, you create a purchase order, and then process the purchase receipt and AP bill related to the purchase order. The following sections describes the GL transactions that are generated for the lines of an AP bill that are subject to a tax that has the **Use Tax Expense Account** check box cleared on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form.

You can view the reference number of the GL batch generated for a particular AP bill in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transactions Generated for Stock Items {#section_jdl_fjv_vxb .section}

If a purchase order includes any stock items with the *Average*, *Specific*, or *FIFO* valuation method selected on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, on release of the AP bill prepared for the purchase order, an inventory adjustment transaction is automatically generated. The following cost-updating transactions are generated on release of this inventory adjustment.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Inventory account|Dependent on the setting of the posting class of the item specified in the **Use Inventory / Accrual Account From** box on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form|Tax amount**Attention:** For a partially deductible VAT, only the expense part of the calculated tax is posted to the item's Inventory account.

|00.00|
|PO Accrual account|Dependent on the setting of the posting class of the item specified in the **Use PO Accrual Account From** box on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form|00.00|Tax amount|

If a purchase order includes any stock items that are not in stock or any stock items with the *Standard* valuation method selected on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the following cost updating transactions are generated on release of the AP bill prepared for the purchase order.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Tax reason code account|Reason code|Tax amount|00.00|
|PO Accrual account|Dependent on the setting of the posting class of the item specified in the **Use PO Accrual Account From** box on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form|00.00|Tax amount|

## Transactions Generated for Non-Stock Items Requiring a Purchase Receipt {#section_ndl_fjv_vxb .section}

If a purchase order includes any non-stock items with the **Require Receipt** check box selected on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the following cost-updating transactions are generated on release of the AP bill prepared for the purchase order.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|COGS/Expense Account|Dependent on the setting of the posting class of the item specified in the **Use COGS / Expense Account From** box on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form\)|Tax amount|00.00|
|PO Accrual account|Dependent on the setting of the posting class of the item specified in the **Use PO Accrual Account From** box on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form\)|00.00|Tax amount|

**Attention:** For the list of transactions that are generated for a purchase order that is subject to a tax that have the **Use Tax Expense Account** check box selected on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form, see [Purchases with Sales Taxes: Generated Transactions](Taxes_Processing_Purchase_withSalesTax_Transactions.md), [Purchases with Use Taxes: Generated Transactions](Taxes_Processing_Purchase_with_UseTax_Transactions.md), and [Value-Added Taxes: Inclusive Output and Input VATs at the Document Level](../ImplementationGuide/Taxes_Configuring_VAT_Inclusive_VATs_Document_Level.md).

**Parent topic:**[Including Taxes in the Cost of Items](../UserGuide/Taxes_Including_Tax_to_Item_Cost_Mapref.md)

