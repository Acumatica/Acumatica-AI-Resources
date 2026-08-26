# Counting in Physical Inventory: Implementation Checklist {#_5db81a7c-0e3b-41ec-9d95-0e0f8fc4f88e .concept}

This topic provides details you can use to ensure that the system is configured properly for the automated counting of items during physical inventory.

**Tip:** The recommendations in this topic are for systems in which lot and serial tracking will not be used—that is, in which the *Lot and Serial Tracking* feature is disabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Prerequisites { .section}

Before you start automated counting items during physical inventory, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following table.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the following features are enabled:-   *Multiple Warehouse Locations*
-   *Warehouse Management*
-   *Inventory Operations*

|
|[Inventory Preferences](IN_10_10_00.md) \(IN101000\)|Make sure that all necessary settings related to inventory have been specified, as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).|
|[Warehouses](IN_20_40_00.md) \(IN204000\)|Make sure that the following entities have been created:-   The required warehouses, as described in [Warehouses: Implementation Activity](Warehouses_Implem_Activity.md).
-   The required locations, as described in [Warehouse Locations and Single-Step Transfers: Implementation Activity](Warehouse_Locations_Implem_Activity.md).

|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that the required stock items have been created, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|
|[Physical Inventory Types](IN_20_89_00.md) \(IN208900\)|Make sure that the required inventory types have been created, as described in [Types of Physical Inventory](IN__con_Physical_Inventory_Types.md).|
|[Prepare Physical Count](IN_50_40_00.md) \(IN504000\)|Make sure that the physical inventory document has been prepared properly, as described in [Preparation for Physical Count](IN__con_Preparation_for_Physical_Count.md).|

## Recommended Workflow Settings { .section}

We recommend that you configure the workflow for the automated counting of physical inventory by specifying the following setting on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Use Default Quantity in PI Counts**|Cleared|With this check box cleared, the system will prompt a user to enter the item quantity for each new item.|

**Parent topic:**[Automated Processing of Physical Inventory](../UserGuide/WMS_Scan_and_Count_Mapref.md)

