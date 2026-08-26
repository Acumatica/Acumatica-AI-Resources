# Configuration of Replenishment: General Information {#_6fd9f00f-9ed5-4f00-8bb2-9cdfee222074 .concept}

You can configure inventory replenishment in Acumatica ERP when a basic company has been configured in the system. This configuration includes enabling the required features and specifying the required settings to be used in the system for the replenishment functionality.

In a production environment, before you configure replenishment, you perform broader Acumatica ERP implementation, which includes enabling features and specifying the basic settings to configure the general ledger, cash management, accounts payable, accounts receivable, and order management with inventory.

You can configure automatic replenishment for stock items at a single warehouse or at multiple warehouses. If particular warehouses will be used only for sales, you can configure the system so that these warehouses will be replenished from the distribution centers. They are the warehouses to which purchases are received.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with the general steps involved in workflow of replenishment configuration
-   Learn about replenishment classes and sources
-   Develop an understanding of the tasks that must be performed for automated calculation of replenishment parameters
-   Become familiar with replenishment methods and their parameters
-   Learn about the Acumatica ERP *Moving Average* demand forecast model
-   Configure replenishment for a stock item in a particular warehouse
-   Set up the calculation of replenishment parameters for a stock item that requires replenishment in a particular warehouse

## Applicable Scenarios { .section}

You may need to configure replenishment in the following cases:

-   Users need to start using the replenishment functionality.
-   Your company has historical purchasing and sales data, including the time it takes your vendors to supply goods. You need to automatically calculate replenishment parameters based on this data to optimize the replenishment of stock and to purchase stock items at the right time when a certain level of stock still remains.
-   Your company's sales are affected by high and low seasons, and you need to automatically adjust the replenishment of stock based on the season.

## Replenishment in Acumatica ERP { .section}

The replenishment functionality in Acumatica ERP gives you the ability to maintain the needed level of stock at warehouses by purchasing the appropriate quantity of stock items from vendors or by transferring that quantity from other warehouses to the needed warehouses. The functionality that supports replenishment is available if the *Inventory Replenishment* feature and one or both of the following features are enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form:

-   *Multiple Warehouse Locations* if your company uses multiple warehouse locations
-   *Multiple Warehouses* if your company replenishes inventory through transfers

Replenishment for stock items is performed on a per-warehouse basis. If your company has a single warehouse, it purchases inventory to replenish the stock directly in this warehouse. If your company uses multiple warehouses, you can consolidate purchase orders created for replenishment in the needed warehouses, receive purchased items in a distribution center \(a source warehouse\), and then transfer the purchased quantities from this distribution center to the destination warehouses. Also, you can replenish stock items by transferring them from a warehouse where they are available to a warehouse where they are needed.

Acumatica ERP supports replenishment at a fixed quantity and replenishment between the minimum and maximum quantities. To maintain the stock level of an inventory item at a warehouse between particular minimum and maximum quantities, you can manually enter estimates of replenishment parameters for each stock item. Some examples of replenishment parameters are safety stock, maximum quantity, and reorder point. Instead of manually entering estimates, you can use a demand forecast model to automatically calculate replenishment parameters based on sales statistics and perform replenishment for a specific future period based on historical sales data. For details, see [Configuration of Replenishment: Replenishment Methods](config_OrderMgmt_Replenishment_Methods.md) and [Configuration of Replenishment: Demand Forecast Model](config_OrderMgmt_Replenishment_Demand_Forecast_Model.md).

**Note:** In Acumatica ERP, only basic replenishment functionality is implemented. If complex replenishment is needed, we recommend that you use ISV solutions instead of basic functionality.

## General Steps of the Replenishment Configuration {#section_vv2_1y4_y4b .section}

To configure replenishment, you perform the following general steps:

1.  You create replenishment classes. On the [Replenishment Classes](../UserGuide/IN_20_88_00.md) \(IN208800\) form, you create a replenishment class for each type of replenishment source that you will use. For details, see [Configuration of Replenishment: Classes and Sources of Replenishment](config_OrderMgmt_Replenishment_Repl_Classes.md).
2.  Optional: You create seasonalities. On the [Replenishment Seasonality](../UserGuide/IN_20_66_00.md) \(IN206600\) form, you create the seasonalities that are used for the automatic calculation of replenishment parameters to normalize the replenishment quantity in accordance with high and low sales seasons. For details, see [Configuration of Replenishment: Demand Forecast Model](config_OrderMgmt_Replenishment_Demand_Forecast_Model.md).
3.  You specify the default replenishment class for each warehouse that is involved in replenishment. On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, in the **Replenishment Class** box, you specify the replenishment class that the system will use by default for the warehouse.

    If on the **Inventory Planning** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, multiple rows with replenishment settings have been added, and any replenishment settings were updated for the stock item, the same replenishment settings will be inserted for the combination of the item and the warehouse \(that is, the warehouse that has the same replenishment class as the stock item\) on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form and thus will be used for preparing replenishment calculation. These settings include replenishment class, seasonality, source, method, safety stock, reorder point, maximum quantity, transfer ERQ, and demand forecast model.

4.  You specify the default replenishment settings for each item class whose items will be replenished. On the **Inventory Planning** tab of the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form, you specify the replenishment settings that the system will use by default if an item is created on the [Stock Items](../UserGuide/IN_20_25_00.md) form and this class is selected. If you want to configure automated calculation of replenishment parameters, see [Configuration of Replenishment: Replenishment Methods](config_OrderMgmt_Replenishment_Methods.md) and [Configuration of Replenishment: Demand Forecast Model](config_OrderMgmt_Replenishment_Demand_Forecast_Model.md).
5.  You update the replenishment settings for each existing stock item for which replenishment will be performed. On the **Inventory Planning** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) form, you make the needed adjustments to the replenishment settings that the system has copied from the selected item class. For details about the automatic calculation of replenishment parameters, see [Configuration of Replenishment: Replenishment Methods](config_OrderMgmt_Replenishment_Methods.md) and [Configuration of Replenishment: Demand Forecast Model](config_OrderMgmt_Replenishment_Demand_Forecast_Model.md).

    **Attention:** If after the creation of the stock item, you update the replenishment settings of the item class specified for it, the new settings of the item class will not be copied to the stock item. If you want the same changes to be made to an existing stock item, you need to manually change the replenishment settings of the stock item on the [Stock Items](../UserGuide/IN_20_25_00.md) form.

6.  Optional: You calculate the replenishment parameters for a stock item that requires replenishment in a particular warehouse. On the [Calculate Replenishment Parameters](../UserGuide/IN_50_85_00.md) \(IN508500\) form, you compute the average daily sales and average lead time, and then you calculate the following parameters used in automated replenishment: **Max. Qty.**, **Reorder Point**, and **Safety Stock**.
7.  Optional: You apply the calculated replenishment parameters used in automated replenishment to a particular item‒warehouse pair. On the [Apply Replenishment Parameters](../UserGuide/IN_50_95_00.md) \(IN509500\) form, you review the parameter values suggested by the forecast and update the corresponding settings with the suggested \(that is, calculated\) ones.
8.  Optional: You specify the vendors from which the item has been or can be purchased and the replenishment parameters for the item on the **Vendors** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) form. Also, you make sure that the default vendor for the item is selected on this tab \(that is, the **Default** check box is selected in the row of the vendor\). This vendor will be used to replenish the stock of the inventory item unless you select another preferred vendor for the item at a specific warehouse on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form \(see the following step\).
9.  Optional: You adjust the replenishment settings for item–warehouse pairs. If multiple warehouses are used in your system and items are stocked in multiple warehouses, on the **Inventory Planning** tab of the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form, you can review and adjust the replenishment parameters to be used for the particular item at the selected warehouse. In the **Preferred Vendor** box of this tab, you can specify the preferred vendor for the item–warehouse pair.

## Processing of Replenishment Requests { .section}

In Acumatica ERP, a replenishment request is an internal record that the system creates when you process the stock items on the [Prepare Replenishment](../UserGuide/IN_50_80_00.md) \(IN508000\) form. The prepared replenishment requests can then be processed as follows, depending on how you replenish stock items:

-   You replenish stock items through purchases: On the [Create Purchase Orders](../UserGuide/PO_50_50_00.md) \(PO505000\) form, you can create purchase orders for selected requests with the *Purchase* replenishment source.
-   You replenish stock items through transfers: On the [Create Transfer Orders](../UserGuide/SO_50_90_00.md) \(SO509000\) form, you can create transfer orders for selected requests with the *Transfer* replenishment source.
-   You replenish stock items through a distribution center: On the [Create Transfer Orders](../UserGuide/SO_50_90_00.md) form, you can create transfer orders for selected requests with the *Purchase* replenishment source and the replenishment warehouse defined on the **Inventory Planning** tab the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form or the **Inventory Planning** tab of the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form.

When the replenishment is configured, and you have processed records on the [Prepare Replenishment](../UserGuide/IN_50_80_00.md) form, depending on the replenishment source, you can do either \(or both\) of the following:

-   Generate purchase orders based on requests on the [Create Purchase Orders](../UserGuide/PO_50_50_00.md) form. For details, see [Replenishing Inventory Through Purchases](../UserGuide/OrderMgmt_Replenishment_by_Purchase_Mapref.md).
-   Generate transfer orders based on requests on the [Create Transfer Orders](../UserGuide/SO_50_90_00.md) form. For details, see [Replenishing Inventory Through Transfers](../UserGuide/OrderMgmt_Replenishment_by_Transfer_Mapref.md) and [Replenishing Inventory Through a Distribution Center](../UserGuide/OrderMgmt_Replenishment_thru_DistrCenter_Mapref.md).

On the [Prepare Replenishment](../UserGuide/IN_50_80_00.md) form, the quantity to process is calculated in the base unit of measure \(UOM\). On the [Create Purchase Orders](../UserGuide/PO_50_50_00.md) and [Create Transfer Orders](../UserGuide/SO_50_90_00.md) forms, the quantity specified in the **Quantity** column is recalculated in the purchase UOM and displayed in the **UOM** column. For example, if ten stock items should be purchased in one box, then the quantity of ten UOMs is converted to one box to be purchased.

## Specification of Vendors for a Stock Item { .section}

The **Vendors** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form contains a list of the vendors from which the selected item has been or can be purchased, along with the settings of the item if it is purchased from the vendor. On this tab, you can specify the following vendor-specific replenishment settings for the stock item:

-   **Lead Time \(Days\)**: The lead time required to ship the item from the vendor location to the warehouse.
-   **Add. Lead Time \(Days\)**: The additional lead time required to ship the item from the vendor location to the warehouse.
-   **Lot Size**: The lot size in which the item can be purchased from this vendor. If you specify a value, the system rounds up the order quantity for the *Min./Max.* replenishment method to the next integer that is divisible by the lot size and rounded up.
-   **Min. Order Freq. \(Days\)**: The minimum order frequency \(the minimum number of days between two successive orders\).
-   **Min. Order Qty.**: The minimum order quantity.
-   **Max. Order Qty.**: The maximum order quantity.
-   **EOQ**: The economic order quantity.

**Parent topic:**[Replenishment for Stock Items](../ImplementationGuide/config_OrderMgmt_Replenishment_Mapref.md)

