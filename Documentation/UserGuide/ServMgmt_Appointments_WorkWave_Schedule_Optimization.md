# Optimizing Appointment Scheduling with WorkWave {#_6a062b80-f305-4895-a934-2543c1044475 .concept}

In Acumatica ERP, you can integrate with the third-party service WorkWave Route Optimizer to automatically improve appointment scheduling. Once the integration is configured, you can run optimization processes that:

-   Update the scheduled start times of appointments already assigned to staff.
-   Assign staff to unassigned appointments based on their available work hours.
-   Assign staff to appointments according to their skills and calendars, ensuring that each appointment is matched with the appropriate expertise.

This functionality helps dispatchers optimize schedules while balancing staff availability and service requirements.

## Configuring the Integration with WorkWave { .section}

For you to have the ability to optimize appointment schedules, the *Workwave Route Optimization* feature has to be enabled in the *Third-Party Integrations* group of features on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.

You then need to specify the URL of the WorkWave API used for the integration between Acumatica ERP and WorkWave and the related license key in the **WorkWave API URL** and **License Key** boxes, respectively, on the **General** tab \(**Schedule Optimization Settings** section\) of the [Service Management Preferences](FS_10_01_00.md#) \(FS100100\) form.

Because the optimizer takes into consideration employees’ lunch breaks when it optimizes the schedule, the following settings have to be specified in the same section:

-   **Lunch Break Duration**: The duration of the lunch break, in hours and minutes.
-   **Lunch Break Start Time**: The earliest time when the lunch break can be started, in hours and minutes.
-   **Lunch Break End Time**: The latest time when the lunch break can be finished, in hours and minutes.

## Optimizing the Schedules of Appointments Assigned to Specific Staff Members { .section}

On the [Optimize Appointment Scheduling](FS_50_14_00.md) \(FS501400\) form, for the specified date, branch, and branch location, you can optimize the schedule of appointments assigned to specific staff members.

To optimize the schedule of appointments that have been assigned to specific staff members, you select the *Assigned Appointments* option in the **Type** box in the Summary area of the form. In the staff member list \(the right table\), you then select the staff member or staff members for which appointment schedule optimization should be performed by selecting the unlabeled check boxes in the applicable rows. When you click **Process** on the form toolbar, the system calculates the optimal schedule for each selected staff member for the selected date by updating the scheduled start times of the assigned appointments. The system does not reassign the appointments to other staff members.

## Assigning Staff Members to Unassigned Appointments and Optimizing the Schedules { .section}

On the [Optimize Appointment Scheduling](FS_50_14_00.md) \(FS501400\) form, for the specified date, branch, and branch location, you can schedule appointments that have not been assigned to any staff member, and assign these appointments to staff members.

To schedule and assign unassigned appointments for a particular date, you select the *Unassigned Appointments* option in the **Type** box. In the appointment list \(the left table\), you select the appointments to be scheduled and assigned; then you select the staff members to whom appointments will be assigned in the staff member list \(the right table\) and click **Process** on the form toolbar. The system assigns the selected appointments to the selected staff members. The system does not reassign appointments that have already been scheduled for staff members to other staff members; it only changes the appointments’ scheduled time.

## Assigning Staff Members to Unassigned Appointments with Consideration of the Staff Members' Skills { .section}

On the [Optimize Appointment Scheduling](FS_50_14_00.md) \(FS501400\) form, for the specified date, branch, and branch location, you can assign staff members automatically to appointments with consideration of staff members' work calendars and skills.

To run the appointment scheduling optimization process, you select the *Unassigned Appointments* option in the **Type** box, and select the **Consider Skills** check box.

In the staff member list \(the right table\), you select a staff member or staff members for which appointment schedule optimization should be performed, and in the appointment list \(the left table\), you select the appointments to be optimized.

Once you click **Process** on the form toolbar, the system selects the staff member to be assigned to each particular appointment while considering all of the following

-   The skills specified for each staff member on the **Skills** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form
-   The skills needed for performing the appointment's services, which are specified for each service on the **Service Skills** tab on the [Non-Stock Items](IN_20_20_00.md#) \(IN202000\) form
-   The time availability of each employee, which has been entered in the work calendar specified in the **Calendar** box on the **General Info** tab of the [Employees](EP_20_30_00.md) form

The system also calculates the optimal schedule for each selected staff member for the selected date by updating the scheduled start times of the assigned appointments.

## Optimization Rules { .section}

System optimization of the appointment schedule is based on the following rules:

-   All the appointments for a particular staff member and particular day are assumed to have the same branch location and the same start and end locations.
-   If the type of the particular staff member, which can be viewed on the [Staff](FS_20_55_00.md#) \(FS205500\) form, is *Employee*, the system optimizes each staff member’s appointments according to the working hours specified in the calendar that is specified for the employee in the **Calendar** box of the [Employees](EP_20_30_00.md#) \(EP203000\) form. That is, the system does not assign an appointment if the start time of travel from the applicable start location to the appointment is earlier than the start of the staff member's working time. Also, the system does not assign an appointment if the appointment end time plus the traveling time \(from the appointment to the end location\) is later than the end of the staff member's working time.
-   For each staff member of the *Vendor* type, the system optimizes the staff member’s appointments according to the working hours specified in the calendar that is specified in the **Work Calendar** box on the **Calendars &amp; Maps** tab of the [Service Management Preferences](FS_10_01_00.md#) \(FS100100\) form.
-   The system does not change the scheduled start time of any appointments for which the **Confirmed** check box has been selected on the **Settings** tab \(**Scheduled Date and Time** section\) of the [Appointments](FS_30_02_00.md#) \(FS300200\) form.
-   The system does not change the scheduled start time of appointments with the *In Process*, *Completed*, or *Closed* status.
-   If the lunch break duration is specified on the [Service Management Preferences](FS_10_01_00.md#) form, the system allocates the time for the lunch break between appointments with the start and end time of the lunch break being considered. For example, if the lunch break duration is 60 minutes and the lunch break start and end times are 12:00 PM and 2:00 PM, respectively, then the lunch break can be any one-hour period in the 12:00 PM to 2:00 PM range, such as from 12:10 PM to 1:10 PM or from 1:00 PM to 2:00 PM.
-   If it is not possible to schedule the lunch break between appointments, then no lunch break will be scheduled. For example, if the appointment lasts six hours, the schedule optimizer uses the assumption that the staff member will have a lunch break during the appointment, but the system does not update the end time of the appointment to add one hour for the lunch break.

## Optimization Results { .section}

On the **Settings** tab of the [Appointments](FS_30_02_00.md#) \(FS300200\) form, you can view the results of the optimization for a particular appointment in the **Optimization Result** box in the **Scheduled Date and Time** section. This read-only box contains one of the following options:

-   *Has Been Optimized*: The appointment was successfully scheduled during the schedule optimization process.
-   *Has Not Been Optimized*: The optimization process has never been launched for the appointment, or after the appointment was optimized, either the appointment has been manually reassigned to another staff member or the appointment date, time, or address has been changed manually.
-   *Could Not Be Optimized*: The appointment could not be optimized because of lack of time or staff member resources. The scheduler will need to reassign this appointment to another staff member or move it to another day.
-   *Encountered Address Error*: The appointment could not be optimized because the appointment address is not correct.

**Parent topic:**[Scheduling Optimization](../UserGuide/ServMgmt_Scheduling_Optimization_Mapref.md)

