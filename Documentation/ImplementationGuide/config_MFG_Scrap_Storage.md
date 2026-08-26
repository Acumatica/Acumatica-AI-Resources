# Configuration of Scrap, Waste, and By-Products in Production: Scrap Quarantine {#_efb19596-5a78-4a86-bfbd-0540f7ebb148 .concept}

Scrap is defined as quarantined if *Quarantine* is specified as the scrap action in an operation of a bill of material on the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form. When configuring tracking of quarantined scrap, you may need to define the warehouse or warehouse location \(or both\) where the scrapped items will be stored. The choice of the place of storage depends on the valuation method of the produced items and other factors, as described in this topic.

The needed features must be enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form as follows:

-   *Multiple Warehouses*
-   *Multiple Warehouse Locations*

## Scrap Storage and Valuation Methods { .section}

The most appropriate way to store quarantined scrapped items depends on the valuation method of the item to be produced, which is specified in the **Valuation Method** box of the **General** tab on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form. The option selected in this box affects the storage of scrapped items as follows:

-   *FIFO* or *Average*: With one of these options selected for the item, you can either store quarantined scrapped items in a warehouse that contains only scrapped items or create a dedicated warehouse location in an existing warehouse for these items. If you use a dedicated warehouse location, you select the **Cost Separately** check box for this location on the **Locations** tab of the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form. This will ensure that the cost of scrapped items does not affect the cost of produced items.
-   *Standard*: With this option selected for the item, we recommend that you use a warehouse that is dedicated to scrapped items. On the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form, for the item to be produced and the scrap warehouse, you select the **Override Standard Cost** check box and specify the cost of the scrapped item.

    **Tip:** If you use the same warehouse as you use for completed items, the system will post the scrap cost to the scrap GL account and will post any variance from the standard cost of the completed items to the standard cost variance GL account.

-   *Specific*: With this option selected for the item, you can use the same warehouse as is used for storing produced items, but the last cost and average cost values of the produced item will include the scrap cost adjustment. You can view these values on the **Price/Cost** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form.

## Default Settings for Scrap Storage { .section}

When a user creates a production order on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) \(AM201500\) form, the system can populate the **Scrap Warehouse** and **Scrap Location** boxes with default settings depending on the scrap source specified for the production order type of the production order. The option is specified in the **Scrap Source** box on the **General** tab of the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form.

You select the option in this box \(*None*, *Item*, *Warehouse*, or *Order Type*\) based on the entity that provides the default warehouse and warehouse location for scrap storage. You also specify the default values for the warehouse and warehouse location in the settings of the entities involved in production; the system will copy these values to each new production order of the type. The configuration steps depend on the entity to provide the default storage settings for scrapped items as follows:

-   If the default scrap warehouse and location depend on the type of the production order, you do the following:
    1.  In the **Scrap Source** box of the [Production Order Types](../UserGuide/AM_20_11_00.md) form, you select *Order Type*.
    2.  In the **Scrap Warehouse** and **Scrap Location** boxes of the same form, you specify the warehouse and the location for scrap accordingly. These values are copied to a production order of the type on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) form.
-   If the default scrap warehouse and location depend on the warehouse in which the produced item is stored \(that is, on the item-warehouse pair of the item\), you do the following:
    1.  In the **Scrap Source** box of the [Production Order Types](../UserGuide/AM_20_11_00.md) form, you select *Item*.
    2.  In the **Scrap Warehouse** and **Scrap Location** boxes of the **Manufacturing** tab on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form, you specify the warehouse and the location, respectively, for scrap. These values are copied to a production order of the type on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) form.
-   If the default scrap warehouse and location are the same for all units of the produced item regardless of the warehouse in which the item is stored, you do the following:
    1.  In the **Scrap Source** box of the [Production Order Types](../UserGuide/AM_20_11_00.md) form, you select *Item*.
    2.  In the **Scrap Warehouse** and **Scrap Location** boxes of the **Manufacturing** tab on [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you specify the warehouse and the location, respectively, for scrap. These values are copied to a production order of the type on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) form.

        **Attention:** The system applies these settings if a record does not exist on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form for the stock item specified in the **Inventory ID** box and the warehouse specified in the **Warehouse** box of the production order on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) form.

-   If the default scrap warehouse and location are the same for all items stored in a particular warehouse, you do the following:
    1.  In the **Scrap Source** box of the [Production Order Types](../UserGuide/AM_20_11_00.md) form, you select *Warehouse*.
    2.  In the **Scrap Warehouse** and **Scrap Location** boxes of the **Manufacturing** tab on [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, you specify the warehouse and the location, respectively, for scrap. These values are copied to a production order of the type on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) form.
-   If you do not want a default scrap warehouse or location to be inserted into the production order, in the **Scrap Source** box of the [Production Order Types](../UserGuide/AM_20_11_00.md) form, you select *None*. The system will not insert any values in the **Scrap Warehouse** and **Scrap Location** boxes of the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) form for a production order of the type. A user can specify these values manually, if needed.

**Parent topic:**[Implementing Production with Scrap, Waste, and By-Products](../ImplementationGuide/config_MFG_Scrap_Mapref.md)

