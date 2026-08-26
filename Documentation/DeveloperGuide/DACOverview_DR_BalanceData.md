# DR DACs: Balance Data {#_b99d79db-ddc6-4b53-826d-b9284fff5643 .concept}

[DRRevenueBalance](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRRevenueBalance) and [DRRevenueProjection](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRRevenueProjection) are report DACs that are designed to store the deferred revenue recognition balances and the actual and projected recognition amounts. DRRevenueBalance stores balances and amounts for the deferred revenue account. DRRevenueProjection accumulates amounts for the sales revenue account. The balances of both DACs are updated simultaneously upon the creation, update, and recognition of any deferred revenue transactions.

The system uses both DACs for displaying deferred revenue reports. The DACs have the following dimensions by which the balances are tracked:

-   Branch
-   Account
-   Subaccount
-   Customer
-   Inventory item or item component
-   Project
-   Financial period

Similarly, the [DRExpenseBalance](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRExpenseBalance) DAC stores the deferred expense recognition balances, and the [DRExpenseProjection](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRExpenseProjection) DAC stores the actual and projected recognition amounts.

**Parent topic:**[Reviewing Deferred Revenue DACs](../DeveloperGuide/DACOverview_DR_Mapref.md)

