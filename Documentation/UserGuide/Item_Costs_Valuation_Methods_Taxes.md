# Item Costs and Valuation Methods: Inclusion of Tax Amounts in Costs for Stock Items {#_e8bb396b-11fc-4405-a939-71259c8a84cd .concept}

You can configure the system to include use taxes, sales taxes of the *Input* group, and partially deductible VATs in the cost of the stock items being purchased. For tax amounts to be included in the costs of items in purchase orders, the following actions must be completed in the system:

-   A tax reason code of the *Adjustment* type must be defined on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, and specified as the **Tax Reason Code** on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.
-   In the tax settings on the **GL Accounts** tab, on the [Taxes](TX_20_50_00.md) \(TX205000\) form, the **Use Tax Expense Account** check box must be cleared.

For a stock item with the *Average*, *Specific*, or *FIFO* valuation method, on release of an AP bill prepared for a purchase order that includes the item, an inventory adjustment on the [Adjustments](IN_30_30_00.md) \(IN303000\) form is automatically generated to post the tax amounts to the item's inventory account.

The system shows the link to the generated inventory adjustment in the **Adjustment Nbr.** box on the **Financial** tab on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form for the AP bill. On release of the inventory adjustment, the system generates the following GL transactions:

-   Inventory Account, Dr, Tax Amount
-   PO Accrual account, Cr, Tax Amount

**Tip:** For partially deductible VAT taxes, only the expense part is posted to the item's inventory account.

For stock items with the *Standard* valuation method, in the GL transaction generated on release of the AP bill that includes the items, the tax amount is posted directly to the account defined by the **Tax Reason Code**. For more information on including taxes in the cost of items, see [Taxes Included in the Cost of Items: General Information](Taxes_Including_Tax_to_Item_Cost_GeneralInfo.md).

**Parent topic:**[Managing Item Costs and Valuation Methods](../UserGuide/Item_Costs_Valuation_Methods_Mapref.md)

