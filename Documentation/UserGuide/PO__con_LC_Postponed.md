# Adjusting the Landed Cost Variance {#_0a7b52b2-1116-4c61-bf79-fb0a6c4f9d1e .concept}

Some landed costs, such as freight, are typically known when the goods are received. Other types of landed costs may become known later, when a bill from the service provider is received. When you need to enter the landed costs of a specific type in a landed cost document, if the exact amount of the landed costs is not known yet, you can enter the estimated amount for the appropriate landed cost code in the landed cost document on the **Landed Costs** tab of the [Landed Costs](PO_30_30_00.md) \(PO303000\) tab.

Later, when the exact amount becomes known, you can manually adjust the amount of the landed costs in the accounts payable bill generated for the landed cost document, and release the bill. The difference between the estimated amount and the adjusted amount is automatically added to the Landed Cost Variance account specified on the [Landed Cost Codes](PO_20_20_00.md) \(PO202000\) form for the landed cost used on the original receipt.

The following accounts are involved in the GL transactions that are generated on release of the AP bill to the landed cost vendor:

-   Accounts Payable account of the landed cost vendor
-   Landed Cost Accrual account of the landed cost code
-   Landed Cost Variance account of the landed cost code

On release of the AP bill to the landed cost vendor, if the landed cost amount specified in the landed cost document hasn't been changed, the following general ledger transactions are posted:

-   Accounts Payable account: Cr, landed cost amount
-   Landed Cost Accrual account: Dr, landed cost amount

On release of the AP bill to landed cost vendor, if the landed cost amount has been changed in the bill, the following general ledger transactions are posted:

-   Accounts Payable account: Cr, bill amount
-   Landed Cost Accrual account: Cr, correction amount
-   Landed Cost Variance account of the landed cost code: Dr, correction amount
-   Landed Cost Accrual account: Dr, bill amount

For information on how the system allocates the landed cost variance for landed costs added to items' cost, see [Adding Landed Costs to Items' Costs](PO__con_Updating_Cost_by_LC.md).

**Parent topic:**[Allocating Landed Costs](../UserGuide/PO__MNG_Landed_Costs.md)

