# Configuration of Production with Backflushing: General Information {#_cef0d96f-682d-486a-b416-731d2e59e84c .concept}

Acumatica ERP Manufacturing Edition provides you with the ability to backflush materials or labor within the production process. The following sections describe the configuration of the production with material or labor backflushing in the system.

For details on processing production orders with material or labor backflushing, see [Production with Backflushing: General Information](../UserGuide/MFG_Backflushing_GeneralInfo.md).

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a work center with the default settings for backflushing materials or labor
-   Create a bill of material for producing items and backflushing materials or labor for some operations

## Applicable Scenarios { .section}

You configure the production process with material or labor backflushing in the following cases:

-   When you are initially implementing Acumatica ERP Manufacturing Edition and your organization uses material or labor backflushing for all or some production operations
-   When your organization already uses Acumatica ERP Manufacturing Edition and has recently started to backflush materials or labor for some or all production operations

## Default Settings for Material or Labor Backflushing { .section}

To specify the default settings that will be used for material and labor backflushing, you do the following:

-   In the Summary area of the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, you select the **Backflush Materials** check box, the **Backflush Labor** check box, or both check boxes to establish the default settings for the selected work center.
-   In the Operations table of the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form, you add each operation that is performed in the work center you have defined. The state of the **Backflush Labor** check box in the operation row is copied from the settings of the specified work center. You can change the default state of the check box for each operation row.
-   On the **Materials** tab of the same form, you add the materials required to perform each operation \(after first selecting the operation\). By default, the state of the **Backflush Materials** check box in each material row is copied from the settings of the work center. You can override the default state of the check box for each material row.

For each production order, you can override the default backflushing settings, which the system copies from the bill of material specified in the production order, on the [Production Order Details](../UserGuide/AM_20_90_00.md) \(AM209000\) form.

**Parent topic:**[Implementing Item Production with Backflushing](../ImplementationGuide/config_MFG_Backflushing_Mapref.md)

