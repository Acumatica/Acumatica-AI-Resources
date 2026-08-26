# Sales Prices: Implementation Checklist {#_cafbe81c-c53e-40eb-971d-07d3ce0e0d81 .concept}

To ensure that the system is configured properly for defining sales price common to all customers, specific to a particular customer price class, or specific to a particular customer, make sure that the following features and settings are configured as described in the following table.

|Form|Settings to Validate|Note|
|----|--------------------|----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Standard Financials* feature has been enabled.

 The *Inventory* feature has been enabled.

 The *Volume Pricing* feature has been enabled.

 The *Multiple Warehouses* feature has been enabled.

 The *Multiple Units of Measure* feature has been enabled.

|*Standard Financials* provides the standard financial functionality.

 *Inventory* provides the functionality of maintaining stock items and must be enabled if you plan to maintain prices for your stock items in Acumatica ERP.

 *Volume Pricing* supports the maintenance of prices based on the quantity or amount of items being sold.

 *Multiple Warehouses* supports the distributed structure of warehouses. This feature is required for defining warehouse-specific prices.

 *Multiple Units of Measure* supports multiple units of measure for each stock item and the rules of conversion between these units. This feature is required for defining UOM-specific prices.

|
|[Customers](AR_30_30_00.md) \(AR303000\)|Make sure that the customers for which you want to define sales prices have been created.

 For prices based on the customer price class, make sure that the customer price class has been assigned to the customers.

|For more information on configuring customers, see [Customers: General Information](Customer_GeneralInfo.md).|
|[Customer Price Classes](AR_20_80_00.md) \(AR208000\)|Make sure that the customer price class for which you want to define sales prices have been created.| |
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\) and [Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure the required stock and non-stock items have been configured and activated.|For more information on configuring non-stock items, see [Non-Stock Items: General Information](Non_Stock_Items_OrderMgmt_GeneralInfo.md).

 For more information on configuring stock items, see [Stock Items: General Information](Stock_Items_GeneralInfo.md).

|
|[Units of Measure](CS_20_35_00.md) \(CS203500\)|For UOM-specific prices: Make sure that the necessary units of measure are configured.|For more information, see [Stock Items: Units of Measure](Stock_Items_UOMs.md).|
|[Warehouses](IN_20_40_00.md) \(IN204000\)|For warehouse-specific prices: Make sure that the necessary warehouses are configured.|For more information on configuring warehouses, see [Warehouses: General Information](Warehouses_GeneralInfo.md).|

## Known Process Limitation { .section}

When the *Lot/Serial Attributes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, units of a stock item with a particular lot or serial class may have specific sales prices and descriptions. If the **Specify Lot/Serial Price and Description** check box is selected for the lot or serial class on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, you cannot add an item with this class to a sales price list or worksheet on the following forms:

-   [Sales Prices](AR_20_20_00.md) \(AR202000\)
-   [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\)

**Parent topic:**[Reviewing Sales Prices](../UserGuide/Prices_Reviewing_Sales_Prices_Mapref.md)

