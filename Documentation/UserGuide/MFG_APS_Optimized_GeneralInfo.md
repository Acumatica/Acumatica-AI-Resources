# Optimized APS: General Information

Optimized APS supports production environments in which only some work centers limit production capacity. You can configure constrained work centers for finite scheduling and configure work centers with sufficient or adjustable capacity for infinite scheduling. The same production order can contain operations assigned to both types of work centers.

Infinite scheduling estimates production dates without reserving work center capacity. Finite scheduling reserves the remaining capacity of finite work centers during their finite scheduling time fences.

Use forward scheduling to calculate production dates from a planned start date. Use backward scheduling to determine when production must begin to meet a required completion date.

Before you schedule production orders by using Optimized APS, you must enable the *Advanced Planning and Scheduling \(Optimized\)* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, generate the APS engine work center schedule calendar, and specify the scheduling method of each applicable work center.

## Enabling Optimized APS

To enable Optimized APS, select the **Advanced Planning and Scheduling \(Optimized\)** check box under **Experimental Features** on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

Before you select this check box, make sure that the **Advanced Planning and Scheduling \(Classic\)** check box is cleared. The two APS engines cannot be enabled at the same time.

**Attention:** Advanced planning and scheduling is subject to licensing. For licensing details, refer to the Acumatica ERP sales policy.

Settings that apply to Classic APS and Optimized APS are stored separately. When you switch to the other engine, the system hides the settings and forms that do not apply to the enabled engine. If you switch back, the system restores the settings of that engine.

**Attention:** Switching between Classic APS and Optimized APS does not convert existing schedules. After each switch, run the applicable schedule-generation process on the [APS Maintenance Process](AM_51_20_00.md) \(AM512000\) form, and then reschedule any production orders that are already scheduled.

When Optimized APS is enabled:

-   The [Machine Capacity](AM_40_60_00.md) \(AM406000\), [Machine Schedule](AM_00_00_12.md) \(AM000012\), and [Tool Schedule](AM_00_00_14.md) \(AM000014\) forms are not available.
-   The **Consider Machine Resources** and **Consider Tools** check boxes and the **Block Size** box are hidden on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form.
-   The **Machines** pane is hidden on the [Production Schedule Board](AM_21_55_55.md) \(AM215555\) form.
-   Classic calendar and block-size controls are hidden on the [APS Maintenance Process](AM_51_20_00.md) form.

## Preparing Work Center Schedules

Before production orders can be scheduled by using Optimized APS, generate the work center schedules that the engine uses to determine working time and available capacity.

On the [APS Maintenance Process](AM_51_20_00.md) \(AM512000\) form, select the **Generate Work Center Schedule** check box and run the process.

The system generates a schedule for each work center from the shifts and work calendars assigned to it. The generated schedule includes working and nonworking periods, breaks, efficiencies, crew sizes, and calendar exceptions. Same-day and overnight shifts are supported. If shift periods overlap, the engine consolidates the source data into nonoverlapping periods with minute-level precision.

When you save changes to a work center or work calendar configuration, the system automatically regenerates the applicable work center schedule.

For an outside-process work center, Optimized APS always uses an efficiency of 100 percent. If you change an outside-process work center, regenerate the work center schedule.

## Configuring Work Centers

On the [Work Centers](AM_20_70_00.md) \(AM207000\) form, use the **Work Center Scheduling Method** box to specify how Optimized APS schedules operations assigned to each work center.

-   Select *Infinite* to schedule operations without considering capacity assigned to other production orders.
-   Select *Finite* to reserve the remaining available capacity during the work center's finite scheduling time fence.

The default value is *Infinite*. A production order can include operations assigned to both finite and infinite work centers. Optimized APS preserves the routing sequence while it applies the scheduling method configured for each work center.

When you select *Finite*, specify a value from 1 through 999 in the **Finite Scheduling Time Fence \(Days\)** box. The time fence starts on the current business date, which is counted as Day 1. Operations within the time fence are scheduled against remaining capacity. Operations outside the time fence are scheduled without reserving capacity.

In the **Basis for Capacity** box, select the option that the engine will use to calculate the duration of operations assigned to the work center.

For an outside-process work center, Optimized APS always uses an efficiency of 100 percent.

**Parent topic:**[Advanced Planning and Scheduling \(Optimized\)](../UserGuide/MFG_APS_Optimized_Mapref.md)

