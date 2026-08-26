# Service Order Types: Tracking of Staff Member Time {#_6007d631-c31b-4617-bfd4-fd8d7013cad4 .concept}

The time that staff members spend on attending appointments or performing services can be reported automatically on the [Employee Time Activities](../UserGuide/EP_30_70_00.md) \(EP307000\) form. To enable the automatic reporting of time, you need to appropriately configure service order types related to appointments and services for which time has to be tracked.

## Configuration of the Tracking of Time Activities for Staff Members { .section}

To make the system automatically create the applicable time activities for staff members on the [Employee Time Activities](../UserGuide/EP_30_70_00.md) \(EP307000\) form for the time they spend during the appointment, you should configure the system as follows:

1.  You ensure that the *Time Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  You ensure that the required settings have been specified on the [Time and Expenses Preferences](../UserGuide/EP_10_10_00.md) \(EP101000\) form.
3.  You select the **Enable Time &amp; Expenses Integration** check box in the **General Settings** section of the **General** tab on the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form.
4.  For each service order type for which time activities should be created, on the **General** tab \(**Integrating with Time &amp; Expenses** section\) of the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form, you do the following:

    -   You select the **Automatically Create Time Activities from Appointments** check box.
    -   In the **Default Earning Type** box, you select the default earning type to be used for the hours spent performing the appointments.
    **Note:** You can also specify an earning type for each service in the **Field Service Defaults** section of the **Price/Cost** tab on the [Non-Stock Items](../UserGuide/IN_20_20_00.md#) \(IN202000\) form. The earning type for the service has a higher priority than the default earning type for the service order type.

5.  Optional: On the **Time Behavior** tab of the [Service Order Types](../UserGuide/FS_20_23_00.md) form, you can configure the system to insert particular time-related settings when an appointment is started or completed.
6.  For each staff member to perform services, on the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, you verify that the **Linked Entity** box is filled with the username.
7.  For each staff member to perform services, you should do the following:
    -   On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, you verify that the **Linked Entity** box is filled with the username.
    -   By using the [Employees](../UserGuide/EP_20_30_00.md#) \(EP203000\) form, you create a corresponding employee account in the system.

**Parent topic:**[Service Order Types](../ImplementationGuide/config_Service_Order_Types_Mapref.md)

