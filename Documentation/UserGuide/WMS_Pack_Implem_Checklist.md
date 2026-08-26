# Packing Operations: Implementation Checklist {#_9abf8a05-ddf9-4de3-b12e-5c53320962f6 .concept}

This topic provides details you can use to ensure that the system is configured properly for the automated packing of items.

## Prerequisites { .section}

Before you start configuring the workflow for automated processing of shipments, you should make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

 [Inventory Preferences](IN_10_10_00.md) \(IN101000\)

|Make sure that all necessary settings related to inventory and order management have been specified, as described in [Configuration of Order Management: Implementation Checklist](../ImplementationGuide/config_InvMgmt_Basic_Implem_Checklist.md).|
|[Warehouses](IN_20_40_00.md) \(IN204000\)|Make sure that the following entities have been created:-   The required warehouses, as described in [Warehouses: Implementation Activity](Warehouses_Implem_Activity.md).
-   The required locations, as described in [Warehouse Locations and Single-Step Transfers: Implementation Activity](Warehouse_Locations_Implem_Activity.md).

|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that the required stock items have been created, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|

## Minimum Workflow Settings { .section}

Before you start packing items for shipments by using a barcode scanner or other device, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following table.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the following features are enabled:-   *Multiple Warehouse Locations*
-   *Warehouse Management*
-   *Fulfillment*

|
|The **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form|Make sure the **Display the Pick Tab** check box is cleared and the **Display the Pack Tab** check box is selected. With these settings, a user processes the packing of items in Pack mode \(without first picking them\) and then confirms the shipment.|
|The **Cross-Reference** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form|Make sure that the barcodes have been specified for each item.|

## Recommended Workflow Settings { .section}

We recommend that you configure the workflow for the automated packing by specifying the following settings on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Display the Scan Log Tab**|Selected|With this check box selected, the system will display the **Scan Log** tab on the [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\) form; on this tab, a user can review the list of operations that have been performed during the past two weeks.|
|**Short Shipment Configuration**|*Forbid*|With the *Forbid* value selected, the system does not allow a user to confirm a shipment that is not packed in full.|
|**Use Explicit Line Confirmation**|Cleared|With this check box cleared, the system does not request user confirmation for each line when the user is performing automated operations in Pack mode.|
|**Confirm Weight for Each Package**|Cleared|With this check box cleared, the user confirms a package, and the system calculates the package weight automatically.|

## Printing Settings { .section}

If the *DeviceHub* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure the printing of documents by using the following settings on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Print Shipment Confirmation Automatically**|Selected|With this check box selected, the system prints the shipment confirmation automatically when a user confirms a shipment.|
|**Print Shipment Labels Automatically**|Selected|With this check box selected, the system prints the shipment labels for the packages included in a shipment when the user confirms the shipment.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow for automated packing by specifying additional settings on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form:

-   To speed up the entry of quantities in the lines being processed, select the **Use Default Quantity** check box. When this check box is selected, the **Set Qty** button on the form toolbar of the [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\) form becomes available before you scan the barcode of an item. You click this button to specify the default quantity of the item. After the default quantity is specified, the system inserts it in the **Packed Qty.** column each time you scan the barcode of the item.
-   To allow users to confirm partially packed shipments, select *Allow with Warning* in the **Short Shipment Configuration** box.

## Known Process Limitations { .section}

If the *Automatic Packaging* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, a user can process in Pack mode only shipments packed to a single box. The processing of shipments packed in two or more boxes in Pack mode is currently not supported.

**Parent topic:**[Automated Packing Operations](../UserGuide/WMS_Pack_Mapref.md)

