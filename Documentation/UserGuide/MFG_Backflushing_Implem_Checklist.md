# Production with Backflushing: Implementation Checklist

The following sections provide details that you can use to ensure that the system is configured properly for recording the production of items with material or labor backflushing, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Prerequisites

Make sure that before you start implementing the production of items with backflushing, the system has been prepared for specifying manufacturing-specific settings, as described in [System Preparation for Manufacturing Implementation: General Information](../ImplementationGuide/config_MFG_General_Settings_GeneralInfo.md).

## Implementation Checklist

We recommend that before you initially start processing production orders with material or labor backflushing, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_dad2898d-baec-4427-80a6-a86b5a8a19da"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:-   The *Manufacturing* group of features. If you use additional manufacturing functionality \(such as estimates\), make sure that the corresponding features have been enabled within this group of features.
-   The *Inventory* feature within the *Inventory and Order Management* group of features.

</td></tr><tr><td>

[Production Order Types](AM_20_11_00.md) \(AM201100\)

</td><td>

Production order types have been created, as described in [Production Order Types: General Information](../ImplementationGuide/config_MFG_Production_Order_Types_GeneralInfo.md).

</td></tr><tr><td>

[Production Preferences](AM_10_20_00.md) \(AM102000\)

</td><td>

All necessary settings related to production management have been specified.

</td></tr><tr><td>

[Work Centers](AM_20_70_00.md) \(AM207000\)

</td><td>

A work center for each operation with material or labor backflushing has been created. For the work center, in the Summary area, the **Backflush Materials** or **Backflush Labor** check box is selected, or both check boxes are selected.

</td></tr><tr><td>

[Bill of Material](AM_20_80_00.md) \(AM208000\)

</td><td>

The bill of material has been created and one or both of the following criteria are met for each operation with material or labor backflushing:-   The **Backflush Labor** check box is selected in the row of the Operations table.
-   On the **Materials** tab, the **Backflush Materials** check box is selected for some or all of the materials required for each operation

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of item production with material and labor backflushing by specifying additional settings. If you want the system to validate whether the material quantity in stock is available for the item quantity that a user records in a move or labor transaction for an operation with material backflushing, you select the *Not Allow* option in the **Under Issue Backflush Material** box on the [Production Order Types](AM_20_11_00.md) \(AM201100\) form. If the previous operations also have materials backflushed, the system will validate the availability of the needed material quantity for these operations as well.

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you manage item production with backflushed materials and labor by performing instructions similar to those described in [Production with Backflushing: Process Activity](MFG_Backflushing_Activity.md).

**Parent topic:**[Producing Items with Backflushing](../UserGuide/MFG_Backflushing_Mapref.md)

