# Advanced Planning and Scheduling: Capacity Definition {#_b84668ca-4cbb-4ebc-b627-bc76489d6ad7 .concept}

This topic explains how capacity is calculated for work centers in Acumatica ERP Manufacturing Edition.

## Working Calendars { .section}

A working calendar defines the starting and ending times for each working day and break times, such as lunch. A work calendar can have exceptions for days not worked, such as holidays or shutdown periods, or non-working days that are work days, such as unplanned overtime on a weekend not normally worked. You create working calendars by using the [Work Calendar](CS_20_90_00.md) \(CS209000\) form.

Each work center can have multiple shifts and each shift has a working calendar. You specify a working calendar for each shift of a work center in the **Calendar ID** column on the **Shifts** tab of the [Work Centers](AM_20_70_00.md) \(AM207000\) form.

When you create machines on the [Machines](AM_20_45_00.md) \(AM204500\) form, you need to specify a working calendar for machine operation in the **Calendar ID** box. The system uses this calendar during scheduling when the **Machine Scheduling** check box is selected on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form. For correct scheduling, you must specify the calendar with the same working hours as the calendar for the work center to which the machine is assigned.

## Work Centers { .section}

The daily capacity for a work center is the total number of working hours for all shifts. The value of the **Basis for Capacity** box on the **General** tab of the [Work Centers](AM_20_70_00.md) \(AM207000\) form determines which settings the system uses when scheduling operations in each work center. In this box, you can select either of the following values:

-   *Crew Size*: The system uses the crew size and efficiency specified in the **Crew Size** and **Efficiency** boxes on the **Shifts** tab of the [Work Centers](AM_20_70_00.md) form; it also uses the run time and run units specified in the **Run Time** and **Run Units** columns, correspondingly, of the Operations table on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form.
-   *Machines*: The system uses the machine time and machine units specified in the **Machine Time** and **Machine Units** columns, respectively, of the Operations table of the [Bill of Material](AM_20_80_00.md) form.

**Attention:** If multiple work centers are set up with the *Machines* basis for capacity and the same machine has been added to the settings of more than one of these work centers, the system will not schedule operations for those work centers at the same time.

## Schedule Blocks { .section}

To simplify the scheduling process and to accommodate different types of manufacturing, schedule blocks are used in finite scheduling. The size of the schedule block is defined on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form and applies to all work centers. The block size can be as small as 5 minutes or as large as 1 hour with options for 10, 15, and 30 minutes.

**Parent topic:**[Advanced Planning and Scheduling](../UserGuide/MFG_APS_Mapref.md)

