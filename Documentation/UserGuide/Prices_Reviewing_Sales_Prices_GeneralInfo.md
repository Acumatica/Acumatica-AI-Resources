# Sales Prices: General Information {#_d63d6b6c-15ee-4576-bf27-8de69f8f5da6 .concept}

Acumatica ERP provides multiple mechanisms of maintaining sales prices. You can define a base price list, price lists that apply to a specific customer or a group of customers, and lists of promotional prices or prices that depend on the quantity of the product being sold.

In addition to the price list functionality, you can specify a default price for the item. This price will be used for the item if no other price is defined for it in the system. For more information about the way the system determines the default price to be inserted, see [Sales Prices: Rules of Price Selection](Prices_Sales_Price_Selection_GeneralInfo.md).

## Learning Objectives { .section}

You will learn how sales prices are defined in the system.

## Applicable Scenario { .section}

You may want to configure sales prices if your organization sells items and you want the system to reflect the way your organization establishes prices for these items.

You can define sales prices for stock items if the *Inventory* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Non-Default Sales Prices { .section}

You define items’ non-default sales prices and their effective dates by using the [Sales Prices](AR_20_20_00.md) \(AR202000\) or [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form. You add a price \(that is, create a sales price record\) for an item by adding a row to the table of one of these forms.

You specify the prices’ effective dates as follows:

-   On the [Sales Prices](AR_20_20_00.md) form, in the **Effective Date** column for each price.
-   On the [Sales Price Worksheets](AR_20_20_10.md) form, in the **Effective Date** box of the Summary area. This effective date applies to the worksheet as a whole—that is, to all listed prices.

In the table on either form, you assign each non-default price a price type, which determines when the system uses this price. For some types, you also need to specify a price code, which provides more specific information about when the system should select this price. You select one of the following price types:

-   *Base*: You use this price type for prices that are not related to a specific customer or customer price class. If a base price is specified for an item, the system uses it for the item if the item has no price specified for the specific customer or customer price class. For this price type, you do not specify a price code.
-   *Customer Price Class*: You use this price type for a price that is applicable to the item only if it is sold to customers of a particular customer price class. This price type requires a price code to be specified in the **Price Code** column of either form. In this case, the price code is the identifier of the applicable customer price class.

    **Tip:** *Customer price classes*, which are defined on the [Customer Price Classes](AR_20_80_00.md) \(AR208000\) form, are groups of customers that may be offered special prices because of their buying habits. For instance, a customer price class may consist of those customers that buy the largest quantities and are offered the most competitive prices.

-   *Customer*: You use this price type for a price that is applicable to the item only if it is sold to a particular customer: the one specified in the **Price Code** column. Thus, the price code is a required setting for this price type.

    This price type might be needed for a customer that has unique buying habits \(such as buying especially large quantities of the item\) even among customers of the same price class.


In this chapter, *regular price* is used to refer to a non-default price that is not promotional. A regular price may have any of the following types: *Base*, *Customer*, or *Customer Price Class*.

On either of these forms, you can also define non-default sales prices as one or more of the following:

-   Promotional: Prices that are effective for a specific period of time. For promotional prices, you must specify an effective date and an expiration date.
-   Volume-dependent \(tiered\): Prices that depend on the volume \(that is, the quantity\) of products being sold. You can define these prices if the *Volume Pricing* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. These prices can have an effective date range, if needed.
-   Warehouse-specific: Prices that are applicable to only units of the item that are stored in a particular warehouse. You can define these prices if the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form. These prices can have an effective date range, if needed.
-   UOM-specific: Prices that are defined for only a specific unit of measure \(UOM\) in which the item is sold. You can define these prices if the *Multiple Units of Measure* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) form. These prices can have an effective date range, if needed.

## Default Sales Prices { .section}

A *default sales price* \(also referred to as a *default price*\) is a sales price of a stock or non-stock item that the system uses when no other price is defined for the item on the [Sales Prices](AR_20_20_00.md) \(AR202000\) or [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form. That is, the system uses the default price when the item has no applicable price with the *Base*, *Customer Price Class*, or *Customer* type defined on one of these forms. Default prices can be maintained for the items whose prices do not vary depending on the customer, customer price class, purchased quantity, season, promotional period, or any other factor.

You enter the default price of a particular non-stock item in the **Default Price** box \(**Price/Cost** tab\) of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

If the *Inventory* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can enter default prices for stock items as well. To enter the default price for a stock item, you use the **Default Price** box \(**Price/Cost** tab\) of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

The default prices for stock items and non-stock items are specified in the base currency and for the base units.

On these forms, you can manually update the default prices for stock and non-stock items as often as you need to. However, when you update the default prices, you cannot direct the system to calculate the new values. Instead, you can calculate these prices externally by using any method you consider appropriate. Then you can enter the resulting prices manually on a per-item basis or import all of them from a file by using an import scenario.

Default prices have the following limitations:

-   The system does not keep the history of default prices.
-   A default price has no start date and no expiration date. Once specified, the default price is used for the item until a new default price is entered.
-   You cannot define default prices as tiered, promotional, warehouse-specific, or UOM-specific prices.

**Parent topic:**[Reviewing Sales Prices](../UserGuide/Prices_Reviewing_Sales_Prices_Mapref.md)

