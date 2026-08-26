# Inventory Planning Configuration: General Information {#_bbdde314-b398-4d07-a026-7ea22d6130ec .concept}

Inventory planning is time-phased planning used for handling orders within a supply chain. Acumatica ERP provides users with the ability to use inventory planning to meet customer requirements while optimizing warehouse stock levels. Users can match supply to demand based on date-specific recommendations for unmet demands. The system can use sales forecasts to drive demand, group supply and demand by time periods, and generate exception messages for supply document issues, such as late delivery dates. Acumatica ERP facilitates the use of the following types of inventory planning:

-   Distribution requirements planning \(DRP\), which is used by distributors and does not include production order planning.
-   Material requirements planning \(MRP\), which is used by manufacturers, has the same functionality as DRP, and includes production order planning.

The inventory planning functionality is available only if the *Distribution Requirements Planning* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. The inventory planning functionality that includes production order planning is available only if the *Material Requirements Planning* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form.

**Attention:** The *Distribution Requirements Planning* and *Manufacturing* features are mutually exclusive—that is, you cannot enable one of these features if the other is enabled.

In this topic, you will find information about configuring inventory planning in the system based on your business needs.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with the general steps involved in the workflow of inventory planning configuration
-   Learn about the manufacturing-specific settings for inventory planning
-   Learn about setting up and using forecasts in inventory planning
-   Specify system settings for the inventory planning functionality
-   Create warehouses that are involved in inventory planning
-   Define stock items that are involved in inventory planning
-   Configure DRP for a stock item in a particular warehouse
-   Configure MRP

## Applicable Scenarios { .section}

You may need to configure inventory planning in the following cases:

-   You are initially implementing Acumatica ERP, and either of the following features is included in your license.
    -   *Distribution Requirements Planning*
    -   *Material Requirements Planning*
-   You have purchased a license that includes either of the features mentioned above, and you need to configure inventory planning in the existing Acumatica ERP system.

## Inventory Planning Regeneration and Recommendations { .section}

In Acumatica ERP, a user can perform inventory planning regeneration on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) \(AM505000\) form. The system matches supply and demand based on dates, identifies shortages, and makes suggestions to prevent stockouts. The user can view the list of planning recommendations—such as *Sales Order*, *Purchase Order*, *Transfer Demand*, or *Sales Order Non-Stock Kit*—in the **Type** table column on the [Inventory Planning Display](../UserGuide/AM_40_00_00.md) \(AM400000\) form. In the **Related Document** column, the system inserts the link to the demand document whose items are listed in the table. On the same form, depending on the recommendations, the user can create the following recommended supply orders:

-   Purchase order.
-   Transfer order. For the setup details, see [Transfer Orders in Inventory Planning](#_925d2972-172d-4447-a1ee-23dfb261d5af).
-   Production order.
-   Kit assembly. For the setup details, see [Stock and Non-Stock Kits in Inventory Planning](#_f05a3b9b-a768-48ac-9d6f-16610bbcc5de).

Also, for orders with items that are scheduled to arrive too early or too late, the system generates exceptions of a type—such as *Late Order*, *Transfer Available*, *Delete*, *Expedite*, or *Defer*—and lists these exceptions on the [Inventory Planning Exceptions](../UserGuide/AM_40_30_00.md) \(AM403000\) form. In the **Related Document** table column, the system inserts the link to a supply document related to the exception.

## General Steps of Inventory Planning Configuration {#section_vv2_1y4_y4b .section}

In Acumatica ERP, to configure inventory planning, you perform the following general steps:

1.  On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, you specify inventory planning settings for the needed warehouses and warehouse locations and indicate which supply and demand data the system includes for this warehouse during inventory planning. For details, see the [Warehouse and Warehouse Locations in Inventory Planning](#_e8fbca96-3c58-4bb8-b945-f28c14590018) section.
2.  On the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form, you select the purchase calendar ID.
3.  Optional: To show users one planning recommendation for items with the same ID from multiple demand documents within a specific time range on the [Inventory Planning Display](../UserGuide/AM_40_00_00.md) \(AM400000\) form, you specify consolidation settings on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) form. For details, see [Inventory Planning Configuration: System-Wide Settings](config_Inventory_Planning_System_Settings.md).
4.  Optional: On the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form, you specify the needed planning method \(*DRP* or *MRP*\) and the inventory planning settings for the needed item classes.
5.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you specify the needed planning method \(*DRP* or *MRP*\) and inventory planning settings for stock items that are going to be planned. For details, see the [Stock Items in Inventory Planning](#_ace5cbbd-1677-409f-a154-453d466f3d08) section.
6.  Optional: On the **Vendors** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) form, you specify the reorder preferences, such as vendor, lot size, lead time, and minimum and maximum order quantities.
7.  Optional: On the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form, you specify inventory planning settings for the needed item‒warehouse pairs.
8.  Optional: On the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) form, you review the number of days that are used for generating exceptions. For details, see [Inventory Planning Configuration: Exceptions](config_Inventory_Planning_Exception_Messages.md).
9.  Optional: On the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) form, you specify forecast preferences.
10. Optional: On the [Forecast](../UserGuide/AM_20_20_00.md) \(AM202000\) and [Generate Forecasts](../UserGuide/AM_50_20_00.md) \(AM502000\) form, you create the needed forecasts. For details, see [Inventory Planning Configuration: Setting Up Forecasts](config_Inventory_Planning_Forecasts.md).
11. If users are going to create master production schedule orders, you create at least one master production schedule \(MPS\) type on the [MPS Type](../UserGuide/AM_20_30_00.md) \(AM203000\) form.

    **Attention:** This form is available only if the *Material Requirements Planning* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

    An MPS type provides the default settings for master production schedule orders, such as the numbering sequence the system should use for the reference numbers of the orders and the setting that indicates whether MPS orders depend on the production orders. If you would like the item quantities in MPS orders to be reduced by the actual production orders that are scheduled to be completed prior to the MPS planning date, you select the **Dependent** check box.

12. If users are going to create master production schedule orders, in the **MPS** section of the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form, you specify the default MPS type and the MPS time fence within which the MPS orders will be excluded from data used for planning.

    **Attention:** The **MPS** section is available only if the *Material Requirements Planning* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form.

13. Optional: On the [Inventory Planning Buckets](../UserGuide/AM_20_12_00.md) \(AM201200\) form, you specify the time periods to be used for inventory planning. With these periods defined, users can monitor calculated item quantities by period on the [Inventory Planning Requirements by Item](../UserGuide/AM_40_12_00.md) \(AM401200\) form. For details, see [Inventory Planning Configuration: Monitoring of Calculated Item Quantities by Period](config_Inventory_Planning_Buckets.md).
14. Optional: On the [Automation Schedules](../UserGuide/SM_20_50_20.md) \(SM205020\) form, you create an automation schedule for inventory planning regeneration.

After all the required configuration steps have been performed, a user can perform inventory planning on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) \(AM505000\) form, view the results on the [Inventory Planning Display](../UserGuide/AM_40_00_00.md) form, and take the needed actions. For details about this process, see [Inventory Planning with MRP: General Information](../UserGuide/MFG_MRP_GeneralInfo.md) and [Inventory Planning with DRP: General Information](../UserGuide/OrderMgmt_Inventory_Planning_DRP_GeneralInfo.md).

## Warehouse and Warehouse Locations in Inventory Planning {#_e8fbca96-3c58-4bb8-b945-f28c14590018 .section}

To include in inventory planning the on-hand quantity of items in a particular warehouse location, you select the check box in the **Inventory Planning** column on the **Locations** tab of the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form in the row with the location’s settings.

In the **Inventory Planning Settings** section of the **Inventory Planning** tab, you can select the check boxes that determine the supply and demand data the system uses for this warehouse during inventory planning, such as the following:

-   Quantities from on-hold sales orders, purchase orders, or production orders
-   Quantities from shipments for which invoices have not yet been created
-   Quantities from forecast records
-   MPS quantities

We recommend that you select all the check boxes for a complete planning picture. If all the check boxes are cleared, the warehouse is completely excluded from inventory planning.

**Attention:** If the **Inventory Planning** check box is cleared for a warehouse location, then any production orders with this location as the planned receipt location are excluded from inventory planning.

The **Transfer Lead Time** table is shown on the **Inventory Planning** tab if the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. In this table, you can view and add warehouses from which stock items can be transferred to the warehouse selected on the form and specify the default transfer lead time of each warehouse, which the system will use during inventory planning. The system will use this lead time for items transferred between the current warehouse and the listed warehouse.

On the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form, you can override this lead time for an item‒warehouse pair if different shipment methods may be used to transfer the stock item. For example, small items might be eligible for air shipment within 3 days, while large bulky items might need to travel by ocean for 40 days.

## Stock Items in Inventory Planning {#_ace5cbbd-1677-409f-a154-453d466f3d08 .section}

For each stock item that you want to include in inventory planning, you should select the *MRP* or *DRP* planning method on the **General** tab \(**Item Defaults** section\) of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form. In the inventory planning process, the system uses supply and demand data for the combination of the stock item and the warehouse.

**Attention:** Stock items with a status of *Inactive* or *Marked for Deletion* are excluded from inventory planning. Items with any of the following statuses are included in planning: *Active*, *No Sales*, *No Purchases*, and *No Request*.

For each item involved in inventory planning, we recommend that you specify replenishment settings on the **Inventory Planning** tab of the following form:

-   The [Stock Items](../UserGuide/IN_20_25_00.md) form if the item is stored in one warehouse
-   The [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form if the item is stored in multiple warehouses

In the **Inventory Planning Settings** section of the tab on either form, you should specify a value in the **Safety Stock** or **Reorder Point** box, depending on the value of the **Stocking Method** box on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form.

If the replenishment source is *Purchase*, *Purchase to Order*, or *Drop Shipment* on the **Inventory Planning Settings** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) form for an item, the system also uses the following settings. They are specified on the **Vendors** tab on the [Stock Items](../UserGuide/IN_20_25_00.md) form for the preferred vendor \(if the **Default** check box is selected on this tab for any vendor\) or the **Inventory Planning** tab of the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form:

-   **Add. Lead Time \(Days\)**: The number of days added to the preferred vendor lead time.
-   **Min. Order Qty.**: The minimum quantity of the item.
-   **Lot Size**: The item quantity of the lot; in planning recommendations, the system rounds up the quantity of the item to the nearest multiple of the lot size. For example, suppose that the demand is 37, the minimum order quantity is 20, and the lot size is 5; then the planning recommendation quantity is 40.
-   **Max. Order Qty.**: The maximum quantity of the item. Multiple planning recommendations can be created to cover the demand.

The system will update the **Safety Stock**, **Reorder Point**, **Min. Order Qty.**, **Max. Order Qty.**, or **Lot Size** box on the **Inventory Planning** tab of the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form for an item–warehouse pair if the following conditions are met:

-   The *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
-   For the stock item, a user has changed the corresponding value on the same tab of the [Stock Items](../UserGuide/IN_20_25_00.md) form.
-   The **Override** check box right of the corresponding settings is cleared on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form the item–warehouse pair.

## Transfer Orders in Inventory Planning {#_925d2972-172d-4447-a1ee-23dfb261d5af .section}

The system can be configured to create planning recommendations of the *Planned Transfer Demand* type on the [Inventory Planning Display](../UserGuide/AM_40_00_00.md) \(AM400000\) form if it finds information about available item transfers during planning. The reference numbers of planning recommendations for transfer are generated automatically, listed on the **Related Document** table column, and have the *PLTR* prefix. A planning manager can then convert the planning recommendation to a transfer order.

To configure the system to do this, for each item that can be transferred from another warehouse, you do the following on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form:

1.  Open or create a record for a combination of the item and the source warehouse.
2.  On the **Inventory Planning** tab, specify the following settings:
    -   **Source**: *Transfer*
    -   **Source Warehouse**: The transfer warehouse

If item transfer between the warehouses usually takes more than one day, you can specify the transfer lead time that the system will use in inventory planning as follows:

1.  Open the **Inventory Planning** tab of the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form for the warehouse to which items can be transferred. In the **Transfer Lead Time** table, add each warehouse from which items can be transferred in the **Replenishment Warehouse** column, and specify the default transfer lead times between the warehouses in the **Transfer Lead Time** column.
2.  If transfer lead time is item-specific, on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form, do the following:
    1.  Select the needed combination of an item and source warehouse.
    2.  In the **Inventory Planning Settings** section of the **Inventory Planning** tab, select the **Override** check box to the right of the **Transfer Lead Time** box, and specify the transfer lead time in the box.

## Stock and Non-Stock Kits in Inventory Planning {#_f05a3b9b-a768-48ac-9d6f-16610bbcc5de .section}

If the *Kit Assembly* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you can configure the system to include the stock components of stock and non-stock kits in inventory planning.

To make the system generate demand requirements for the stock components of a stock kit, you do the following:

-   On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, specify the following settings for the kit:
    -   **Is a Kit** \(**General** tab\): Selected
    -   **Planning Method** \(**General** tab\): *MRP* or *DRP*
    -   **Source** \(**Inventory Planning** tab\): *Kit Assembly*
-   On the [Kit Specifications](../UserGuide/IN_20_95_00.md) \(IN209500\) form, make sure that the kit specification has at least one active revision. If multiple active revisions exist, the most recent one will be used for inventory planning.

To make the system generate demand requirements for the stock components of a non-stock kit, you do the following:

-   On the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202500\) form \(**General** tab\), select the **Is a Kit** check box.
-   On the [Kit Specifications](../UserGuide/IN_20_95_00.md) form, make sure that the kit specification has at least one active revision. If multiple active revisions exist, the most recent one will be used for inventory planning.

**Attention:** A non-stock kit is considered by the inventory planning process if it is included in a sales order on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form or in a forecast record on the [Forecast](../UserGuide/AM_20_20_00.md) \(AM202000\) form.

You can also indicate whether the system should include on-hold kit assemblies in inventory planning. To include them, you select the new **Include On-Hold Kit Assemblies** check box in the **General** section of the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form. When this check box is cleared, kit assemblies with the *On Hold* status are excluded from the process and are listed as exceptions on the [Inventory Planning Exceptions](../UserGuide/AM_40_30_00.md) \(AM403000\) form.

## Automation Schedule for Inventory Planning Regeneration {#_2eb64970-dc49-46c5-a5bf-b63de5d4d60f .section}

We strongly recommend that you set up an automation schedule to run inventory planning regeneration daily during the night or early morning so that the results are available for your organization’s planners and buyers at the start of their workday. You can create an automation schedule either on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) \(AM505000\) form or on the [Automation Schedules](../UserGuide/SM_20_50_20.md) \(SM205020\) form. You should set the schedule to run after all other scheduled processes that affect supply and demand are run to ensure that the inventory planning process has the most up-to-date data. The following automated processes affect inventory planning:

-   Any process that changes the on-hand quantity of inventory items, such as physical counts, adjustments, purchase receipts, shipments, and production reporting
-   Any process that creates demand or supply orders or updates these orders to change quantities or dates, such as importing sales orders
-   Inventory replenishment processes that calculate safety stock and reorder points
-   Release of transactions or documents that were held during the day, such as invoices

**Parent topic:**[Configuring Inventory Planning](../ImplementationGuide/config_Inventory_Planning_Mapref.md)

