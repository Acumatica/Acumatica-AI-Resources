# Inventory Planning with MRP: Implementation Checklist {#_52d119c7-e714-4543-8190-e2a0cfc3f7a3 .concept}

The following sections provide details that you can use to ensure that the system is configured properly for inventory planning, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially perform inventory planning, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. You can perform a sample configuration of inventory planning, as described in [Inventory Planning Configuration: To Implement MRP](../ImplementationGuide/config_Inventory_Planning_MRP_Implem_Activity.md).

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Material Requirements Planning* feature has been enabled.|
|[Numbering Sequences](CS_20_10_10.md) \(CS201010\)|The numbering sequences for planning recommendations, MPS orders, and forecast have been created.**Tip:** We recommend that you create a separate numbering sequence for planning recommendations to distinguish these orders from regular production orders in the system.

|
|[Production Order Types](AM_20_11_00.md) \(AM201100\)|At least one production order type with the *Planning* function has been created.|
|[Work Calendar](CS_20_90_00.md) \(CS209000\)|Work calendars that will be used in inventory planning have been created.|
|[MPS Type](AM_20_30_00.md) \(AM203000\)|At least one MPS type has been created.|
|[Inventory Planning Preferences](AM_10_00_00.md) \(AM100000\)|The system settings that affect the inventory planning process have been specified.|
|[Inventory Planning Buckets](AM_20_12_00.md) \(AM201200\)|The inventory planning buckets have been created.|
|[Warehouses](IN_20_40_00.md) \(IN204000\)|The needed settings for the warehouse and warehouse locations involved in inventory planning have been specified.|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|For items that should be included in inventory planning and are stored in only one warehouse, inventory planning and replenishment settings have been specified.|
|[Item Warehouse Details](IN_20_45_00.md) \(IN204500\)|For items that are stored in multiple warehouses, inventory planning and replenishment settings for warehouse-stock item pairs have been specified.|

## Other Settings That Affect the Workflow { .section}

You can affect the processing by specifying additional settings on the [Inventory Planning Preferences](AM_10_00_00.md) \(AM100000\) form as follows:

-   To include sales orders, purchase orders, and production orders that have the *On Hold* status in the processing, select the **Include On Hold Sales Orders**, **Include On Hold Purchase Orders**, and **Include On Hold Production Orders** check boxes in the **General** section.
-   To make the system calculate lead times for a planned order based on the run units and run times specified for each operation of a bill of material on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form, select the **Use Fixed Manufacturing Times** check box in the **General** section.
-   You may want the system to consolidate items with the same ID from multiple demand documents into a single planning recommendation during inventory planning. To do this, select the **Use Days of Supply to Consolidate Orders** check box in the **Consolidation** section.
-   You may want the system to consolidate items with the same ID from multiple demand documents with deferred due dates into a single planning recommendation. To do this, select the **Use Long-Term Consolidation Bucket** check box in the **Consolidation** section. Then specify the following settings:
    -   **Consolidate After \(Days\)**: The delay period after which the system starts consolidating items in demand documents
    -   **Bucket \(Days\)**: The number of days within which the due dates in the demand documents must fall

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you run inventory planning by performing instructions similar to those described in [Inventory Planning with MRP: Process Activity](MFG_MRP_Activity.md).

**Parent topic:**[Inventory Planning with MRP](../UserGuide/MFG_MRP_Mapref.md)

