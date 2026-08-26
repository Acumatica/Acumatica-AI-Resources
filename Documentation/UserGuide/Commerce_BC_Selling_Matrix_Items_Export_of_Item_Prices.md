# Selling Matrix Items: Export of Item Prices {#_3ae66b12-2349-4926-8787-163daca97c26 .concept}

In Acumatica ERP, you can add sales prices for matrix items and export these prices to your BigCommerce store.

## Learning Objectives { .section}

In this section, you will learn how to export the sales prices of matrix items from Acumatica ERP to the BigCommerce store.

## Applicable Scenarios { .section}

You export the sales prices of matrix items from Acumatica ERP to the BigCommerce store if you keep the sales prices of matrix items in Acumatica ERP and want to quickly update the sales prices of the corresponding products in BigCommerce.

## Types of Prices that Can Be Synchronized for Matrix Items {#_763fd053-6263-4006-9add-1319dfa039f3 .section}

The following types of prices that you keep in Acumatica ERP can be synchronized with the BigCommerce store for matrix items:

-   Default prices: The default price of a particular matrix item is specified on the [Stock Items](IN_20_25_00.md) \(IN202500\) form \(if the matrix item is a stock item\) or the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form \(if the matrix item is a non-stock item\) and is exported to the BigCommerce store during the processing of the *Template Item* entity—that is, during synchronization of the template item the matrix item is based on.

    In the BigCommerce store, the default prices of matrix items are displayed in the **Variants** table \(**Default Price** column\) of the **Variations** section of the product management page of the template item.

-   Base prices: Base prices—that is, sales prices that have the *Base* type and are not specific to any customer—are maintained on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form or the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form and are exported to the BigCommerce store as a separate entity, *Base Sales Price*. You define prices of this type for each matrix item the same way you would for other stock or non-stock items.

    Sales prices of the *Base* type imported from Acumatica ERP are saved in BigCommerce in the **Sale Price** column of the **Variants** table of the **Variations** section on the product management page of the template item.

    In BigCommerce, the sales price has a higher priority than the default price. Therefore, when the **Sale Price** column is populated for an item, the price specified in this column is the effective price of the item.


## Limitations of Sales Price Synchronization for Matrix Items { .section}

The following price types maintained in Acumatica ERP are not exported to the BigCommerce store for matrix items:

-   *Customer-specific prices*: Prices defined in Acumatica ERP for a particular customer—that is, prices that have the *Customer* type on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form—cannot be exported to the BigCommerce store.
-   *UOM-specific prices*: In Acumatica ERP, if the *Multiple Units of Measure* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can define a sales price of an item for each of the units of measure in which your company sells this item. However, only sales prices defined for the sales UOM of the item can be exported to BigCommerce.
-   *Warehouse-specific prices*: If the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you can define a sales price that is applied only when products are sold from a particular warehouse. If a warehouse is specified for a price, the price is not exported to the BigCommerce store.
-   *Volume-dependent prices*: If the *Volume Pricing* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you can define sales prices that are applied when a customer purchases a quantity of an item that is greater than the specified threshold \(break quantity\). However, prices of matrix items with a nonzero break quantity are not exported to the BigCommerce store.

**Attention:** Only prices that are effective on the date of the synchronization are exported; historical prices and prices with an effective date in the future are not synchronized. If an item has multiple prices of the same type that are effective on the date of the synchronization, the price of the highest priority is imported. For example, if a regular base price of $5 and a promotional base price of $4.50 for the same item are effective on January 31, 2021, which is the date when you synchronize the *Base Sales Price* entity, the promotional price of $4.50 will be exported to the BigCommerce store. For more information about price priorities, see [Sales Prices: Rules of Price Selection](Prices_Sales_Price_Selection_GeneralInfo.md) and [Sales Prices: To Explore Regular and Promotional Prices](Prices_Sales_Price_Selection_Activity_Regular.md).

**Parent topic:**[Selling Matrix Items in a BigCommerce Store](../UserGuide/Commerce_BC_Selling_Matrix_Items_Mapref.md)

