# Import of Orders with Discounts: General Information {#_3ee2af82-92ba-4ace-89ae-5562c5261e93 .concept}

You may offer customers of your BigCommerce store discounts of various types. If the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can select the level at which the discounts will be displayed in orders imported to Acumatica ERP from the BigCommerce store.

## Learning Objectives { .section}

In this chapter, you will learn how to set up the import of sales orders with discounts from the BigCommerce store to Acumatica ERP.

## Applicable Scenarios { .section}

You specify the level at which discounts should be displayed in imported orders if the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Displaying of Discounts in Imported Orders { .section}

If the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, when you configure the order synchronization settings, you have the option to select the level at which discounts that have been applied to an online sales order will be displayed in the order after it is imported to Acumatica ERP from the BigCommerce store. On the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you can select in the **Show Discounts As** box one of the following options:

-   *Line Discounts*: Discounts applied to the order are distributed between the sales order lines and appear in the **Discount Amount** column on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
-   *Document Discounts*: Discounts applied to the order are aggregated and displayed on the **Discounts** tab of the [Sales Orders](SO_30_10_00.md) form.

For an example of configuring discounts in the BigCommerce store and importing an order with the discounts, see [Import of Orders with Discounts: Process Activity](Commerce_BC_Orders_with_Discounts_Activity.md).

**Parent topic:**[Importing Orders with Discounts](../UserGuide/Commerce_BC_Orders_with_Discounts_Mapref.md)

