# Processing of Transfers: Implementation Checklist

This topic provides details you can use to ensure that the system is configured properly for the automated processing of transfers.

**Tip:** The recommendations in this topic are for systems in which lot and serial tracking will not be used—that is, in which the *Lot and Serial Tracking* feature is disabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Prerequisites

Before you start automated processing of transfers, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following table.

<table id="_41789450-4c2c-4e31-ac16-380810313267"><thead><tr><th>

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

</td></tr></tbody>
</table>

## Recommended Workflow Settings

We recommend that you specify the following settings, which determine the workflow for the automated processing of transfers. You specify these settings on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Use Default Quantity in Transfers**|Cleared|With this check box cleared,a user can enter the item quantity for each line after entering an item. By default, the system will add one unit of the item to the line.|
|**Use Default Reason Code in Transfers**|Selected|With this check box selected, if a reason code for transfers has been created on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, the system will copy this reason code to all transfers created on the [Scan and Transfer](IN_30_40_20.md) form.|
|**Request Location for Each Item in Transfers**|Cleared|With this check box cleared, the system prompts a user to enter the barcodes of the origin and destination locations once. Then the user can enter all needed item barcodes to transfer the items between the selected locations.|
|**Use Explicit Line Confirmation**|Cleared|With this check box cleared, a user confirms all lines after adding all required data for all items to a transfer.|
|**Use Warehouse from User Profile**|Selected|With this check box selected, the system copies the warehouse to be used in the transfer from the profile of the signed-in user.|

**Parent topic:**[Automated Processing of Inventory Transfers](../UserGuide/WMS_Scan_and_Transfer_Mapref.md)

