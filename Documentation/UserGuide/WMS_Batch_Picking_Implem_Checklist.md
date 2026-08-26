# Batch Picking: Implementation Checklist {#_bf48b822-f5fe-4573-b79f-9cd9394abe33 .concept}

This topic provides details you can use to ensure that the system is configured properly for picking and packing items in a batch.

## Prerequisites { .section}

Before you begin processing shipments in a batch, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

 [Inventory Preferences](IN_10_10_00.md) \(IN101000\)

|Make sure that all necessary settings related to inventory and order management have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the following features are enabled:-   *Warehouse Management*
-   *Fulfillment*
-   *Advanced Picking*

|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that the required stock items have been created, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)|Make sure that the automated picking workflow is configured to fit the workflow established in your organization, as described in [Picking and Packing Operations: Implementation Checklist](WMS_Pick_Pack_Implem_Checklist.md) or [Packing Operations: Implementation Checklist](WMS_Pack_Implem_Checklist.md).|

## Printing Settings { .section}

If the *DeviceHub* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure the printing of documents by using the following settings on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Print Shipment Confirmation Automatically**|Selected|With this check box selected, the system prints the shipment confirmation automatically when a user confirms a shipment.|
|**Print Shipment Labels Automatically**|Selected|With this check box selected, the system prints the shipment labels for the packages included in a shipment when the user confirms the shipment.|

## Known Process Limitations { .section}

-   Shipments which include non-stock items of any type cannot be processed in batch pick lists. Such shipments can be processed as separate shipments or in wave pick lists.
-   To enable pickers to change picking locations, select the **Allow Picking Location Changes** check box on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   If the *Automatic Packaging* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, a user can process in Pack mode only shipments packed to a single box. The processing of shipments packed in two or more boxes in Pack mode is currently not supported.
-   Shipments with the *Material Issue* type cannot be included in a batch picking worksheet.

**Parent topic:**[Automated Fulfillment of Orders with Batch Picking](../UserGuide/WMS_Batch_Picking_Mapref.md)

