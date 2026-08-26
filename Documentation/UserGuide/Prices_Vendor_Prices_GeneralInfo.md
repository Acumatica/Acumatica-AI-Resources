# Vendor Prices: General Information {#_b8a92f04-1346-443b-aba0-9809a9d996e0 .concept}

By maintaining vendor price lists in your system, you can take advantage of promotional prices and volume-based offers when planning your purchases and order items for the best available prices.

## Learning Objectives { .section}

You will learn how vendor prices are defined in Acumatica ERP and how you can upload a vendor price list by using a vendor price worksheet.

## Applicable Scenarios { .section}

In Acumatica ERP, you can maintain vendor prices for both non-stock items and stock items. Specifying vendor prices for stock items is possible only if the *Inventory* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Vendor Price Types { .section}

The following types of vendor prices can be defined in the system:

-   Regular vendor prices: Regular vendor prices are non-promotional prices.

    To define a regular vendor price, you specify the following parameters on the [Vendor Prices](AP_20_20_00.md) \(AP202000\) form: the vendor who provided the price, the item to which the price is applicable, the unit of measure in which the item is purchased, the price and the start date on which the price becomes effective. If a regular price has an expiration date, it is not applicable after that date. You can also import a price list with regular vendor prices by using the [Vendor Price Worksheets](AP_20_20_10.md) \(AP202010\) form.

-   Promotional vendor prices: If some of your vendors use promotions, in Acumatica ERP, you can enter promotional vendor prices—that is, temporary prices for specific items. These prices have expiration dates, after which they are not applicable.

    To enter promotional prices, you select the **Promotional** check box for each price record on the [Vendor Prices](AP_20_20_00.md) form. You can also import the promotional price list by using the [Vendor Price Worksheets](AP_20_20_10.md) form and mark all the prices as promotional by selecting the **Promotional** check box of the worksheet.

-   UOM-specific vendor prices: If some of your vendors maintain prices in multiple units of measure \(UOMs\), you can define a price record for an item in each of these UOMs on the [Vendor Prices](AP_20_20_00.md) form. You can also import a list with prices defined in multiple UOMs by using the [Vendor Price Worksheets](AP_20_20_10.md) form.

    A unit of measure is a required parameter for vendor prices of all types. When you a create a price record, you specify the UOM to which the price is applicable. Each UOM in which the item is purchased requires a new vendor price record to be created.

-   Volume-dependent vendor prices: If the *Volume Pricing* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can enter information about a particular vendor's price tiers by using the [Vendor Prices](AP_20_20_00.md) form. You can enter tiers by specifying for each tier a break quantity, a price, and a date when the price should be in effect.
-   Warehouse-specific vendor prices: If the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you can define warehouse-specific prices. If a warehouse is not specified for a price, this price applies to all warehouses. The system does not use warehouse-specific prices in accounts payable documents, because these documents do not include warehouse information.

**Parent topic:**[Maintaining Vendor Prices](../UserGuide/Prices_Vendor_Prices_Mapref.md)

