# Picking and Packing Operations: Implementation Checklist {#_2ed6afc9-0e68-44b3-bec9-586210ce7ffe .concept}

This topic provides details you can use to ensure that the system is configured properly for the automated picking and packing of items.

## Prerequisites { .section}

Before you start configuring the workflow for automated processing of shipments, you should make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

 [Inventory Preferences](IN_10_10_00.md) \(IN101000\)

|Make sure that all necessary settings related to inventory and order management have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Warehouses](IN_20_40_00.md) \(IN204000\)|Make sure that the following entities have been created:-   The required warehouses, as described in [Warehouses: Implementation Activity](Warehouses_Implem_Activity.md).
-   The required locations, as described in [Warehouse Locations and Single-Step Transfers: Implementation Activity](Warehouse_Locations_Implem_Activity.md).

|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that the required stock items have been created, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|

## Minimum Workflow Settings { .section}

Before you start picking and packing items for shipments by using a barcode scanner or other device, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following table.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the following features are enabled:-   *Multiple Warehouse Locations*
-   *Warehouse Management*
-   *Fulfillment*

|
|The **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form|Make sure the following check boxes are selected:-   **Display the Pick Tab**: If this check box is selected, a user starts the processing of a shipment with picking the items.
-   **Display the Pack Tab**: If this check box is selected, a user packs the items into the boxes before confirming a shipment.

|
|The **Cross-Reference** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form|Make sure that the barcodes have been specified for each item.|

## Recommended Workflow Settings { .section}

We recommend that you configure the workflow for the automated picking and packing by specifying the following settings on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Display the Scan Log Tab**|Selected|With this check box selected, the system will display the **Scan Log** tab on the [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\) form; on this tab, a user can review the list of operations that have been performed during the past two weeks.|
|**Short Shipment Confirmation**|*Forbid*|With the *Forbid* value selected, a user cannot confirm the picking of the shipment if not all items have been picked.|
|**Use Explicit Line Confirmation**|Cleared|With this check box cleared, the system does not request user confirmation for each line when the user is performing automated operations in Pick mode and Pack mode.|
|**Confirm Weight for Each Package**|Cleared|With this check box cleared, the user confirms a package, and the system calculates the package weight automatically.|

## Printing Settings { .section}

If the *DeviceHub* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure the printing of documents by using the following settings on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Print Shipment Confirmation Automatically**|Selected|With this check box selected, the system prints the shipment confirmation automatically when a user confirms a shipment.|
|**Print Shipment Labels Automatically**|Selected|With this check box selected, the system prints the shipment labels for the packages included in a shipment when the user confirms the shipment.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow for the automated picking and packing of items by specifying additional settings on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form:

-   To speed up the entry of quantities in the lines being processed, select the **Use Default Quantity** check box. When this check box is selected, the **Set Qty** button on the form toolbar of the [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\) form becomes available before you scan the barcode of an item. You click this button to specify the default quantity of the item. After the default quantity is specified, the system inserts it in the **Picked Qty.** or **Packed Qty.** column each time you scan the barcode of the item.
-   To allow users to confirm partially picked and packed shipments, select *Allow with Warning* in the **Short Shipment Confirmation** box.
-   To enable pickers to change picking locations, select the **Allow Picking Location Changes** check box on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To define the source of **Shipped Qty.** on the [Shipments](SO_30_20_00.md) \(SO302000\) form for the lines of a shipment confirmed on the [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\) form, use the **Use Packed Quantity as Shipped Quantity** check box. If this check box is selected, the values are copied from the **Packed Qty.** column on the [Pick, Pack, and Ship](SO_30_20_20.md) form; if cleared, the values are copied from the **Picked Qty.** column.

## Known Process Limitations { .section}

If the *Automatic Packaging* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, a user can process in Pack mode only shipments packed to a single box. Processing of shipments packed to two or more boxes in Pack mode is currently not supported.

**Parent topic:**[Automated Picking and Packing Operations](../UserGuide/WMS_Pick_Pack_Mapref.md)

