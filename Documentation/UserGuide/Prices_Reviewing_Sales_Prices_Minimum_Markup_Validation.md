# Sales Prices: Minimum Markup Validation in Sales Orders {#_7a45fb74-f2d3-479a-a4da-2e90c4ae60fd .concept}

To make sure that sales prices satisfy your gross profit requirements, you can set up the system to validate the minimum markup in sales orders. In this topic, you will read about the minimum markup validation for prices in Acumatica ERP.

**Attention:** This functionality is available if the *Inventory and Order Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

You can specify a markup percentage for an item class on the [Item Classes](IN_20_10_00.md) \(IN201000\) form, causing the markup percentage to be used by default for items of the class. You can also specify a markup percentage for particular stock and non-stock items on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, respectively. The setting you specify controls whether the minimum markup specified for each item will be validated when a user manually enters a unit price in a sales order, an invoice, or a row on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form.

Also, you can specify how markup validation will be used for prices on the **General** tab \(**Price Settings** section\) of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form. In the **Validate Min. Markup** box, you select one of the following options:

-   *No Validation*: No markup validation will be performed for new pending prices.
-   *Warning*: The system will display a warning when a user enters a pending price that is below the price plus the minimum markup.
-   *Set to Minimum*: The system will automatically set the price to the value with the minimum markup when a user enters a pending price that is lower than the price plus the minimum markup. The minimum markup price for a stock item is calculated as `Average Cost * (Min Markup% / 100)`; the minimal markup price for a non-stock item is calculated as `Current Cost * (Min Markup% / 100)`.

Also, on the **General** tab \(**Price Settings** section\) of the [Sales Orders Preferences](SO_10_10_00.md) form, you can set up the system to skip markup validation for particular types of prices \(customer, customer price class, and promotional\). To do this, you select the appropriate check boxes in the **Ignore Min. Markup Validation for Prices** group: **Specific to Customers**, **Specific to Customer Price Classes**, and **Specific to Promotions**.

Also, you can configure the system to skip markup validation for particular types of prices \(customer, customer price class, and promotional\) by selecting the appropriate check boxes in the **Ignore Min. Markup Validation for Prices** group of check boxes.

**Tip:** The system also does not perform minimum markup validation for order lines in which *Receipt* is specified in the **Operation** column on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, or for transfer order lines.

**Parent topic:**[Reviewing Sales Prices](../UserGuide/Prices_Reviewing_Sales_Prices_Mapref.md)

