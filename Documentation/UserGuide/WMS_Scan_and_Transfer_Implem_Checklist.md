# Processing of Transfers: Implementation Checklist {#_6b62ca67-dd00-45ae-9549-8577350df4b1 .concept}

This topic provides details you can use to ensure that the system is configured properly for the automated processing of transfers.

**Tip:** The recommendations in this topic are for systems in which lot and serial tracking will not be used—that is, in which the *Lot and Serial Tracking* feature is disabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Prerequisites { .section}

Before you start automated processing of transfers, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following table.

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

## Recommended Workflow Settings { .section}

We recommend that you specify the following settings, which determine the workflow for the automated processing of transfers. You specify these settings on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Use Default Quantity in Transfers**|Cleared|With this check box cleared,a user can enter the item quantity for each line after entering an item. By default, the system will add one unit of the item to the line.|
|**Use Default Reason Code in Transfers**|Selected|With this check box selected, if a reason code for transfers has been created on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, the system will copy this reason code to all transfers created on the [Scan and Transfer](IN_30_40_20.md) form.|
|**Request Location for Each Item in Transfers**|Cleared|With this check box cleared, the system prompts a user to enter the barcodes of the origin and destination locations once. Then the user can enter all needed item barcodes to transfer the items between the selected locations.|
|**Use Explicit Line Confirmation**|Cleared|With this check box cleared, a user confirms all lines after adding all required data for all items to a transfer.|
|**Use Warehouse from User Profile**|Selected|With this check box selected, the system copies the warehouse to be used in the transfer from the profile of the signed-in user.|

**Parent topic:**[Automated Processing of Inventory Transfers](../UserGuide/WMS_Scan_and_Transfer_Mapref.md)

