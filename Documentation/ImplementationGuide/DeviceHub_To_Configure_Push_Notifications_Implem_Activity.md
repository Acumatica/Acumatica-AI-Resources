# DeviceHub: To Configure Methods of Retrieving Print and Scan Jobs {#_ff6a5295-162f-4d75-a400-38825e191c16 .task}

In the following implementation activity, you will learn how to configure methods of retrieving print and scan jobs by setting up push notifications and polling in DeviceHub.

## Story { .section}

Suppose that you are a technical specialist in your company and you have installed DeviceHub. Now you need to configure the methods DeviceHub uses to receive print and scan jobs to ensure fast and reliable document printing and scanning.

## Process Overview { .section}

On the **General** tab of the configuration window of DeviceHub, you will configure methods of retrieving print and scan jobs.

## System Preparation { .section}

Before you start configuring methods of retrieving print and scan jobs, make sure that DeviceHub has been installed on your computer, as described in [DeviceHub: To Install DeviceHub](Devicehub_To_Install_DeviceHub_Implem_Activity.md)

## Step 1: Enabling Push Notifications { .section}

To enable push notifications, do the following:

1.  Navigate to **Start** &gt; **Programs** &gt; **Acumatica** &gt; **Acumatica DeviceHub** to view the DeviceHub main window.

    **Note:** DeviceHub must be run with administrator privileges; otherwise, some of its functions may be unavailable.

2.  On the application’s main menu, click **File** &gt; **Configure** to open the **Configuration** window. \(If you are running DeviceHub for the first time, the **Configuration** window opens automatically.\)
3.  In the **Methods of retrieving print jobs** section, select the **Use push notifications** check box.

    The application will now receive push notifications sent by Acumatica ERP.


## Step 2: Configuring Polling { .section}

To configure polling of Acumatica ERP for print and scan jobs, do the following in the **Configuration** window, which has been opened in the previous step:

1.  In the **Methods of retrieving print jobs** section, select the **Poll regularly** check box.
2.  In the **Poll every _x_ sec** box, specify `60`.

    In the previous step, you have enabled push notifications, which will be the primary method for retrieving print and scan jobs. You are configuring polling only as a backup method to ensure that no jobs are missed. Therefore, there is no need to set a more frequent interval.

3.  Select the **Poll on start or reconnection** check box.

    DeviceHub will retrieve print and scan jobs every time it starts after a stop or pause.


You have configured the retrieval of print and scan jobs for DeviceHub. Now you need to add a printer, as described in [Printers: To Add a Printer to DeviceHub](DeviceHub_To_Add_Printers_to_DeviceHub_Implem_Activity.md).

Optionally, you first configure the DeviceHub log, as described in [DeviceHub: To Configure the DeviceHub Log](DeviceHub_To_Configure_the_DeviceHub_Log_Implem_Activity.md).

**Parent topic:**[Getting Started with DeviceHub](../ImplementationGuide/Config_Initial_DeviceHub_Mapref.md)

