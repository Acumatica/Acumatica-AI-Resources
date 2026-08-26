# Estimating: Price Breaks {#_156aad04-d6aa-48ce-b73a-e764c93dbe22 .concept}

In Acumatica ERP, you can create estimates with multiple price points based on the quantity of units a customer plans to purchase.

By specifying price breaks on estimates, you can accurately reflect cost variations based on order quantities and subcontracting costs, so that you can maintain margins and provide competitive pricing to customers. If you are a sales engineer, you may find the new functionality beneficial in the following scenarios:

-   If a vendor provides quantity price breaks for purchase parts, you can specify these price breaks on the estimate to accurately reflect how the quantity ordered by the manufacturing customer affects the cost and margin of the finished product.
-   If subcontracting costs are involved, minimum flat fees may be charged by subcontractor vendors for smaller order quantities. By specifying these price breaks on the estimate, you can accurately calculate the increased price and cost of the product, ensuring that margins are maintained despite the additional costs.
-   If you intend to provide discounts for order quantities in batch or lot size increments by reducing the markup, you can specify price breaks on the estimate and thus adjust pricing accordingly for different order quantities. This ensures that customers will receive discounts for larger orders while the company still meets its margin requirements.

## Estimates with Price Breaks { .section}

By using the **Price Breaks** tab of the [Estimate](AM_30_30_00.md) \(AM303000\) form, you can add, update, or remove price breaks for primary revisions of estimates with the *New* or *In Process* status. The system automatically calculates the cost and price components for each price break.

Among the price breaks listed on the **Price Breaks** tab, one is always marked as primary—that is, the **Primary** check box is selected for that price break. The settings of the primary price break are the source for the order quantity and cost and price components displayed on the **Totals** tab of the form. If a user creates an estimate for a sales quote, the system uses the quantity specified in the primary price break of the estimate as the order quantity.

For each price break, you can specify the following settings:

-   The lead time if the **Override Lead Time** check box is selected for that price break
-   The unit price if the **Override Unit Price** check box is selected for that price break
-   The overall markup percent if the **Override Overall Markup \(%\)** check box is selected for that price break
-   The markup percent for any cost component
-   Any cost component if the corresponding check box that enables the override is selected for that price break

If you manually update a cost component in a price break, the system automatically recalculates the costs and prices of the price break that have not been overridden manually.

## Price Breaks in Reports { .section}

By selecting check boxes in the **Print** column of the table on the **Price Breaks** tab of the [Estimate](AM_30_30_00.md) \(AM303000\) form, you can indicate which price breaks are to be included in the [Sales Quote](CR_60_45_00.md) \(CR604500\), [Quote](SO_64_10_00.md) \(SO641000\), and [Estimate Summary](AM_64_10_00.md) \(AM641000\) reports.

In the out-of-the-box system, these reports display estimates if the information is available, without requiring any additional modifications.

**Parent topic:**[Estimating](../UserGuide/MFG_Estimating_Mapref.md)

