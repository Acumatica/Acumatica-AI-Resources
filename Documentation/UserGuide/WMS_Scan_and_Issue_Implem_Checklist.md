# Processing of Inventory Issues: Implementation Checklist

This topic provides details you can use to ensure that the system is configured properly for the automated processing of inventory issues.

**Tip:** The recommendations in this topic are for systems in which lot and serial tracking will not be used—that is, in which the *Lot and Serial Tracking* feature is disabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Prerequisites

Before you start automated processing issues, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following table.

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

We recommend that you configure the workflow for the automated processing of issues by specifying the following settings on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Use Default Quantity in Issues**|Cleared|With this check box cleared,a user can enter the item quantity for each line after entering an item. By default, the system will add one unit of the item to the line.|
|**Use Default Reason Code in Issues**|Selected|With this check box selected, if a reason code for issues has been created on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form and specified in the **Issue/Return Reason Code** box on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form, the system will copy this reason code to all issues created on the [Scan and Issue](IN_30_20_20.md) form.|
|**Request Location for Each Item in Issues**|Cleared|With this check box cleared, the system prompts a user to enter the barcode of a location once. Then the user can enter all needed item barcodes to issue the items from the selected location.|
|**Use Explicit Line Confirmation**|Cleared|With this check box cleared, a user confirms all lines after adding all required data for all items to an issue.|
|**Use Warehouse from User Profile**|Selected|With this check box selected, the system copies the warehouse to be used in the issue from the profile of the signed-in user.|

**Parent topic:**[Automated Processing of Inventory Issues](../UserGuide/WMS_Scan_and_Issue_Mapref.md)

