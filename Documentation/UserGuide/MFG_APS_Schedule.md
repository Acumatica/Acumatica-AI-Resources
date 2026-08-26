# Advanced Planning and Scheduling: Scheduling Details {#_b37a0995-9cf7-4019-b35e-794c089593ed .concept}

In this topic, you will read about scheduling details in advanced planning and scheduling \(APS\).

## Scheduling Method { .section}

In conjunction with the constraint date, this determines the sequence by which the operations of the production order are scheduled. You can select any of the following scheduling methods in the **Scheduling Method** box on the **General** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form:

-   *Finish On:* The operations are scheduled backwards from the constraint date. Production orders created from a sales order, or orders created as linked orders from a parent order, have this value selected by default. For sales orders, the constraint date is one day earlier than the scheduled ship date.
-   *Start On:* The operations are scheduled forward from the constraint date.
-   *User Dates:* This value provides you with the ability to define the start and end dates of the production order. This is a way for the user to override the manufacturing lead times or to use any calendar dates including non-working days.

## Constraint Date { .section}

This is a particular date by which the production order is needed or needs to be started. It is only entered when the scheduling method is either *Finish On* or *Start On*.

You specify the constraint date on the **General** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

## Dispatch Priority { .section}

Dispatch priority is used in APS to load the production orders and operations in priority sequence. Orders with the same priority are loaded by the constraint date. Orders with the highest priority are scheduled first. One \(1\) is the highest priority and ten \(10\) is the lowest.

You specify the dispatch priority on the **General** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

## Infinite Capacity Planning { .section}

Production order operations starting and ending dates are calculated solely on the basis of operation duration. In APS, the system uses infinite capacity planning for production orders whose end date is beyond 120 days from the date when the planning is initiated.

Also, the system uses infinite planning when creating planning orders during inventory planning. For more details about calculating operation and production order dates, see [Inventory Planning Configuration: System-Wide Settings](../ImplementationGuide/config_Inventory_Planning_System_Settings.md).

## Finite Capacity Planning { .section}

Production orders can be scheduled and rescheduled respecting the capacity and current load of work centers, machines and tools and, optionally, the availability of materials.

If the scheduling method is *Finish On*, the operations are scheduled backwards from the constraint date. If the constraint date cannot be met \(that is, the calculated operation start date is in the past\), the sequence is reversed and the operations are forward-scheduled. In this case, the scheduling method and the constraint date that were originally specified for the production order are preserved. This helps the production planning manager to compare the calculated earliest end date with the original constraint date and make informed scheduling decisions \(for example, which production orders can be late and which require additional capacity\).

Operations are always scheduled in contiguous blocks skipping over non-working hours and schedule breaks. See the following example:

-   A work center has capacity available today starting at 11 AM with a noon to 1 PM lunch break and a shift ending at 5 PM; so 5 hours are the remaining capacity and 8 hours are available tomorrow.
-   The schedule blocks are 1 hour.
-   An operation has a duration of 9 hours.

The following table shows the schedule blocks consumed by the operation.

|Schedule Date|Schedule Blocks|Start Time|End Time|
|-------------|---------------|----------|--------|
|Today|1|11:00 AM|12:00 PM|
|Today|Lunch Break|12:00 PM|01:00 PM|
|Today|4|01:00 PM|05:00 PM|
|Tomorrow|4|08:00 AM|12:00 PM|

Finite scheduling may result in the following issues:

-   Gaps may appear between operations when a resource is not available on the desired time slot. For example, an operation requires 8 hours of a resource and a contiguous block of time is not available for the next operation. This may not be desirable when the next operation must be started immediately after completion of the previous operation.
-   The calculated finish date of the production order may be after the required date for a sales order or linked production order.
-   If all material is not available for the order, either in stock or allocated from a supply order, the order will not be scheduled.
-   If machine scheduling is used, the machine may not be available although the work center is available.
-   If tool scheduling is used, the tools required may not be available although the work center is available and the machine is available.

For more information about the calculation of the duration of operations, see [Advanced Planning and Scheduling: Operation Lead Time](MFG_APS_Lead_Time_Calculation.md).

## Firm Scheduling of Production Orders {#section_fvv_ycn_wqb .section}

You can prevent a production order from being rescheduled if strict production dates are important for the production order \(for example, because of the commitment with the customer\). You can firm the order—that is, fix the production dates. When you run finite scheduling of production orders, the system does not reschedule the firmed production orders.

To firm any number of production orders, you do the following on the [Rough Cut Planning](AM_50_10_00.md) \(AM501000\) form:

1.  Select the check box in the unlabeled column of each row that contains a production order to be firmed.
2.  In the **Action** box of the Selection area, select *Firm*.
3.  Click **Process** on the form toolbar. The system firms the dates of the processed production orders and changes the schedule status of the orders to *Firm*.

To undo firm for a production order, you perform the same steps but select the *Undo Firm* action.

Firm production orders are not visible on the [Rough Cut Planning](AM_50_10_00.md) form by default—that is, the **Exclude Firm Orders** check box in the Selection area is selected—but you can display these orders by clearing the check box.

You can also firm production orders by using the [Production Schedule Board](AM_21_55_55.md) \(AM215555\) form.

## Checking of Material Availability {#_35d74e2b-e070-4524-9d44-accb73c4e477 .section}

You have the option to exclude the validation for available materials during advanced planning and scheduling as follows:

-   For an entire production order type by clearing the **Check for Material Availability** check box on the [Production Order Types](AM_20_11_00.md) \(AM201100\) form.
-   For specific materials by clearing the **Check for Material Availability** check box on the **Manufacturing** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

When the **Check for Material Availability** check box is selected on the [Production Order Types](AM_20_11_00.md) form for the production order type of the production order being scheduled and on the **Manufacturing** tab of the [Stock Items](IN_20_25_00.md) form for the material being evaluated, the system checks the material availability as follows:

1.  Checks supply orders \(that is, purchase orders, production orders, and transfer orders\) that will be received prior to the scheduled start date of the production order's operation.
2.  Checks the on-hand quantity of the material.
3.  Checks future unlinked supply orders that will be received prior to the scheduled start date of the production order operation.
4.  Checks future unlinked supply orders for any date.

If no supply has been found, the system schedules the production order based on the assumption that supply orders will be created. The following lead times are used:

1.  If a default vendor is assigned, the purchase lead time is used to evaluate if supply can be provided by the current scheduled operation start date. If supply cannot be received on time, the production operation is rescheduled based on the expected lead time.
2.  If no default vendor is assigned, the manufacturing lead time is used to evaluate if supply can be provided by the current scheduled operation start date. If supply cannot be received on time, the production operation will be rescheduled.
3.  If no manufacturing lead time is defined, the production order operation will not be scheduled.

**Note:** Note the following:

-   If multiple materials of the production order are going to be late, the greatest date of all supply orders will be used to attempt a new scheduled start date for that production order.
-   If a material of one operation is not available, the entire production order \(not just the specific operation\) will be rescheduled.
-   All materials must be available in full to schedule the production order. Partial available quantity is not considered during scheduling.

**Parent topic:**[Advanced Planning and Scheduling](../UserGuide/MFG_APS_Mapref.md)

