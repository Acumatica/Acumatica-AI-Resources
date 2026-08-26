# Configuring Production Cost Drivers: Configuration Prerequisites {#_ca00f54a-f902-4437-8ca6-f7e66baa831f .concept}

Before starting to create cost drivers for produced items, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Manufacturing* feature must be enabled.

## Configuring the System { .section}

Before you create records for tools, machines, overhead, and labor codes in Acumatica ERP, you need to make sure that the following actions have been performed in the system:

-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, all GL accounts where costs will be posted have been created.
-   On the [BOM Preferences](../UserGuide/AM_10_10_00.md) \(AM101000\) form, the numbering sequence for bills of material has been specified.
-   On the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form, the numbering sequences for move, material, labor, cost, and WIP adjustments have been specified.

**Parent topic:**[Configuring Production Cost Drivers](../ImplementationGuide/config_MFG_Production_Cost_Drivers_Mapref.md)

