# DeviceHub: General Information {#_0a1c628e-0288-42c6-a975-4e36f60dee0b .concept}

DeviceHub is a Windows application that is used for integration of Acumatica ERP with hardware devices, such as printers, scanners, and digital scales.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Install DeviceHub
-   Set up the connection with Acumatica ERP
-   Configure push notifications and polling
-   Configure the DeviceHub log

## DeviceHub Basics { .section}

DeviceHub is a standalone Windows application that can run on a workstation or a server independently from a user session. DeviceHub enables the integration and management of various hardware devices—such as printers, scanners, and scales—directly with the Acumatica ERP system. The application provides the ability for direct communication between Acumatica ERP and physical devices.

DeviceHub features the following capabilities:

-   The processing of print jobs with any local or network printer
-   The ability to print carrier labels in raw mode
-   The processing of scan jobs and scan results delivered directly to Acumatica ERP forms
-   Integration with digital scales that enables real-time capture of weight data

## Compatibility with Acumatica ERP { .section}

For DeviceHub to function properly, both Acumatica ERP and DeviceHub must have the same major version.

## Implementation Workflow { .section}

To implement the functionality of printing, scanning, and weighing with DeviceHub in Acumatica ERP, you perform the following general steps:

1.  You install DeviceHub by using the Acumatica ERP Setup wizard. For details, see [DeviceHub: To Install DeviceHub](Devicehub_To_Install_DeviceHub_Implem_Activity.md).
2.  You set up the connection between DeviceHub and Acumatica ERP by performing the following steps:

    1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS101000\) form in Acumatica ERP, you enable the DeviceHub feature.

        **Important:** The feature may be subject to additional licensing; consult the Acumatica ERP sales policy for details.

    2.  In the **Configuration** window of DeviceHub, you specify the connection settings.
    For details, see [DeviceHub: To Set Up the Connection Between DeviceHub and the Acumatica Instance](Devicehub_To_Set_Up_the_Connection_Implem_Activity.md).

3.  In the **Configuration** window of DeviceHub, you configure the methods of retrieving print and scan jobs. For details, see [DeviceHub: To Configure Methods of Retrieving Print and Scan Jobs](DeviceHub_To_Configure_Push_Notifications_Implem_Activity.md).
4.  In the **Configuration** window of DeviceHub, you configure the logging of information in DeviceHub. For details, see [DeviceHub: To Configure the DeviceHub Log](DeviceHub_To_Configure_the_DeviceHub_Log_Implem_Activity.md).

## Application Deployment Approaches { .section}

When deploying DeviceHub in your company, you can choose one of the following approaches:

-   A single instance of DeviceHub for multiple workstations: This approach is suitable for departments and offices that do not have a high load of printing, scanning, and weighing operations. For example, in the accounting department, DeviceHub would be used only for printing documents in relatively small quantities and occasional scanning.
-   One instance of DeviceHub per workstation: This approach is suitable for departments and offices with a high load of printing, scanning, and weighing operations. Suppose that in the packaging stations of a warehouse, DeviceHub will be intensively used for printing pick lists and carrier labels and weighing packages for shipments. In this case, a separate instance of DeviceHub for each packaging workstation will minimize delays in the print queue, misuse of printing, and an increased load on the digital scales.

You can combine these installation options depending on the working environment in your company.

## Push Notifications {#section_vv2_1y4_y4b .section}

Acumatica ERP can send push notifications to DeviceHub to quickly notify the connected printer or scanner about a print or scan job. The advantage of this communication method is the speed at which jobs are sent to hardware devices. However, sending a push notification is a one-time action for each user attempt to print or scan a document. Acumatica ERP does not track the result of sending the notification. For guaranteed result, push notifications should be combined with regular polling.

For instruction on how to configure push notifications in DeviceHub, see [DeviceHub: To Configure Methods of Retrieving Print and Scan Jobs](DeviceHub_To_Configure_Push_Notifications_Implem_Activity.md),

## Use of Polling for Jobs { .section}

Polling is another method of retrieving print and scan jobs. While polling ensures the execution of tasks, it can lead to execution delays, depending on the specified time interval. You can configure the frequency of regular polling calls to Acumatica ERP by specifying a value in the **Poll every** box on the **General** tab of the **Configuration** window in DeviceHub. This box becomes available only if push notifications are enabled. DeviceHub starts regular polling only when the application receives the first push notification after the start.

To make sure that DeviceHub will receive print and scan jobs if there are connectivity issues or it was paused for maintenance, you can enable polling on start or reconnection of the application.

Polling requires the opening of an API connection with Acumatica ERP to retrieve the jobs.

For instructions on how to configure polling in DeviceHub, see [DeviceHub: To Configure Methods of Retrieving Print and Scan Jobs](DeviceHub_To_Configure_Push_Notifications_Implem_Activity.md),

**Parent topic:**[Getting Started with DeviceHub](../ImplementationGuide/Config_Initial_DeviceHub_Mapref.md)

