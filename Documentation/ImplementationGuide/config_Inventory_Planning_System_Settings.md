# Inventory Planning Configuration: System-Wide Settings {#_4e134e8f-53a0-4a04-a82f-9753b4f0f263 .concept}

As part of configuring inventory planning, you may need to specify the system-wide settings on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form, as described in this topic. These settings determine how inventory planning as a whole is performed in the system.

**Attention:** You use this form if you are setting up distribution requirements planning \(DRP\) or material requirements planning \(MRP\). You can use production orders in inventory planning only if the *Manufacturing* and *Material Requirements Planning* features are enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Inventory Planning Settings { .section}

On the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form, you specify the following settings:

-   Planning order type \(MRP only\): If the *Material Requirements Planning* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, in the **Plan Order Type** box \(**General** section\), you select the default planning order type for the system to create planning orders during inventory planning. The planning order type should be created in advance.
-   Planning horizon \(optional\): In the **Planning Horizon** box \(**General** section\), you can specify the number of days that the system will use to restrict the incoming item plans processed during the regeneration of inventory planning. For details, see [Planning Horizon](#_9c98ef42-665f-49c3-acbd-b4390092b1cd).
-   Grace period \(optional\): In the **Grace Period** box \(**General** section\), you can specify the time period within which the supply orders will be regarded as satisfying the demand date. For details, see [Grace Period in Inventory Planning](#_0939331f-e699-4125-9eb7-8ae27fbe1599).
-   Stocking method: In the **Stocking Method** box \(**General** section\), you select the method \(*Reorder Point* or *Safety Stock*\) the system will use for replenishing the demanded items, which is initiated by inventory planning process.
-   Settings for including documents on hold in planning: By using the **Include On Hold** check boxes in the **General** section, you determine whether each of the following must be considered by the system during planning when they are on hold: sales orders, purchase orders, and production orders. For more information, see [Documents On Hold in Inventory Planning](#_f2d2d2ca-5247-49e3-ad14-9c3fbedf9528).
-   The setting determining the calculation of manufacturing times \(MRP only\): If the *Material Requirements Planning* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, you decide if you want the system to calculate lead times dynamically for a planning recommendation or use the fixed lead time specified for each item by clearing or selecting, respectively, the **Use Fixed Manufacturing Times** check box \(**General** section\).
-   An indicator of whether expired blanket sales orders must be included in inventory planning: You decide if you want to include blanket sales orders that are expired in inventory planning by clearing or selecting the **Include Expired Blanket Sales Orders** check box \(**General** section\).
-   Consolidation settings \(optional\): The system can consolidate items with the same ID from multiple demand documents into a single planning recommendation during inventory planning. To configure this, you select the **Use Days of Supply to Consolidate Orders** check box in the **Consolidation** section. You can also set up the system so that it consolidates demand documents with deferred requested dates. For details, see [Consolidation of Items in Multiple Demand Documents](#_ae26a954-8af6-4130-a7e5-a20db97b61b1).

## Planning Horizon {#_9c98ef42-665f-49c3-acbd-b4390092b1cd .section}

The planning horizon is the number of days that determines the time range during which the system processes item plans. The system excludes plans with a supply or demand date beyond the specified number of days from the regeneration date. You specify the planning horizon in the **Planning Horizon** box in the **General** section of the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form. The specification of this value can reduce the volume of item plans processed during inventory planning regeneration, potentially improving the performance of that process.

If your company has many item plans extending into the distant future, you may want to exclude this demand from planning by specifying a planning horizon. This can be useful if your customers place sales orders far in advance of the date when the items are needed \(for example, blanket sales orders\). Reducing the number of processed item plans will shorten the run time of the process on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) \(AM505000\) form.

For example, suppose that your company receives orders up to 18 months in advance. The company also receives demand for configured orders from distributors, and the longest lead time is four months. Inventory planning regeneration, which is run daily, takes several hours to complete. To reduce processing time, you may want to exclude supply and demand plans beyond six months. This duration includes four months for the lead time plus a buffer of two months for variation in the supply chain. No action will be taken for demand beyond this period. In this case, you specify `180` \(which equals approximately six months\) in the **Planning Horizon** box on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) form. During subsequent runs of the process on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) form, the system will process only item plans with a supply or demand date that is earlier than or the same as the regeneration date plus 180 days.

The default planning horizon value is *0*, which will not restrict any incoming item plans, causing all records to be processed during the regeneration of inventory planning on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) form. We recommend that you carefully consider what planning horizon best fits your planning needs before you change the predefined setting in your production environment.

## Grace Period in Inventory Planning {#_0939331f-e699-4125-9eb7-8ae27fbe1599 .section}

The grace period is the number of days after the requested date of an item in a demand order within which the item can be received in inventory \(whether it is purchased from a vendor or produced internally\) and still be considered as satisfying the requested date.

During planning, for each demand date \(that is, the requested date of an item in a sales order\), the system determines if a supply order within the grace period can fully satisfy the demand. The supply order can be a purchase order; it can also be a production order if your company is using material requirements planning. You specify the grace period in the **Grace Period** box on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form. If the demand is not fully satisfied by supply orders within the grace period, then the system creates a planning recommendation to satisfy the remaining demand.

For example, suppose that you specify the grace period as 30 \(which represents 30 calendar days\). Further suppose that you have two sales orders, the first for 10 items with October 6 as the requested date and the second for another 10 items with October 10 as the requested date. Your vendor can deliver the materials required to produce the item on November 9. This supply will satisfy the sales order dated October 10 and will not satisfy the sales order dated October 6.

When the due date of a supply order is earlier than the demand date, the system does not consider the grace period, and it satisfies all demands because there is no need to create a planning recommendation.

You should consider your demand and supply patterns, supply lead times, and minimum order quantities to determine an appropriate grace period.

Depending on the grace period value, exceptions are generated on the [Inventory Planning Exceptions](../UserGuide/AM_40_30_00.md) \(AM403000\) form to expedite or defer supply orders based on the values of the **Days Before** and **Days After** boxes on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) form. But if the date of a supply order is far beyond the grace period, then the system will only generate an exception to delete the supply.

## Documents On Hold in Inventory Planning {#_f2d2d2ca-5247-49e3-ad14-9c3fbedf9528 .section}

You can specify whether sales orders, purchase orders, and production orders \(only for MRP\) that are on hold should be considered by the system when it plans items. We generally recommend that you include the documents on hold in inventory planning. To do this, you select the **Include On-Hold Sales Orders**, **Include On-Hold Purchase Orders**, and **Include On-Hold Production Orders** check boxes in the **General** section of the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form.

**Attention:** The **Include On-Hold Production Orders** check box is shown only if the *Manufacturing* and *Material Requirements Planning* features are enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

You should exclude the on-hold orders from inventory planning if any of the following conditions is true in your company:

-   Sales orders are always prepaid and on hold until they are paid; when the orders are paid, the dates are set appropriately. In this case, you should clear the **Include On-Hold Sales Orders** check box.
-   Dates and quantities in sales orders are not finalized. In this case, you should clear the **Include On-Hold Sales Orders** check box.
-   Dates and quantities in production orders are not finalized. In this case, you should clear the **Include On-Hold Production Orders** check box.
-   The purchasing department creates orders far in advance with suppliers and often needs to await confirmation of delivery dates and quantities from the supplier. In this case, you should clear the **Include On-Hold Purchase Orders** check box.

## Consolidation of Items in Multiple Demand Documents {#_ae26a954-8af6-4130-a7e5-a20db97b61b1 .section}

During inventory planning, if multiple demand documents \(such as sales orders\) contain the same item and have a due date \(such as a required date in a sales order\) that is within a specific time period, the system can consolidate items from these documents into a single planning recommendation. To implement this behavior, you select the **Use Days of Supply to Consolidate Orders** check box in the **Consolidation** section of the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form.

With this check box selected, you specify the time period for consolidating items in the **Days of Supply** box on the **Inventory Planning** tab \(**Inventory Planning Settings** section\) of the needed forms for the noted records:

-   [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form for an item class. The system copies this setting to all newly created stock items for which this class is selected.
-   [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form for a stock item.
-   [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form for an item–warehouse pair. Thus, for an item that is stored in multiple warehouses, you can specify a different number of days for the item in each warehouse.

For example, suppose that the **Days of Supply** setting for a juicer is *7*. Further suppose that two sales orders containing the juicer have been created with the requested date within the same week. When inventory planning is run, the system will group the juicers from these two orders into one planning recommendation as a potential production order, instead of generating two planning recommendations, one per sales order.

If sales managers create long-term sales orders for some customers to provide a discount, you can configure the system to use a long-term consolidation bucket, and you can specify settings that are specific to long-term consolidation. To do this, in the **Consolidation** section of the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) form, you first select the **Use Long-Term Consolidation Bucket** check box. On the form, you then specify the number of days after which the system starts consolidating items from demand documents in the **Consolidate After \(Days\)** box and the number of days within which the requested dates in the demand documents must fall in the **Bucket \(Days\)** box.

If you use forecasts for planning item demand, the system also consolidates forecast records during inventory planning. For example, suppose that weekly forecast records exist for the following quarter. Further suppose that the **Consolidate After \(Days\)** box contains *45*, and the **Bucket \(Days\)** box contains *30*. In this case, when performing inventory planning, the system will create a single planning recommendation for all forecast records with dates starting from today's date plus 45 days and within 30 days after the starting date of consolidation.

**Parent topic:**[Configuring Inventory Planning](../ImplementationGuide/config_Inventory_Planning_Mapref.md)

