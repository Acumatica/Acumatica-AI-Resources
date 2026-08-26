# Employee Time Entry: Earning Types {#_8062edfe-a98a-405e-92d6-c3de2c7443d8 .concept}

In Acumatica ERP, an activity's earning type determines how the system calculates the cost of employee labor. If the **Track Time and Costs** check box is selected on the [Activity](CR_30_60_10.md) \(CR306010\) or [Email Activity](CR_30_60_15.md) \(CR306015\) form, you must specify an earning type in the **Earning Type** box. By default, the *RG - Regular Hours* earning type is selected.

On the [Earning Types](EP_10_20_00.md) \(EP102000\) form, you can add new earning types, adjust existing ones, and specify whether an earning type applies to standard working hours or overtime. If an earning type represents overtime labor, you need to select the **Overtime** check box. On the same form, you can update the multiplier value for any overtime earning type—the system multiplies the employee rate by the multiplier value when calculating labor costs. For regular working hours, the multiplier should be set to *1*.

The following default earning types are available in the system:

-   *Regular Hours \(RG\)*: Standard working hours whose cost is calculated based on the standard employee rate.
-   *Overtime \(OT\)*: Overtime working hours. The system calculates their cost by multiplying the standard rate by the value of the overtime multiplier.
-   *Public Holidays \(HL\)*: Non-working hours on public holidays, which are not billable. This earning type is used to indicate that certain days on the time card are public holidays when no work is done.
-   *Vacations \(VL\)*: Non-working hours of vacations, which are also non-billable. This earning type is used to indicate that the employee is on vacation and thus not working.

**Parent topic:**[Entering Employee Time](../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md)

