# Production of Lot- or Serial-Tracked Items: Implementation Checklist {#_5e039e0d-a19c-49bd-96dc-22e3f123524f .concept}

The following sections provide details you can use to ensure that the system is configured properly for tracking the production of lot or serial-tracked items.

## Prerequisites { .section}

Make sure that the following tasks have been performed before you start implementing the tracking of the production of lot or serial-tracked items:

-   The system has been prepared for the implementation of manufacturing functionality, as shown in [System Preparation for Manufacturing Implementation: Implementation Activity](../ImplementationGuide/config_MFG_General_Settings_Implem_Activity.md).
-   The production of items has been configured, as described in [Production Processing: Implementation Checklist](MFG_Production_Order_Processing_Implem_Checklist.md).

## Implementation Checklist { .section}

We recommend that before you initially track the production of lot or serial-tracked items, you make sure the needed features have been enabled and settings have been specified, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Lot and Serial Tracking* feature within the *Inventory and Order Management* group of features has been enabled.|
|[Lot/Serial Classes](IN_20_70_00.md) \(IN207000\)|The lot or serial classes to be used for produced items and for materials have been created. For the lot or serial class of the item to be produced, in the **Assignment Method** box, the *When Received* option has been specified for users to be able to preassign lot or serial numbers to production orders.|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|The stock items for the items to be produced and materials used in production of these items have been created. The appropriate lot or serial class is specified in the **Lot/Serial Class** box of the **Item Defaults** section on the **General** tab for each lot- or serial-tracked item.|
|[Bill of Material](AM_20_80_00.md) \(AM208000\) form|The bills of material for producing the lot- or serial-tracked items have been created.|
|[Production Order Types](AM_20_11_00.md) \(AM201100\)|If you need to set up the preassignment of lot or serial numbers to produced items, the **Allow Preassigning Lot/Serial Numbers** check box is selected on this form \(in the **Data Entry** section of the **General** tab\) for the production order type that you use for production orders of these items. The production order type must have the *Regular* option selected in the **Function** box.

 If you want users to assign the lot or serial number of each unit of the produced item to the lot- or serial-tracked materials used to produce the item, you make sure that the appropriate value has been specified in the **Require Parent Lot/Serial Number** box of the same section.

|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process production orders with lot- or serial-tracked items by performing instructions similar to those described in .[Production of Lot- or Serial-Tracked Items: To Assign Parent Serial Numbers to Materials on Issue](MFG_Lot_Serial_Tracked_Items_Activity.md) and [Production of Lot- or Serial-Tracked Items: To Assign Parent Serial Numbers to Materials on Completion](MFG_Lot_Serial_Tracked_Items_Activity2.md).

**Parent topic:**[Producing Lot- or Serial-Tracked Items](../UserGuide/MFG_Lot_Serial_Tracked_Items_Mapref.md)

