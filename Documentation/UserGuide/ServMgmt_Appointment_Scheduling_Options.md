# Appointment Creation: Calendar Board Form {#_4fc74fb8-e8bd-43d2-9fbb-250a576233ff .concept}

In this topic, you will read about creating an appointment on the calendar board.

**Important:** This topic explains how to perform tasks on the calendar boards available in the Classic UI of Acumatica ERP.

For information about the Modern UI calendar board, see [Scheduling Appointments: Calendar Board](FieldService_Scheduling_with_Modern_Calendar_Board_concept.md). The following boards are no longer available in the Modern UI:

-   *Staff Calendar Board \(FS300400\)* form
-   *Room Calendar Board \(FS300700\)* form
-   *Staff Working Schedule Board \(FS300500\) form*
-   *Dispatch Board \(FS301300\)* form \(available with customization only\)
-   *Staff Appointments on Map \(FS301100\)* form
-   *Appointment History on Map \(FS301200\)* form

## Scheduling of Appointments on Calendar Boards { .section}

In Acumatica ERP, you can do the following by using calendar boards:

-   If the needed appointment has not yet been created in the system, you can select the time of the appointment and the appropriate staff member to perform a particular service or multiple services, and initiate creation of the appointment.
-   If the needed appointment has been created in the system, you can check the time of the appointment and assign an appropriate staff member to the appointment.

The following sections describe the available calendar boards in Acumatica ERP and their use.

## The Calendar Board Form { .section}

On the [Calendar Board](FS_30_03_00.md) \(FS300300\) form, you see the work schedules of the staff members of your company. To select the right staff members to perform services, you can filter staff members by any needed skills, license types, services, and service areas related to the service for which you want to schedule an appointment. Based on the available working times of staff members, you decide who will perform services and when, assign selected staff members, and create appointments. You can also assign staff members to perform existing appointments.

For an example of scheduling by using the Calendar Board, see [Scheduling Appointments: To Create a Skill-Matched Appointment on the Calendar](ServMgmt_Creating_Appointment_on_Calendar_Board_Process_Activity.md).

## The Staff Calendar Board Form { .section}

On the [Staff Calendar Board](FS_30_04_00.md) \(FS300400\) form, you see the work schedule of a particular staff member of your company. You can filter service orders and appointments by any of the following: skills, license types, and service classes. Based on the available working times of the staff member, you can do the following:

-   Decide which services, service orders, and appointments this staff member will be assigned to and when this staff member's work will occur
-   Create any needed appointments

## The Room Calendar Board Form { .section}

On the [Room Calendar Board](FS_30_07_00.md) \(FS300700\) form, you can see the availability of the rooms in your company's branch location. Based on this information, you can select which services will be performed in which room of the selected branch location and when, and you can create any needed appointments. \(If appointments have already been created, you just assign a room to them.\) Rooms are usually used for service orders if the services are performed on-site \(that is, those for which the services are performed at your company location\), and they can also be used for internal service orders.

**Tip:** To be able to use rooms for services, you must have the **Enable Rooms** check box selected on the [Service Management Preferences](FS_10_01_00.md) \(FS100100\) form.

## Viewing of Appointments on Calendar Boards { .section}

You can view the appointments assigned to staff members of your company by using the calendar board forms in the following ways:

-   If you want to see the appointments associated with staff members on a particular day, week or month, you use the [Calendar Board](FS_30_03_00.md) \(FS300300\) form. You can filter information on this form by branch, branch location, and staff member. Also, you can filter staff members by skill, license type, service, and service area. On this form, you can see the general appointment information, such as service order number, appointment status, customer name, and contact phone number.
-   If you want to see the appointments associated with a particular staff member for a selected period of time, you use the [Staff Calendar Board](FS_30_04_00.md) \(FS300400\) form. You can filter information on this form by branch and branch location. On this form, you can see the general appointment information, such as service order number, appointment status, customer name and contact phone number.
-   If you want to see the appointments associated with staff members for a particular day and the current locations of staff members on an Azure map, you use the [Staff Appointments on Map](FS_30_11_00.md) \(FS301100\) form. This form displays the appointment number and address information.
-   If your company uses its rooms to provide services, you can view the availability of rooms and appointments assigned to these rooms for a particular day on the [Room Calendar Board](FS_30_07_00.md) \(FS300700\) form. This form shows the general appointment information, such as the service order number, the status of the appointment, the customer name and contact phone number.

    **Important:** If the *WorkWave Route Optimization* feature is enabled in the *Third Party Integrations* group of features on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form, you can optimize the appointment schedule on the [Optimize Appointment Scheduling](FS_50_14_00.md) \(FS501400\) form. For details, see [Optimizing Appointment Scheduling with WorkWave](ServMgmt_Appointments_WorkWave_Schedule_Optimization.md).


**Parent topic:**[Creating Appointments](../UserGuide/ServMgmt_Processing_Appointments_Mapref.md)

