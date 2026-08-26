# Vendor Prices: Uploading Vendor Price Lists {#_027e6206-74de-44e4-b8a4-9cbb35770c71 .concept}

In this topic, you will read about uploading of vendor price lists.

In Acumatica ERP, users can update vendor prices in a variety of ways. You can modify existing vendor price records one by one on the [Vendor Prices](AP_20_20_00.md) \(AP202000\) form, for example, if you need to make only minor updates to individual price records, or use vendor price worksheets to upload or update multiple vendor price records at once on the [Vendor Price Worksheets](AP_20_20_10.md) \(AP202010\) form.

## Learning Objectives { .section}

You will learn how to upload a vendor price list to Acumatica ERP by using vendor price worksheets.

## Applicable Scenarios { .section}

Vendors share their product information by sending electronic versions of their catalogs or their price lists, or by making them available for download from their websites. Generally, some price lists include prices intended for all clients, others intended for those who buy occasionally, or those who buy in large volumes. If your company is a preferred customer of a specific vendor or buys in large volumes, the vendor might offer wholesale prices or special prices to your company on particular items or on its entire inventory.

Methods of updating vendor prices described in this section are applicable to both regular and promotional vendor prices maintained on the [Vendor Prices](AP_20_20_00.md) \(AP202000\) form and the [Vendor Price Worksheets](AP_20_20_10.md) \(AP202010\) form. These include prices defined for both stock items and non-stock items.

**Tip:** In this chapter, a *regular* vendor price refers to a non-promotional price.

Depending on the type of the items \(non-stock items or stock items\) and the kind of vendor prices you want to work with, additional features might need to be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form as follows:

-   In order to be able to maintain vendor prices for stock items, you must enable the *Inventory* feature in the system.
-   Warehouse-specific prices can only be maintained if the *Multiple Warehouses* feature is enabled.
-   Volume-dependent vendor prices are supported if the *Volume Pricing* feature is enabled.

## Uploading Vendor Price Lists Using Vendor Price Worksheets { .section}

In Acumatica ERP, you can upload price lists \(or enter them manually\) for each vendor separately by using the [Vendor Price Worksheets](AP_20_20_10.md) \(AP202010\) form. Uploading an Excel file with the prices that you have received from a vendor is the most common way of maintaining vendor prices.

Prices defined in a worksheet become effective only after you release the worksheet \(on a date specified as the effective date\). Before the worksheet is released, you can edit records in it.

## Price Retention Settings { .section}

You can specify how the system keeps the history of vendor prices on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:

-   Keep only one previous price and update the previous price every time a new price is released.
-   Keep the history of prices for the specified number of months.

When you add a new price, the system preserves the previous price. For new documents, the system inserts the price effective on the document date.

For a non-stock item, the system also saves the last vendor price that you have used for the item in the vendor's bills. Vendors' last prices for the non-stock item are shown on the **Vendors** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. When you create a bill, if there is no promotional or regular price for the item, the system inserts the last vendor price that has been used in a previously released bill \(if any\) for that vendor. If there is no such price for the item, the system suggests the standard cost, which you can specify for the non-stock item on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) form. For more information on vendor price priorities, see [Vendor Prices: Automatic Price Selection](Prices_Vendor_Prices_Price_Selection_Rules.md).

**Parent topic:**[Maintaining Vendor Prices](../UserGuide/Prices_Vendor_Prices_Mapref.md)

