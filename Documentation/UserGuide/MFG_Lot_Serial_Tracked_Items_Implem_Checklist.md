# Production of Lot- or Serial-Tracked Items: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for tracking the production of lot or serial-tracked items.

## Prerequisites

Make sure that the following tasks have been performed before you start implementing the tracking of the production of lot or serial-tracked items:

-   The system has been prepared for the implementation of manufacturing functionality, as shown in [System Preparation for Manufacturing Implementation: Implementation Activity](../ImplementationGuide/config_MFG_General_Settings_Implem_Activity.md).
-   The production of items has been configured, as described in [Production Processing: Implementation Checklist](MFG_Production_Order_Processing_Implem_Checklist.md).

## Implementation Checklist

We recommend that before you initially track the production of lot or serial-tracked items, you make sure the needed features have been enabled and settings have been specified, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The *Lot and Serial Tracking* feature within the *Inventory and Order Management* group of features has been enabled.

</td></tr><tr><td>

[Lot/Serial Classes](IN_20_70_00.md) \(IN207000\)

</td><td>

The lot or serial classes to be used for produced items and for materials have been created. For the lot or serial class of the item to be produced, in the **Assignment Method** box, the *When Received* option has been specified for users to be able to preassign lot or serial numbers to production orders.

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\)

</td><td>

The stock items for the items to be produced and materials used in production of these items have been created. The appropriate lot or serial class is specified in the **Lot/Serial Class** box of the **Item Defaults** section on the **General** tab for each lot- or serial-tracked item.

</td></tr><tr><td>

[Bill of Material](AM_20_80_00.md) \(AM208000\) form

</td><td>

The bills of material for producing the lot- or serial-tracked items have been created.

</td></tr><tr><td>

[Production Order Types](AM_20_11_00.md) \(AM201100\)

</td><td>

If you need to set up the preassignment of lot or serial numbers to produced items, the **Allow Preassigning Lot/Serial Numbers** check box is selected on this form \(in the **Data Entry** section of the **General** tab\) for the production order type that you use for production orders of these items. The production order type must have the *Regular* option selected in the **Function** box.

 If you want users to assign the lot or serial number of each unit of the produced item to the lot- or serial-tracked materials used to produce the item, you make sure that the appropriate value has been specified in the **Require Parent Lot/Serial Number** box of the same section.

</td></tr></tbody>
</table>

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you process production orders with lot- or serial-tracked items by performing instructions similar to those described in .[Production of Lot- or Serial-Tracked Items: To Assign Parent Serial Numbers to Materials on Issue](MFG_Lot_Serial_Tracked_Items_Activity.md) and [Production of Lot- or Serial-Tracked Items: To Assign Parent Serial Numbers to Materials on Completion](MFG_Lot_Serial_Tracked_Items_Activity2.md).

**Parent topic:**[Producing Lot- or Serial-Tracked Items](../UserGuide/MFG_Lot_Serial_Tracked_Items_Mapref.md)

