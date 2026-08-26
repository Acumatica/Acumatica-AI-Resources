# Correcting Appointments {#_f17a564d-72a5-4a31-b2ba-390d5ca13d17 .concept}

In Acumatica ERP, you may need to edit an appointment to make corrections or updates after the work is completed. For example, you may need to correct times on the **Log** tab of the [Appointments](FS_30_02_00.md) \(FS300200\) form if a staff member forgot to properly start or stop their time, or if the logged time needs to be rounded up or down. If multiple staff members are involved in an appointment, corrections may be needed if one staff member completes the appointment while others are still logging their time. To address these issues and ensure accurate record keeping, you can use the appointment editing functionality.

Additionally, reopening a canceled appointment may be necessary if a service that was initially considered unnecessary still needs to be completed.

This topic describes the processes of editing completed appointments and reopening canceled appointments.

## Editing a Completed Appointment { .section}

You start editing an appointment by clicking the **Edit** command on the More menu of the [Appointments](FS_30_02_00.md) \(FS300200\) form. This command is available if the appointment has the *Completed* status. When you click this command, the appointment is assigned the *In Process* status, and you can edit its settings as needed. The other appointment settings remain unchanged, including the following:

-   The settings on the **Log** tab. That is, the time activities related to the appointment remain unchanged.
-   Line settings and statuses on the **Details** tab.

When the appointment is reassigned the *In Process* status, the status of the related service order also changes from *Completed* to *Open* on the [Service Orders](FS_30_01_00.md) \(FS300100\) form if the following conditions are met:

-   The **Сomplete Service Order When Its Appointments are Completed** check box is selected on the [Service Order Types](FS_20_23_00.md) \(FS202300\) form for the service order type.
-   If multiple appointments have been created for the service order, the remaining appointments have either the *Canceled* status or the *Completed* status.

If the service order is assigned the *Open* status, the status of all lines changes to *Scheduled* on the **Details** tab of the [Service Orders](FS_30_01_00.md) form.

## Reopening a Canceled Appointment { .section}

Sometimes you may need an appointment of the *Canceled* status to be reopened and started again. To reopen a canceled appointment, you click the **Reopen** command on the More menu of the [Appointments](FS_30_02_00.md) \(FS300200\) form. This command is only available for appointments with the *Canceled* status. When you click this command, the appointment is assigned the *Not Started* status, and the system does the following:

-   Removes any log lines on the **Log** tab
-   Changes the line statuses to *Not Started* on the **Details** tab

Once the appointment is assigned the *Not Started* status, a staff member can start the appointment once again.

**Parent topic:**[Correcting Appointments](../UserGuide/ServMgmt_Appointments_Editing_Mapref.md)

