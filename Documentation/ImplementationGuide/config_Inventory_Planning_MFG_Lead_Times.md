# Inventory Planning Configuration: Lead Times {#_18aa0291-b82d-48a4-98d7-b91f2d15e34e .concept}

In inventory planning, the system can use lead times to calculate the action dates for planning recommendations.

**Attention:** You can use production orders in inventory planning only if the *Manufacturing* and *Material Requirements Planning* features are enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Lead Times in Inventory Planning { .section}

When the system creates planning recommendations on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) \(AM505000\) form, the system calculates an action date for each recommendation as follows:

-   For a planning recommendation to be converted to a purchase order, the action date is the date when this action must be taken \(that is, the date when inventory must be available in a warehouse\).
-   For a planning recommendation to be converted to a production order, the action date is the date when the production must start.

The system calculates the action dates for planning recommendations by using lead times, which can be any of the following:

-   Purchase lead times, which the system uses for planning recommendations for inventory to be purchased from vendors. For details, see the *Lead Times for Purchased Items* section below.
-   Manufacturing lead times, which the system uses for planning recommendations for items to be produced. Depending on the settings you have specified, it uses one of the following:
    -   Fixed manufacturing lead times if the appropriate settings are specified. For more information, see the *Fixed Manufacturing Lead Time* section below.
    -   Variable manufacturing lead times if fixed lead times are not configured. For details, see [Inventory Planning Configuration: Variable Manufacturing Lead Times](config_Inventory_Planning_MFG_Variable_Lead_Times.md).

## Lead Times for Purchased Items { .section}

In inventory planning, the system uses purchase lead times to calculate the action dates for planning recommendations with the *Purchase* source. Purchase lead times are always fixed and do not depend on the order quantity, so you should specify these times based on a typical order size. You set up the purchase lead times as follows:

1.  You specify the calendar that the system will use for the action dates in the **Purchase Calendar ID** box on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form.
2.  For each stock item to be purchased, you do either of the following:
    1.  If the *Multiple Warehouses* feature is disabled and a preferred vendor is selected on the **Vendors** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you make sure that the lead time for this vendor is specified in the **Lead Time \(Days\)** column.
    2.  If the *Multiple Warehouses* feature is enabled and a preferred vendor is selected in the **Preferred Vendor** box on the **Inventory Planning** tab of the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form for an item–warehouse pair, you make sure that the lead time for this vendor is specified in the **Vendor Lead Time \(Days\)** box.

For example, suppose that the production must start on January 30, which is a working day. The purchase lead time is 10 days. Then the action date for the planning recommendations must be January 21. Further suppose that January 21 is a Saturday, which is a non-working day, according to the work calendar. Then the system moves the action date to January 20 because it is the nearest working day.

## Fixed Manufacturing Lead Time { .section}

If the *Material Requirements Planning* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you may want the system to calculate manufacturing lead times by using fixed values for each stock item. This means that the lead time does not depend on the quantity of produced item. In this case, you do the following to set up the system:

1.  On the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form \(**Scheduling** section\), in the **Fixed MFG Calendar ID** box, you specify the work calendar the system will use for calculating the action dates for planning recommendations.
2.  In the **Fixed MFG Units** box in the same section of the form, you select the time unit—days or hours—the system will use for the lead time.
3.  For each stock item to be produced, on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you specify the time required to produce the item in the **MFG Lead Time** box on the **Manufacturing** tab.
4.  If the manufacturing time for any item is warehouse-specific, on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form, you specify the time required to produce the item in a particular warehouse in the **MFG Lead Time** box on the **Manufacturing** tab.
5.  If fixed manufacturing times must be used for all production orders by default, on the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form, you select the **Use Fixed Manufacturing Times** check box in the **Scheduling** section.
6.  If fixed manufacturing times must be used in inventory planning, on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form, you select the **Use Fixed Manufacturing Times** check box in the **General** section.
7.  If you need to use fixed manufacturing times for a particular production order, on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) \(AM201500\) form, you select the **Use Fixed Mfg Lead Times for Order Dates** check box on the **General** tab.

**Parent topic:**[Configuring Inventory Planning](../ImplementationGuide/config_Inventory_Planning_Mapref.md)

