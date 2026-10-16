# Counting in Physical Inventory: Implementation Checklist

This topic provides details you can use to ensure that the system is configured properly for the automated counting of items during physical inventory.

**Tip:** The recommendations in this topic are for systems in which lot and serial tracking will not be used—that is, in which the *Lot and Serial Tracking* feature is disabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Prerequisites

Before you start automated counting items during physical inventory, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following table.

<table id="_c80a592d-29d7-4666-932e-a5381a860201"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

Make sure that the following features are enabled:-   *Multiple Warehouse Locations*
-   *Warehouse Management*
-   *Inventory Operations*

</td></tr><tr><td>

[Inventory Preferences](IN_10_10_00.md) \(IN101000\)

</td><td>

Make sure that all necessary settings related to inventory have been specified, as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).

</td></tr><tr><td>

[Warehouses](IN_20_40_00.md) \(IN204000\)

</td><td>

Make sure that the following entities have been created:-   The required warehouses, as described in [Warehouses: Implementation Activity](Warehouses_Implem_Activity.md).
-   The required locations, as described in [Warehouse Locations and Single-Step Transfers: Implementation Activity](Warehouse_Locations_Implem_Activity.md).

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\)

</td><td>

Make sure that the required stock items have been created, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).

</td></tr><tr><td>

[Physical Inventory Types](IN_20_89_00.md) \(IN208900\)

</td><td>

Make sure that the required inventory types have been created, as described in [Types of Physical Inventory](IN__con_Physical_Inventory_Types.md).

</td></tr><tr><td>

[Prepare Physical Count](IN_50_40_00.md) \(IN504000\)

</td><td>

Make sure that the physical inventory document has been prepared properly, as described in [Preparation for Physical Count](IN__con_Preparation_for_Physical_Count.md).

</td></tr></tbody>
</table>

## Recommended Workflow Settings

We recommend that you configure the workflow for the automated counting of physical inventory by specifying the following setting on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Use Default Quantity in PI Counts**|Cleared|With this check box cleared, the system will prompt a user to enter the item quantity for each new item.|

**Parent topic:**[Automated Processing of Physical Inventory](../UserGuide/WMS_Scan_and_Count_Mapref.md)

