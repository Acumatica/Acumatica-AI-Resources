# Taxes Included in the Cost of Items: Rules of Cost Update {#_0fc87c12-e20b-412c-a5a7-265fe808992c .concept}

This topic explains how the system updates the item cost based on the types of the documents being processed and types of the items included in this documents. The rules described below apply to sales taxes of the *Input* tax group, use taxes, and partially deductible value-added taxes \(VAT\) that have the **Use Tax Expense Account** check box cleared on the **GL Accounts** tab on the [Taxes](TX_20_50_00.md) \(TX205000\) form.

**Attention:** If the **Use Tax Expense Account** check box is selected for a tax on the **GL Accounts** tab on the [Taxes](TX_20_50_00.md) form, the described rules are not applicable; the system always posts taxes to the **Tax Expense Account** of a tax.

## Stock Items with the Average, Specific, or FIFO Valuation Method {#section_txk_fjv_vxb .section}

If a purchase order includes any stock items with the *Average*, *Specific*, or *FIFO* valuation method selected on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, on release of the AP bill prepared for the purchase order, an inventory adjustment transaction is automatically generated. On release of this inventory adjustment transaction, the system posts the tax amounts to the item's inventory account.

If an accounts payable bill is processed for a purchase order before the corresponding purchase receipt is created, the tax amounts are posted to the inventory account on release of the purchase receipt.

## Stock Items with the Standard Valuation Method {#section_wxk_fjv_vxb .section}

If a purchase order includes any stock items with the *Standard* valuation method selected on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, in the GL transaction generated on release of the AP bill prepared for the purchase order, the tax amount is posted directly to the account defined by the **Tax Reason Code**, which is specified on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

## Stock Items That Are Out of Stock {#section_yxk_fjv_vxb .section}

If a purchase order includes any stock items that are not in stock, in the GL transaction generated on release of the AP bill prepared for the purchase order, the tax amount is posted directly to the account defined by the **Tax Reason Code**, which is specified on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

## Non-Stock Items Requiring a Purchase Receipt {#section_ayk_fjv_vxb .section}

If a purchase order includes any non-stock items with the **Require Receipt** check box selected on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, in the GL transaction generated on release of the AP bill prepared for the purchase order, the system accrues the calculated taxes to the **COGS/Expense Account**specified in the appropriate lines of the corresponding purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

## Update of Item Costs on Reversal of a Bill {#section_cyk_fjv_vxb .section}

On the reversal of an AP bill that includes taxable stock items with taxes included in the items' costs, the system generates a debit adjustment that reverses the inventory adjustment with included taxes that has been processed. On release of this debit adjustment, the system also generates a reversing inventory adjustment transaction \(that is, an inventory adjustment for which the opposite GL batch is generated\). When this reversing inventory adjustment transaction is released, the system subtracts the taxes from the cost of the items.

## Update of Item Costs on Return {#section_eyk_fjv_vxb .section}

On the release of a purchase return for taxable stock items with taxes included in the items' cost, the system automatically generates a debit adjustment with the appropriate tax amounts to be posted to the account specified in the tax reason code. The system calculates the tax amounts to be subtracted from the items' cost when they are returned depending on the option selected in the **Cost of Inventory Return From** box in the purchase return on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

**Parent topic:**[Including Taxes in the Cost of Items](../UserGuide/Taxes_Including_Tax_to_Item_Cost_Mapref.md)

