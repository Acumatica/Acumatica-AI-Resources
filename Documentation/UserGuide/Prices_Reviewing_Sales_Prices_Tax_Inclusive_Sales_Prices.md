# Sales Prices: Tax-Inclusive Prices {#_5fcf8603-f683-4761-a939-e7f6fb1e0e66 .concept}

Your company may need to maintain prices that include a tax. Such prices are typical in countries where value-added taxes are enforced. Among your company's customers may be end customers that must pay a VAT and retail customers that are exempt from paying the VAT.

To maintain price lists with taxes included and to prevent charging VAT-exempt customers, take the following steps:

-   On the [Sales Prices](AR_20_20_00.md) \(AR202000\) form, create a price list with the VAT amount added to prices.
-   Specify the tax included in the prices in the **Tax** column of the same form.
-   Assign customers exempt from the tax to a tax zone that doesn't include this tax, and customers that pay this tax to a zone that includes it.

When you save a sales order created for a customer, the system creates the list of applicable taxes by using the tax category of each item and the tax zone of the customer. For each item on the order, the system performs checks and handles prices accordingly:

-   If the tax included in the price applies to the line item, the price is used as-is and the tax is processed as inclusive.
-   If the tax included in the price does not apply to the line item, the tax amount is excluded from the price.

By using the described price types and codes, you can create different price lists on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form or the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form. You can sort price records by their type and code, and the resulting selection is a price list that applicable to a group of customers or to a particular customer. For details, see [Reviewing Sales Prices](Prices_Reviewing_Sales_Prices_Mapref.md).

**Parent topic:**[Reviewing Sales Prices](../UserGuide/Prices_Reviewing_Sales_Prices_Mapref.md)

