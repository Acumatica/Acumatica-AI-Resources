# Price Synchronization: General Information {#_994bc074-79eb-403b-81c4-9545d470a01d .concept}

Acumatica ERP Retail Edition provides flexible ways of managing sales prices. You can assign prices to stock and non-stock items, maintain specific prices for particular customers or groups of customers with similar buying habits, or assign discounted prices for customers buying in bulk. For more information about the types of prices supported in Acumatica ERP, see [Sales Prices: General Information](Prices_Reviewing_Sales_Prices_GeneralInfo.md). The sections below describe which prices can be exported to the BigCommerce store.

## Learning Objectives { .section}

In this section, you will learn how to synchronize base sales prices between Acumatica ERP and the BigCommerce store.

## Applicable Scenarios { .section}

You might want to synchronize sales prices from Acumatica ERP with the BigCommerce store if you maintain base prices of non-stock and stock items in Acumatica ERP and want to quickly update sales prices of the corresponding products in BigCommerce.

## Synchronization of Default Item Prices { .section}

The default price of a particular stock item is specified on the [Stock Items](IN_20_25_00.md) \(IN202500\) form and is exported to the BigCommerce store during the synchronization of the stock item. Similarly, the default price of a non-stock item is maintained on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form and is exported to the BigCommerce store when the non-stock item is synchronized. For information about the synchronization of stock and non-stock items, see [Product Synchronization: General Information](Commerce_BC_Syncing_Products_GeneralInfo.md).

In the BigCommerce store, the default prices of stock and non-stock items are displayed in the **Default Price** box in the **Pricing** subsection of the **Product Information** section on the **View Products** page for a particular stock or non-stock item.

## Synchronization of Base Sales Prices { .section}

Base prices—that is, the prices that are not specific to any customer—are maintained on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form or the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form and are exported to the BigCommerce store as a separate entity, *Base Sales Price*.

Sales prices of the *Base* type imported from Acumatica ERP are saved in BigCommerce in the **Sale Price** box in the **Pricing** subsection of the **Product Information** section on the **View Products** page for a particular stock or non-stock item.

In BigCommerce, the sales price has a higher priority than the default price. Therefore, when the **Sale Price** box is populated for an item, the price specified in this box is the effective price of the item.

For information about defining base sales prices in Acumatica ERP, see [Sales Prices: General Information](Prices_Reviewing_Sales_Prices_GeneralInfo.md).

## Limitations of Sales Price Synchronization { .section}

The following price types maintained in Acumatica ERP cannot be exported to a BigCommerce store:

-   *Customer-specific prices*: Prices defined in Acumatica ERP for a particular customer—that is, prices that have the *Customer* type—cannot be exported to the BigCommerce store. If you want to provide a particular customer with the ability to purchase products at individual prices, create a separate customer price class for this customer. This way, the prices that you define for this customer price class will be available for only the customer that you add to this customer price class.
-   *UOM-specific prices*: In Acumatica ERP, if the *Multiple Units of Measure* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can define a sales price of an item for each of the units of measure in which your company sells this item. However, only prices defined for the sales UOM can be exported to BigCommerce.
-   *Warehouse-specific prices*: If the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, prices that are defined to apply only when products are sold from a particular warehouse—that is, when a specific warehouse is selected in the **Warehouse** column for a particular price—are not exported to the BigCommerce store.

**Attention:** Only prices that are effective on the date of the synchronization are exported; historical prices and prices with an effective date in the future are not synchronized. If an item has multiple prices of the same type that are effective on the date of the synchronization, the price of the highest priority is imported. For example, if a regular base price of $5 and a promotional base price of $4.50 for the same item are effective on January 31, 2022, which is the date when you synchronize the *Base Sales Price* entity, the promotional price of $4.50 will be exported to the BigCommerce store. For more information about price priorities, see [Sales Prices: Rules of Price Selection](Prices_Sales_Price_Selection_GeneralInfo.md) and [Sales Prices: To Explore Regular and Promotional Prices](Prices_Sales_Price_Selection_Activity_Regular.md).

**Parent topic:**[Synchronizing Sales Prices](../UserGuide/Commerce_BC_Syncing_Prices_Mapref.md)

