# Advanced Planning and Scheduling: General Information {#_b52a5a8f-58bc-42cc-8e19-db4199dda488 .concept}

Advanced planning and scheduling \(APS\) provides the first elements of finite scheduling. This gives you a competitive and operational advantage if it is implemented and executed correctly. This functionality is available only when the *Advanced Planning and Scheduling* feature in the *Manufacturing* group of features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In this topic, you will read about implementation of advanced planning and scheduling and the related processes.

## APS Implementation { .section}

You need to do the following to prepare the system for using APS:

1.  On the [Production Preferences](AM_10_20_00.md) \(AM102000\) form, do the following:
    1.  In the **Block Size** box, select the size of the schedule block size.
    2.  If you want to schedule machines, select the **Machine Scheduling** check box.
    3.  If you want to schedule tools, select the **Tool Scheduling** check box.
2.  On the [Work Calendar](CS_20_90_00.md) \(CS209000\) form, create work calendars to use for each work center and machines.
3.  On the [Shifts](AM_20_50_00.md) \(AM205000\) form, create shifts to use for each work center.
4.  On the [Machines](AM_20_45_00.md) \(AM204500\) form, create machines to be used in each work center.
5.  On the [Tools](AM_20_55_00.md) \(AM205500\) form, create tools to be used for operations.
6.  On the [Work Centers](AM_20_70_00.md) \(AM207000\) form, do the following:
    1.  Add the shifts and calendars and specify the basis for capacity for each of your work centers.
    2.  Add the machines to the work centers if machine scheduling is used in your organization.
7.  On the [Bill of Material](AM_20_80_00.md) \(AM208000\) form, do the following:
    1.  Specify the setup time, run units, and run time for each operation in your bill of material. The units and time depend on the basis for capacity specified for each work center.
    2.  Specify the tools required for each operation.
8.  On the [APS Maintenance Process](AM_51_20_00.md) \(AM512000\) form, run the APS maintenance process to build the work center schedules.

## Maintenance Process { .section}

The purpose of the advanced planning and scheduling maintenance process is to rebuild and refresh work center schedules. To run the process, you use the [APS Maintenance Process](AM_51_20_00.md) \(AM512000\) form.

You run this process in the following cases:

-   During the first implementation of advanced planning and scheduling after you have defined work centers and their capacities.
-   When you changed the calendar working hours, added shifts, added break times, or changed calendar exception days for work centers. The process does not remove break times from the work center, but it adds new ones.
-   When you have changed the schedule block size on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form.
-   Periodically to clean and remove old schedules.

The process will fill the empty schedule days for each work center for the next 180 days and adjust the schedule time blocks. This process can be scheduled to run automatically by using automation schedules.

## Rough Cut Planning Process { .section}

The rough-cut planning process applies finite scheduling to open and planned production orders.

The system loads and schedules orders in the following sequence:

-   By the dispatch priority ascending
-   By the constraint date ascending
-   By the production order number ascending

The availability of material is considered. Supply orders \(that is, purchase orders, transfer orders, and production orders\) that are allocated to the order being scheduled constrain the order start date as follows:

-   If a supply order line is allocated to the production order, then the supply order promise date is the first day an order can be scheduled.
-   If material is not already allocated, then allocate available material as *Production Demand Prepared*.
-   Finally, look for supply orders without allocations and use their promise date as a start date constraint. The supply orders are not allocated to the production order.

To run rough-cut planning, you use the [Rough Cut Planning](AM_50_10_00.md) \(AM501000\) form and select the orders you wish to schedule. The system will only schedule orders that can be manufactured. If there is a material shortage or some other issue, the order will not be scheduled. Once scheduled, the items will remain on the [Rough Cut Planning](AM_50_10_00.md) form.

For more information about advanced scheduling, see [Advanced Planning and Scheduling: Scheduling Details](MFG_APS_Schedule.md).

For details about defining capacity, see [Advanced Planning and Scheduling: Capacity Definition](MFG_APS_Capacity.md).

**Parent topic:**[Advanced Planning and Scheduling](../UserGuide/MFG_APS_Mapref.md)

