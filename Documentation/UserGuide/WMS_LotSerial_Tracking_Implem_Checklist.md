# Automated Operations with Lot- and Serial-Tracked Items: Implementation Checklist {#_e35bd305-f4fe-41bf-916e-9c26bab63180 .concept}

This topic provides details you can use to ensure that the system is configured properly for processing items with lot and serial numbers.

## Prerequisites { .section}

Before you begin performing automated operations with lot- or serial-tracked stock items, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as described in the following table.

|Form|Criteria to Check|
|----|-----------------|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

 [Inventory Preferences](IN_10_10_00.md) \(IN101000\)

|Make sure that all necessary settings related to inventory and order management have been specified, as described in [Configuration of Order Management: Implementation Checklist](../ImplementationGuide/config_InvMgmt_Basic_Implem_Checklist.md).|
|[Lot/Serial Classes](IN_20_70_00.md) \(IN207000\)

 [Item Classes](IN_20_10_00.md) \(IN201000\)

 [Stock Items](IN_20_25_00.md) \(IN202500\)

|Make sure that stock items with lot or serial numbers have been configured, as described in [Items with Lot and Serial Numbers: Implementation Checklist](Lot_and_Serial_Numbers_Implem_Checklist.md).|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

 [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)

 [Inventory Preferences](IN_10_10_00.md) \(IN101000\)

|Make sure that the workflows for automated operations have been configured to fit your company processes, as described in [Picking and Packing Operations: Implementation Checklist](WMS_Pick_Pack_Implem_Checklist.md), [Packing Operations: Implementation Checklist](WMS_Pack_Implem_Checklist.md), [Processing of Transfers: Implementation Checklist](WMS_Scan_and_Transfer_Implem_Checklist.md), and [Counting in Physical Inventory: Implementation Checklist](WMS_Scan_and_Count_Implem_Checklist.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of wave picking by specifying the following additional settings:

-   To make the system generate lot or serial numbers for processed serialized items automatically, select the **Use Default Auto-Generated Lot/Serial Nbr.** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.
-   To make the system generate expiration dates for processed serialized items automatically, select the **Default Expiration Date** on the [Purchase Orders Preferences](PO_10_10_00.md) form.

## Known Process Limitations { .section}

If the *Automatic Packaging* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, a user can process in Pack mode only shipments packed to a single box. The processing of shipments packed in two or more boxes in Pack mode is currently not supported.

**Parent topic:**[Automated Operations with Lot- and Serial-Tracked Items](../UserGuide/WMS_LotSerial_Tracking_Mapref.md)

