# Optimized APS: Scheduling Production Orders

Select a scheduling approach according to your production planning objective.

Use forward scheduling to calculate production dates from a planned start date. Use backward scheduling to determine when production must begin to meet a required completion date.

Use infinite scheduling to estimate production dates without reserving work center capacity. Use finite scheduling to generate a capacity-constrained schedule based on the remaining capacity of finite work centers. A production order can include both finite and infinite work centers.

When multiple production orders compete for finite capacity, Optimized APS schedules the orders by using the following criteria, in order:

1.  Firm orders, followed by in-process orders
2.  Dispatch priority
3.  Due date
4.  Order date
5.  Production order number
6.  Production order type

If two or more production orders have the same value for a criterion, the system uses the remaining criteria to determine the scheduling order.

Optimized APS calculates operation duration according to the configuration of each work center. Setup time, processing time, and finish time occupy work center capacity. Queue time and move time affect the calculated schedule but do not occupy work center capacity.

If backward scheduling determines that a production order cannot be completed by the required date, the calculated schedule can extend into the past. Optimized APS retains the backward schedule. Review the result, adjust the applicable scheduling inputs, and run scheduling again if needed.

## Rescheduling Production Orders

When you reschedule a partially completed production order by using Optimized APS, the system schedules only the remaining quantity. Completed and scrapped quantities are excluded from the scheduling calculation.

After a completed or scrapped quantity has been reported for an operation, the remaining schedule does not include the setup time or queue time of that operation.

If labor has been reported but no quantity has been completed, the system first applies the reported labor to the remaining setup time and then schedules the remaining work.

## Scheduling Linked Subassembly Production Orders

In supported multilevel scheduling scenarios, Optimized APS reschedules linked subassembly production orders together with the parent production order. The system reschedules the linked orders level by level according to the parent production order.

If a linked subassembly production order cannot be scheduled, the system displays a warning and continues scheduling the remaining production orders.

With forward infinite scheduling, the system schedules only the parent production order automatically. You must schedule the linked subassembly production orders separately.

## Reviewing Scheduling Results

After scheduling is completed, review the calculated production dates and any scheduling warnings.

On the [Work Center Capacity](AM_40_50_00.md) \(AM405000\) form, compare the capacity planned for infinitely scheduled operations with the capacity reserved for finitely scheduled operations.

On the [Production Order Details](AM_20_90_00.md) \(AM209000\) form, review the scheduled start and end dates of the operations. Scheduling also updates material allocation dates according to the scheduled operation dates.

If a backward schedule extends into the past, Optimized APS retains the calculated schedule. Adjust the applicable scheduling inputs and run scheduling again if the result does not meet your planning objective.

**Parent topic:**[Advanced Planning and Scheduling \(Optimized\)](../UserGuide/MFG_APS_Optimized_Mapref.md)

