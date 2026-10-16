# Wave Picking: Implementation Checklist

This topic provides details you can use to ensure that the system is configured properly for picking and packing items in a wave.

## Prerequisites

Before you begin processing shipments in a wave, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

 [Inventory Preferences](IN_10_10_00.md) \(IN101000\)

</td><td>

Make sure that all necessary settings related to inventory and order management have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).

</td></tr><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

Make sure that the following features are enabled:-   *Warehouse Management*
-   *Fulfillment*
-   *Advanced Picking*

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\)

</td><td>

Make sure that the required stock items have been created, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).

</td></tr><tr><td>

[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

</td><td>

Make sure that the automated picking workflow is configured to fit the workflow established in your organization, as described in [Picking and Packing Operations: Implementation Checklist](WMS_Pick_Pack_Implem_Checklist.md) and [Packing Operations: Implementation Checklist](WMS_Pack_Implem_Checklist.md).

</td></tr></tbody>
</table>

## Printing Settings

If the *DeviceHub* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure the printing of documents by using the following settings on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Print Shipment Confirmation Automatically**|Selected|With this check box selected, the system prints the shipment confirmation automatically when a user confirms a shipment.|
|**Print Shipment Labels Automatically**|Selected|With this check box selected, the system prints the shipment labels for the packages included in a shipment when the user confirms the shipment.|

## Other Settings That Affect the Workflow

You can affect the workflow for wave picking by specifying additional settings on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form:

-   To make the user confirm that the items have been placed in the tote assigned to the shipment for which the items are being picked, select the **Confirm Tote Selection on Wave Picking**.
-   To enable pickers to change picking locations, select the **Allow Picking Location Changes** check box on the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To make the system print both packing slips and pick lists for a picking worksheet, select the **Print Packing Slips with Pick Lists** check box on the **Warehouse Management** tab.

## Known Process Limitations

If the *Automatic Packaging* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, a user can process in Pack mode only shipments packed to a single box. The processing of shipments packed in two or more boxes in Pack mode is currently not supported.

**Parent topic:**[Automated Fulfillment of Orders with Wave Picking](../UserGuide/WMS_Wave_Picking_Mapref.md)

