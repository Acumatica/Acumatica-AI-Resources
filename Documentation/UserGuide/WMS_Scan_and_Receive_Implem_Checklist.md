# Processing of Inventory Receipts: Implementation Checklist

This topic provides details you can use to ensure that the system is configured properly for the automated processing of inventory receipts.

**Tip:** The recommendations in this topic are for systems in which lot and serial tracking will not be used—that is, in which the *Lot and Serial Tracking* feature is disabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Prerequisites

Before you start automated processing receipts, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following table.

<table id="_c838fc52-0516-4b83-b17f-41bf1c248c9f"><thead><tr><th>

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

We recommend that you configure the workflow for the automated processing of receipts by specifying the following settings on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Use Default Quantity in Receipts**|Cleared|With this check box cleared,a user can enter the item quantity for each line after entering an item. By default, the system will add one unit of the item to the line.|
|**Use Default Reason Code in Receipts**|Selected|With this check box selected, if a reason code for receipts has been created on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form and specified in the **Receipt Reason Code** box on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form, the system will copy this reason code to all receipts created on the [Scan and Receive](IN_30_10_20.md) form.|
|**Request Location for Each Item in Receipts**|Cleared|With this check box cleared, the system prompts a user to enter the barcode of a location once. Then the user can enter all needed item barcodes to receive the items from the selected location.|
|**Use Explicit Line Confirmation**|Cleared|With this check box cleared, a user confirms all lines after adding all required data for all items to a receipt.|
|**Use Warehouse from User Profile**|Selected|With this check box selected, the system copies the warehouse to be used in receipts from the profile of the signed-in user.|

**Parent topic:**[Automated Processing of Inventory Receipts](../UserGuide/WMS_Scan_and_Receive_Mapref.md)

