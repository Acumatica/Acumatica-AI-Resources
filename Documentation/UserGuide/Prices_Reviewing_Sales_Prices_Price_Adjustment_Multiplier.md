# Sales Prices: Price Adjustment Multiplier {#_461a8e6e-9d21-4646-8be0-2e727636e78b .concept}

If your company has many items in a price list and each item can be sold in different units of measure, you may want to keep and update sales prices for only one unit of measure, and configure the system to update the prices for other units of measure automatically based on this price. In this topic, you will read about the price adjustment multiplier in Acumatica ERP.

For example, suppose that you sell some stock item for which the *EA* base unit and the *BOX* non-base unit are configured so that 1 *BOX* = 10 *EA* \(here *10* is the conversion factor\). After you specify the base price of $5 per the *EA* unit, the system will automatically calculate and suggest the $50 price for each *BOX* if you select the *BOX* unit of measure in the document line.

Now suppose that you want to sell 1 *BOX* for $45 instead of $50. You cannot adjust the conversion factor, because it affects the quantity of items to be sold. You could create a separate price record that would define the sales price for the *BOX*, but if you did so, you would later need to update two prices instead of one when there was a price change. Instead of creating these separate UOM-specific price records, you can specify the adjustment multiplier, which will define the ratio between the price for the base unit of measure and the price for the non-base unit of measure for the particular stock or non-stock item.

To make it possible to adjust the calculation of sales prices, you need to select the **Use a Price Adjustment Multiplier** check box on the **General** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form. After you do this, you can specify the adjustment multiplier in the **Price Adjustment Multiplier** column on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form for a stock item or the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form for a non-stock item.

**Tip:** The **Price Adjustment Multiplier** column is hidden by default. You can select the column for display in the **Column Configuration** dialog box.

If this functionality has been turned on, the system will calculate the sales prices as follows.

```
Base UOM Price = Sales UOM Price / (or *) Conversion Factor / Price Adjustment Multiplier
```

```
Non-Base UOM Price = Base UOM Price * (or /) Conversion Factor * Price Adjustment Multiplier
```

In these calculations, the operator of the first action in both expressions is defined by the **Multiply/Divide** column on the **General** tab of the [Stock Items](IN_20_25_00.md) form or the [Non-Stock Items](IN_20_20_00.md) form.

Thus, in the example presented earlier in this section, you need to specify an adjustment multiplier of 0.9, so that the price for 1 *BOX* will be calculated as $5 \(the base price for each *EA*\) \* 10 \(the conversion factor\) \* 0.9 \(the adjustment multiplier\) = $45 for each *BOX*. If you later set a new sales price for *EA*, such as $6, the price for the *BOX* will be calculated as $6 \* 10 \* 0.9 = $54.

If you clear the **Use a Price Adjustment Multiplier** check box on the [Sales Orders Preferences](SO_10_10_00.md) form, the system will ignore any specified price adjustment multipliers when calculating sales prices.

**Parent topic:**[Reviewing Sales Prices](../UserGuide/Prices_Reviewing_Sales_Prices_Mapref.md)

