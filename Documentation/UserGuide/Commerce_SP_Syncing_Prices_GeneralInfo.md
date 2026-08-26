# Sales Price Lists: General Information {#_3822cfd4-ef1d-4544-a92d-e89c0a11d1f1 .concept}

You export price lists defined in Acumatica ERP to the Shopify store.

This functionality is available if the *Shopify Business-to-Business Entities* feature are enabled on [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Attention:**

Catalogs are available to Shopify customers as part of the business-to-business functionality, which is included in the Shopify Plus subscription plan.

For more information about catalogs in Shopify, see [the Shopify documentation](https://help.shopify.com/en/manual/b2b/companies).

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Export price lists defined for customer price classes in Acumatica ERP to the Shopify store
-   Define volume prices and quantity rules at the price-list level and export them to the Shopify store

## Applicable Scenarios { .section}

You might want to synchronize sales prices from Acumatica ERP with the Shopify store if you use business-to-business functionality in your Shopify store, maintain sales price lists for customers assigned to particular customer price classes in Acumatica ERP and would like to export these price lists to Shopify.

You company may need to configure quantity rules and volume pricing for business customers and export them to the Shopify store in the following cases:

-   To sell a product in certain increments
-   To provide the minimum quantity of the product that a customer can purchase at the same time
-   To offer price breaks to customers who purchase a particular quantity of a product

## The Price List Entity { .section}

To export price lists from Acumatica ERP to a Shopify store, you first need to activate the *Price List* entity on the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. This entity can only be exported to the external system \(that is, its **Sync Direction** is set to *Export* and cannot be changed\), and its primary system is *ERP*.

## Filtering of Price List Prices { .section}

During the synchronization of the *Price List* entity, the system exports prices created on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form only if the prices meet the following criteria:

-   **Price Type** is set to *Customer Price Class*, and the customer price class is specified in the **Price Code** column.
-   In the **UOM** column, the sales unit of measure of the item is specified.
-   If the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, no warehouse is specified in the **Warehouse** column.
-   If the *Multicurrency Accounting* feature is enabled, the currency specified in the **Currency** column has been activated for a market in the Shopify store.
-   If the *Volume Pricing* feature is enabled, **Break Qty** is set to a positive whole number.

Only prices that are effective on the date of the synchronization are exported. If both a regular price and a promotional price exist for the same item, customer price class, UOM, and currency, the promotional price is exported, whereas the regular price is skipped during the synchronization. For more information on price lists, see [Sales Prices: General Information](Prices_Reviewing_Sales_Prices_GeneralInfo.md).

## Configuration of Quantity Rules { .section}

To define the minimum quantity of an item that can be sold in the Shopify store, you create a price of the *Customer Price Class* type for the item on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form. For the price, you specify a whole number greater than *1* as the break quantity.

During the synchronization of price lists to the Shopify store, the system defines quantity rules for the product in the corresponding catalog with a minimum quantity that is equal to the item's break quantity in Acumatica ERP.

If an item has multiple prices with the same customer price class, UOM, and currency but with different break quantities on the [Sales Prices](AR_20_20_00.md) form, during the export, the system uses the lowest break quantity as the minimum quantity.

If an item has only a price with a break quantity of either *0* or *1*, the system does not create quantity rules for the product.

## Configuration of Volume Pricing { .section}

To define volume pricing for an item, you create a set of prices of the *Customer Price Class* type for the item on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form. For these prices, you specify the same customer price class, UOM, and currency but different break quantities and prices.

During the synchronization of price lists to the Shopify store, the system defines volume pricing for the product in the corresponding catalog based on the item's break quantities and prices from Acumatica ERP.

If there are break quantities greater than *1* among the item's prices with the same customer price class, UOM, and currency on the [Sales Prices](AR_20_20_00.md) form, the system also defines quantity rules for the product with the minimum quantity equal to the item's lowest break quantity.

## Export of Price Lists { .section}

During the synchronization of the *Price List* entity, the system creates a catalog in the Shopify store for each combination of the customer price class and currency. The name of the catalog is created as a combination of the customer price class ID followed by a hyphen and the currency code. For example, prices that have been defined for the *LOCAL* customer price class in *USD* and *CAD* will be exported to the *LOCAL-USD* and *LOCAL-CAD* catalogs in the Shopify store.

In the **Included** section of the catalog, the system adds all the products for which the prices have been exported. Each exported price added to the catalogs is marked as a *fixed price*. The rest of the products, which have already been synchronized with the Shopify store but have no effective prices within the price class, are added to the **Excluded** section. The excluded items are hidden from customers assigned to the catalog.

On the [Sync History](BC_30_10_00.md) \(BC301000\) form, the system creates one synchronization record per customer price class. The **External Description** column lists all catalogs created in the Shopify store, and the **Last Message** column shows the number of price records exported to each of the catalogs. If any errors happen during the import of price lists with volume pricing and quantity rules, the system also creates detailed log records that can be accessed by clicking **Tools** &gt; **Trace** on the form title bar.

A customer price class can be assigned to a customer location on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form. If the location belongs to a business customer—that is, if **Customer Category** is set to *Organization* for the customer on the [Customers](AR_30_30_00.md) \(AR303000\) form—during the synchronization of the *Price List* entity, the corresponding location in the Shopify store is added to the exported catalog.

**Attention:**

Items, customers, and customer locations must be synchronized with the Shopify store before the price lists can be exported.

Any changes that have made to the exported catalog in the Shopify store are overwritten during the next synchronization of the price list.

If a customer price class has been deleted in Acumatica ERP, the corresponding catalog is deleted in the Shopify store. If a price list has been exported and then a filter is created on the [Entities](BC_20_20_00.md) \(BC202000\) form that excludes the price list from synchronization, during the next synchronization, the corresponding catalog in the Shopify store is not deleted but is instead assigned the *Archived* status.

## Limitations of Exporting Price Lists { .section}

The following limitations apply to the exporting of price lists to Shopify:

-   A maximum of 11 price tiers can be exported per item in a price list with volume pricing. Price tiers beyond the limit are skipped.
-   In the admin area of the Shopify store, the incremental value for new quantity rules created during the export is always *1* and is not updated. For example, if the incremental value is changed for the quantity rules, the system does not update it during the subsequent imports.
-   The system neither specifies nor updates the maximum value for quantity rules during the export.
-   If the incremental value, the maximum quantity, or both are changed for the quantity rules of a product in the admin area of the Shopify store, the system exports only those item prices whose break quantities comply with the incremental value and are not greater than the maximum quantity.
-   If an item has prices with a break quantity of *0* and a break quantity of *1* and the same customer price class, UOM, and currency on the [Sales Prices](AR_20_20_00.md) form, the system exports the price with a break quantity of *1* rather than the one with a break quantity of *0*. If the price with a break quantity of *0* is promotional, the system instead exports this price.
-   If all the prices of an item already exported to the Shopify store are deleted in Acumatica ERP, during the synchronization, the system deletes the volume pricing for the corresponding product from the catalog. The system also deletes the quantity rules, which resets the minimum quantity to the default value of *1*, if the incremental value has not been manually changed for the product in the admin area of the Shopify store. If the incremental value has been changed, the system does not delete the quantity rules and does not reset the minimum quantity.

**Parent topic:**[Synchronizing Sales Price Lists](../UserGuide/Commerce_SP_Syncing_Prices_Mapref.md)

