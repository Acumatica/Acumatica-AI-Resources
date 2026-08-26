# Configuring Work Centers: Configuration Prerequisites {#_23b07a65-11f6-4bd6-af7e-9ac105a950e5 .concept}

Before starting to create work centers, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Feature { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Manufacturing* feature must be enabled.

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to create work centers:

-   On the [BOM Preferences](../UserGuide/AM_10_10_00.md) \(AM101000\) form, the numbering sequence for bills of material has been specified.
-   On the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form, the numbering sequences for move, material, labor, cost, and WIP adjustments have been specified.
-   On the [Work Calendar](../UserGuide/CS_20_90_00.md) \(CS209000\) form, the work calendars that will be used with work centers have been created. For an example of the creation of a work calendar, see [Configuring Work Centers: Implementation Activity](config_MFG_Work_Centers_Implem_Activity.md).
-   On the [Shifts](../UserGuide/AM_20_50_00.md) \(AM205000\) form, the shifts for the work centers have been created. For an example of the creation of a shift, see [Configuring Work Centers: Implementation Activity](config_MFG_Work_Centers_Implem_Activity.md).
-   On the [Labor Codes](../UserGuide/AM_20_65_00.md) \(AM206500\) form, the labor codes to be used for calculating the labor costs of any work center have been created. For an example of the defining of a labor code, see [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md).
-   If overhead is to be used, on the [Overhead](../UserGuide/AM_20_25_00.md) \(AM202500\) form, the overhead rates to be used for any of the work centers have been created. For an example of the creating of an overhead entity, see [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md).
-   If machines are to be scheduled or used for costing, on the [Machines](../UserGuide/AM_20_45_00.md) \(AM204500\) form, the machines to be used in any of the work centers have been created. For an example of the defining of a machine, see [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md).

**Parent topic:**[Configuring Work Centers](../ImplementationGuide/config_MFG_Work_Centers_Mapref.md)

