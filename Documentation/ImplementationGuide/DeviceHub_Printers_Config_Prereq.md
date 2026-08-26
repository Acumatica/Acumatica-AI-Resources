# Printers: Configuration Prerequisites {#_06f4299f-5d53-46ea-b4cf-d1060733af4c .concept}

Before starting to configure printers in DeviceHub, you should be sure that the needed feature has been enabled, Acumatica ERP and DeviceHub have been configured, and a printer has been configured in Windows, as described in the following sections.

## Enabling the Needed Feature { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *DeviceHub* feature must be enabled.

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to configure printers in DeviceHub:

-   On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, a user with the *Administrator* user role has been created. DeviceHub will use it for connecting to the Acumatica ERP. For details, see [DeviceHub: Configuration of a DeviceHub User](DeviceHub_Configuration_of_Application_User.md).
-   On the [Access Rights by Role](../UserGuide/SM_20_10_25.md) \(SM201025\) or [Access Rights by Screen](../UserGuide/SM_20_10_20.md) \(SM201020\) form, the user for connecting to the Acumatica ERP instance has been granted the *Edit* access rights to the following forms:
    -   [Printers](../UserGuide/SM_20_65_10.md) \(SM206510\)
    -   [Print Jobs](../UserGuide/SM_20_65_00.md) \(SM206500\)
    -   All report forms that will be used for printing
    -   All forms that contain entities used for forming a report

## Configuring the Application { .section}

You need to make sure the following tasks have been performed in DeviceHub before you begin to configure printers:

-   On the **Connection** tab of the **Configuration** window, the connection settings have been specified.

    For more information about configuring the connection, see [DeviceHub: To Set Up the Connection Between DeviceHub and the Acumatica Instance](Devicehub_To_Set_Up_the_Connection_Implem_Activity.md).

-   On the **General** tab of the **Configuration** window, the methods of retrieving print jobs have been configured.

    For more information about configuring the methods of retrieving print jobs, see [DeviceHub: To Configure Methods of Retrieving Print and Scan Jobs](DeviceHub_To_Configure_Push_Notifications_Implem_Activity.md).


## Configuring Hardware Devices { .section}

You need to make sure a printer has been configured in your Windows operating system.

**Parent topic:**[Configuring Printers](../ImplementationGuide/Config_Printers_DeviceHub_Mapref.md)

