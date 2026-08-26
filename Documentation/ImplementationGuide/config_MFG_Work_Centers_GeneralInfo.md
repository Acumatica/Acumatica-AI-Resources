# Configuring Work Centers: General Information {#_df5c757c-b30c-405d-9fe7-5f9a5189144a .concept}

In Acumatica ERP Manufacturing Edition, a work center corresponds to a physical or virtual location in a warehouse or production facility. The work center is a required component of configuring bills of material because it determines the availability of processes as well as the costing from overhead, labor, and machines. You use the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form to create work centers and manage settings of existing work centers.

In this topic, you will read about the configuration of work centers in Acumatica ERP Manufacturing Edition.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a work calendar for overtime work
-   Create shifts that will be used in work centers
-   Create the work centers that will be involved in manufacturing

## Applicable Scenarios { .section}

You create work centers in the following cases:

-   When you initially implement Acumatica ERP, and the *Manufacturing* feature is included in your license
-   When you have purchased the *Manufacturing* feature, and you need to configure manufacturing in the existing system
-   When you need to add new work centers or change the settings of existing work centers because of business process changes

## Work Center Creation { .section}

A work center must be created on the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form before you can create bills of material that use the work center. Once you have created any bills of material with a work center, on the **Where Used** tab of this form, you can view the bills of material that use the selected work center. You cannot delete a work center if it is used in any bill of material. Before deleting a work center, we recommend that you open the **Where Used** tab to make sure no bills of material use the work center.

For each work center you create, you specify the following:

-   The warehouse where the work center is located \(required\): You must assign each work center to a warehouse.
-   The standard cost per labor hour \(optional\): You specify this setting so that the system calculates the planned labor costs for the manufacturing process in which the work center is involved.
-   The planned capacity of the work center \(required\): You specify whether the capacity constraint for scheduling should be the crew size or the machines. The basis for capacity determines whether the operation is scheduled by using run times or machine times. For more information, see [Advanced Planning and Scheduling: Capacity Definition](../UserGuide/MFG_APS_Capacity.md)
-   The default scrap action \(optional\): You specify how the system should handle production scrap in the work center. For more information about scrap, see [Configuration of Scrap, Waste, and By-Products in Production: General Information](config_MFG_Scrap_GeneralInfo.md).
-   The default settings for the labor or material backflushing \(optional\): You define whether backflushing will be used in the work center. These settings are used by default when a user adds new operations and materials to a bill of material. For details on backflushing, see [Production with Backflushing: General Information](../UserGuide/MFG_Backflushing_GeneralInfo.md).
-   An indicator of whether the work center is dedicated for outside processing: A work center can be created for an outside process, which is performed on a subcontractor side, but you may need to use the information specified in the work center in the bill of material. For more information about outside processing, see [Outside Processing: General Information](../UserGuide/MFG_Outside_Processing_GeneralInfo.md).
-   An indicator of whether operations performed in the work center must be control points: By using this setting, you specify whether it is mandatory for workers to record the completed quantity for the operations. For details, see [Production Processing: Control Point Operations](../UserGuide/MFG_Production_Order_Processing_Control_Points.md).
-   All shifts used to calculate work time in the work center \(required\): You add the shifts used in the work center so that the system determines the availability of work center resources \(such as employees and machines\) for production needs. A shift can contain information about additional payments to employees for overtime work. You create shifts by using the [Shifts](../UserGuide/AM_20_50_00.md) \(AM205000\) form. You must add at least one shift to the work center.

    **Attention:** The labor cost is based on the first shift record found and not all of the shift records on the work center.

    For each shift, you also specify the following required settings:

    -   The work calendar: You specify the calendar that defines the working hours of the work center for a particular shift.
    -   The labor code: You specify the labor code that defines the labor offset account when labor is entered or backflushed. For more information about labor costs, see [Production with Backflushing: General Information](../UserGuide/MFG_Backflushing_GeneralInfo.md) and [Production Processing: Labor Reporting](../UserGuide/MFG_PM_ReportingLabor.md).
-   All applicable overhead rates \(optional\): You add overhead rates to the work center to apply additional fixed or variable overhead costs to production. For details on overhead costs, see [Configuring Production Cost Drivers: General Information](config_MFG_Production_Cost_Drivers_GeneralInfo.md).
-   All applicable machine rates \(optional\): If machines are involved in the manufacturing process, you add the rates for these machines to apply these costs to production. For details on machine costs, see [Configuring Production Cost Drivers: General Information](config_MFG_Production_Cost_Drivers_GeneralInfo.md).
-   Substitute work centers \(optional\): If the same items can be produced in multiple work centers assigned to different warehouses, you can specify the substitute work centers. For more information, see [Configuring Work Centers: Substitution of Work Centers](config_MFG_Work_Centers_Substitution.md).

**Parent topic:**[Configuring Work Centers](../ImplementationGuide/config_MFG_Work_Centers_Mapref.md)

