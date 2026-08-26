# Paperless Picking: Implementation Checklist {#_33ce6398-c5d4-45f7-965b-10ad3c51da11 .concept}

This topic provides details you can use to ensure that the system is configured properly for paperless picking and packing items.

## Implementation Checklist { .section}

Before you begin paperless picking and packing items, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

 [Inventory Preferences](IN_10_10_00.md) \(IN101000\)

|Make sure that all necessary settings related to inventory and order management have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the following features are enabled:-   *Warehouse Management*
-   *Fulfillment*
-   *Paperless Picking*

|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that the required stock items have been created, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)|Make sure that the automated picking workflow is configured to fit the workflow established in your organization, as described in [Picking and Packing Operations: Implementation Checklist](WMS_Pick_Pack_Implem_Checklist.md) or [Packing Operations: Implementation Checklist](WMS_Pack_Implem_Checklist.md).|

## Printing Settings { .section}

If the *DeviceHub* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure the printing of documents by using the following settings on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Print Shipment Confirmation Automatically**|Selected|With this check box selected, the system prints the shipment confirmation automatically when a user confirms a shipment.|
|**Print Shipment Labels Automatically**|Selected|With this check box selected, the system prints the shipment labels for the packages included in a shipment when the user confirms the shipment.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of paperless picking and packing by specifying additional settings as follows:

-   To cause the system to arrange warehouse locations of pick lists only in ascending order of the **Path** value specified on the [Warehouses](IN_20_40_00.md) \(IN204000\) form for these locations, clear the **Allow Bidirectional Pick Lists** check box on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

    This setting affects the algorithm that the system uses for paperless pick list creation and prompts.

-   To to make it possible for users to assign multiple totes to a shipment in a pick list of the *Single-Shipment* or *Wave* type, select the **Add Totes to Shipments on the Fly** check box on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To enable the system to suggest pick lists for warehouses other than the user's current one, specify the same value in the **Building ID** box on the [Warehouses](IN_20_40_00.md) \(IN204000\) form for each of the involved warehouses.

**Parent topic:**[Paperless Fulfillment of Orders](../UserGuide/WMS_Paperless_Picking_Mapref.md)

