# Mass-Update of Sales Prices: General Information {#_7d0a1afd-77f9-4a05-9f6a-5c4cba2871e7 .concept}

Occasionally, you might need to update the sales prices of your stock and non-stock items. Acumatica ERP provides you with the ability to mass-recalculate the existing sales prices by using specific criteria.

## Learning Objectives { .section}

You will learn how to recalculate existing sales prices based on the manufacturer's suggested retail price \(MSRP\).

## Applicable Scenarios { .section}

By using sales price worksheets, you can mass-calculate prices of any type, except for default prices. That is, you can mass-calculate base prices or prices specific to a customer or customer price class, including sales prices that have been marked as promotional or that have been defined for a particular unit of measure or a particular warehouse.

## Price Basis { .section}

Your company may use a cost-plus approach or set prices to achieve specific profit targets. In Acumatica ERP, you can calculate pending sales prices for both non-stock items and stock items by using the approach—that is, by choosing the price basis—that makes the most sense at a particular time.

In Acumatica ERP, the options for the price basis can be divided into the following groups:

-   Inventory-related: A cost-plus basis \(the *Last Cost + Markup %* option or *Avg./Std. Cost + Markup %* option\) or the manufacturer's suggested retail price \(the *MSRP* option\).

    You specify values for these options by using the [Stock Items](IN_20_25_00.md) \(IN202500\) form for stock items. Also, on the **Price/Cost** tab of the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form, you can define the markup percentage and MSRP specific to a particular warehouse. For non-stock items, only the *Avg./Std. Cost + Markup %* option is applicable, and instead of using the average or standard cost, the system uses the current cost of a non-stock item, which is specified in the **Current Cost** box on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

-   Price record-related: The item's current price \(*Source Price*\) or pending price \(*Pending Price*\).

    You specify values for these options by using the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form.


## Calculation of Pending Prices Based on the MSRP { .section}

An item's MSRP—that is, the manufacturer's suggested retail price—is specified on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. A similar box is available on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form for non-stock items.

You perform mass-calculation of pending prices based on the items' MSRP by using the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form. On this form, you add to the sales price worksheet the price records for the items for which you want to recalculate prices. Then, you click **Calculate Pending Prices** on the table toolbar to invoke the **Calculate Pending Prices** dialog box. In this dialog box, you select *MSRP* as the price basis and click **Update** to add to the worksheet the pending prices recalculated based on MSRP. The recalculated pending prices become effective after you release the worksheet \(on a date specified as the effective date\).

**Parent topic:**[Mass-Update of Sales Prices](../UserGuide/Prices_Mass_Updating_Existing_Sales_Prices_Mapref.md)

