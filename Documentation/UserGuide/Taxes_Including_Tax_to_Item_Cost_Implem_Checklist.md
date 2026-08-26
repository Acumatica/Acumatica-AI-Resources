# Taxes Included in the Cost of Items: Implementation Checklist {#_8947042e-68f2-4f37-b8d9-d6d6fef8e69e .concept}

To ensure that the system is configured properly for including taxes in the cost of items, make sure that the criteria listed in the following table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Taxes](TX_20_50_00.md) \(TX205000\)|In a tax that will be included in the cost of purchased items, the **Use Tax Expense Account** check box is cleared on the **GL Accounts** tab.|For details on configuring taxes of different types, see [Sales Taxes: To Configure a Sales Tax for Use in AP](../ImplementationGuide/SalesTaxes_Implem_Activity_AP.md), [Use Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_Use_Tax_Activity.md), and [Value-Added Taxes: To Create a Statistical VAT and Inclusive VATs](../ImplementationGuide/TX__how_To_Create_a_Value_Added_Tax.md).|
|[Reason Codes](CS_21_10_00.md) \(CS211000\)|The reason code of the *Adjustment* type that will be used for tax-related inventory adjustments has been defined in the system.|For details, see [Reason Codes: Implementation Activity](Reason_Codes_Implem_Activity.md).|
|[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)|The reason code of the *Adjustment* type that will be used for tax-related inventory adjustments has been specified in the **Tax Reason Code** box.| |

**Parent topic:**[Including Taxes in the Cost of Items](../UserGuide/Taxes_Including_Tax_to_Item_Cost_Mapref.md)

