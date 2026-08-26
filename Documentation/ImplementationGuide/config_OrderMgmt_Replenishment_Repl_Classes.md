# Configuration of Replenishment: Classes and Sources of Replenishment {#_63ba985c-3c4a-4cf0-81ad-f509e328f2c1 .concept}

As an early step of configuring replenishment, you must create at least one replenishment class for each type of replenishment source that you will use. You will then specify replenishment classes for other entities you create during configuration.

## Creation of a Replenishment Class {#section_m4f_rz5_2vb .section}

You create replenishment classes by using the [Replenishment Classes](../UserGuide/IN_20_88_00.md) \(IN208800\) form; for each class, you specify its name, description, and replenishment source.

As the replenishment source, you can select one of the following options:

-   *Drop-Shipment*: No actual replenishment is performed for the item because it is sent directly from the vendor to the customer. When you add the item to a sales order on the [Sales Orders](../Shared/../UserGuide/SO_30_10_00.md) \(SO301000\) form, the system automatically selects the **Mark for PO** check box so that a purchase order of the *Drop-Ship* type can be created for the item. This option is available only if the *Drop Shipments* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.
-   *Manufacturing*: The item will be manufactured to replenish its stock. The [Inventory Planning Display](../Shared/../UserGuide/AM_40_00_00.md) \(AM400000\) form shows stock items with this replenishment source for which production orders should be created.
-   *None*: No replenishment is required. This option could be used, for example, for a warehouse that is closing its operations or if ISV integration is used.
-   *Purchase*: Stock of the item will be replenished by purchase orders for the vendor when it is determined by the replenishment settings and in the quantities calculated based on the replenishment settings. By default, the default vendor specified on the **Vendors** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) form will be used in a purchase order, but you can select another vendor on the [Item Warehouse Details](../Shared/../UserGuide/IN_20_45_00.md) \(IN204500\) or [Prepare Replenishment](../Shared/../UserGuide/IN_50_80_00.md) \(IN508000\) form. If replenishment of a stock item should be performed by purchasing directly from a vendor to a warehouse, on the **Inventory Planning** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) form, you leave the **Replenishment Warehouse** box empty.
-   *Purchase to Order*: No actual replenishment is performed for the stock item. When you add this stock item to a sales order, the system automatically selects the **Mark for PO** check box so that a purchase order of the *Normal* type can be created for this item. This option is available only if the *Sales Order to Purchase Order Link* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) form.
-   *Transfer*: For stock replenishment in a warehouse, the items will be transferred from a source warehouse. This option is available only if the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) form.

**Attention:** If you want to configure automatic calculation of replenishment parameters, you must use only replenishment classes with the *Purchase* or *Transfer* replenishment source. For details, see [Configuration of Replenishment: Replenishment Methods](config_OrderMgmt_Replenishment_Methods.md) and [Configuration of Replenishment: Demand Forecast Model](config_OrderMgmt_Replenishment_Demand_Forecast_Model.md).

## Use of Replenishment Classes {#section_bff_q3v_2vb .section}

You can specify a replenishment class for the following:

-   Any warehouse: You specify the replenishment class in the Summary area of the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form. If the class is not empty, the system copies this class to the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form for the item–warehouse pair.
-   Any item class: On the **Inventory Planning** tab of the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form, you can create a list of replenishment classes that apply by default to stock items of the item class. Also, for each replenishment class, you can specify the demand forecasting model and the settings to be used in automatic replenishment.
-   Any stock item: On the **Inventory Planning** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, the system populates the table with the replenishment classes and settings that were specified for the selected item class. The class settings can be overridden.
-   Any item–warehouse pair: On the **Inventory Planning** tab of the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form, you select a replenishment class. By default, the settings that were specified for the class on the **Inventory Planning** tab of the [Warehouses](../UserGuide/IN_20_40_00.md) form are inserted. If on the [Warehouses](../UserGuide/IN_20_40_00.md) form the class is empty, the system copies this class from the [Stock Items](../UserGuide/IN_20_25_00.md) form. You can override most of these settings by selecting the **Override Replenishment Settings** check box.

**Parent topic:**[Replenishment for Stock Items](../ImplementationGuide/config_OrderMgmt_Replenishment_Mapref.md)

