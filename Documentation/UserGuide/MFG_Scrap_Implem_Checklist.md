# Scrap and Waste In Production: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for processing scrap and waste during item production, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially process scrap and waste, you make sure that the needed features have been enabled, settings have been specified and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:-   The *Manufacturing* group of features. If you use additional manufacturing functionality \(such as estimates\), make sure that the corresponding features have been enabled within this group of features.
-   The *Inventory* feature within the *Inventory and Order Management* group of features.

</td></tr><tr><td>

[Chart of Accounts](GL_20_25_00.md) \(GL202500\)

</td><td>

The GL account to be used for posting scrap costs has been created.

</td></tr><tr><td>

[Reason Codes](CS_21_10_00.md) \(CS211000\)

</td><td>

The reason code that shop-floor employees will specify when entering scrap quantities has been created.

 The reason code is required only for operations with the *Write-Off* or *Quarantine* scrap action.

</td></tr><tr><td>

[Production Order Types](AM_20_11_00.md) \(AM201100\)

</td><td>

The needed settings of scrap storage have been specified for each production order type with the *Regular* or *Disassemble* function.

</td></tr><tr><td>

[Work Centers](AM_20_70_00.md) \(AM207000\)

</td><td>

A work center for each operation that may have scrap or waste as an output has been created. For the work center, in the **Scrap Action Default** box on the **General** tab, the appropriate option is selected.

</td></tr><tr><td>

[Bill of Material](AM_20_80_00.md) \(AM208000\)

</td><td>

The bill of material has been created, and in the Operations table, the needed option is selected in the **Scrap Action** column of each operation row. In addition, in the **Scrap Factor** column on the **Materials** tab, the scrap percentage is specified for the materials for which waste must be included in the material cost.

</td></tr><tr><td>

[Item Warehouse Details](IN_20_45_00.md) \(IN204500\)

 [Stock Items](IN_20_25_00.md)

 [Warehouses](IN_20_40_00.md)

</td><td>

The scrap warehouse and location have been specified on the **Manufacturing** tab of the needed form, depending on the option selected in the **Scrap Source** box of the [Production Order Types](AM_20_11_00.md) form of a production order type with the *Regular* or *Disassemble* function. The scrap warehouse and location are needed only when multiple warehouses or warehouse locations are used in the system and when movement of scrapped items to storage is tracked \(that is, the scrap action for some or all production operations is *Quarantine*\).

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

If you want the system to regard scrapped items as completed items and mark the operations of a production order as completed when the sum of completed items and scrapped items equals the quantity to produce of the production order, you select the **Include Scrap in Completions** check box on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form. For more information, see [Configuration of Scrap, Waste, and By-Products in Production: General Information](../ImplementationGuide/config_MFG_Scrap_GeneralInfo.md).

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you manage item production that may also produce scrap or waste by performing instructions similar to those described in [Scrap and Waste in Production: To Process a Production Order with No Scrap Settings](MFG_Scrap_Activity.md) and [Scrap and Waste in Production: To Process a Production Order That Includes Quarantined Scrap](MFG_Scrap_Activity2.md).

**Parent topic:**[Tracking Scrap and Waste in Production](../UserGuide/MFG_Scrap_Mapref.md)

