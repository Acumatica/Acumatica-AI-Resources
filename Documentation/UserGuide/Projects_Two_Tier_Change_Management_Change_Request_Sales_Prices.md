# Change Requests: Creating a Change Request with Sales Prices

You may want to prepare a change request not only to charge the customer for costs with a markup, but also to sell additional work or expand the project scope. In these cases, you may prefer the price from the project quote or price book instead of a unit price calculated from the unit cost and markups.

## Selecting the Default Unit Price Source

You define the default pricing approach for change request estimation lines in the new **Unit Price Source** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. In this box, you select either of the following options:

-   *Unit Cost and Markups* \(default\): The unit price is calculated based on the existing cost-plus-markup formula: `Unit Price = Unit Cost + (Unit Cost × Price Markup (%) / 100)`.
-   *Sales Prices*: The unit price is copied from the sales price of the selected inventory item. The system:

    1.  Searches for the sales price on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form. The price must be effective on the date specified in the **Change Date** box of the [Change Requests](PM_30_85_00.md) \(PM308500\) form.
    2.  If no applicable sales price is found, uses the default price specified in the **Default Price** box on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.
    **Tip:** For more details on how the price is selected, see [Sales Prices: Rules of Price Selection](Prices_Sales_Price_Selection_GeneralInfo.md).


## Using Sales Prices in a Change Request

When you create a change request, the system copies the unit price source from the related project to the change request on the [Change Requests](PM_30_85_00.md) \(PM308500\) form. While the change request has the *On Hold* status, you can select another option.

If *Sales Prices* is selected, the system uses the applicable sales price of the inventory item as the **Unit Price** of a new estimation line. The price is selected based on the **Change Date** of the change request. You can change the inserted unit price in the estimation line.

Markups aren't used with this pricing source. The following changes apply to the change request:

-   In the Summary area, the **Markup Total** box is hidden and excluded from the **Price Total** calculation.
-   On the **Estimation** tab, the **Price Markup \(%\)** and **Line Markup \(%\)** columns are hidden, and **Line Amount** equals **Ext. Price**.
-   The **Markups** tab is hidden.
-   On the **Taxes** tab, if taxes are used in two-tier change management, the taxable amount is calculated only from estimation lines.

## Changing the Unit Price Source in a Change Request

While a change request has the *On Hold* status, you can change its unit price source on the [Change Requests](PM_30_85_00.md) \(PM308500\) form. If estimation lines have already been added, the system updates their unit prices according to the newly selected source.

If you change the source to *Unit Cost and Markups*, the system recalculates unit prices by using the following formula:

```
Unit Price = Unit Cost + (Unit Cost × Price Markup (%) / 100)
```

If you change the source to *Sales Prices*, the system updates the unit prices from the applicable sales prices or, if no applicable sales price is found, from the default inventory item prices.

**Parent topic:**[Processing Change Requests](../UserGuide/Projects_Two_Tier_Change_Management_Mapref.md)

