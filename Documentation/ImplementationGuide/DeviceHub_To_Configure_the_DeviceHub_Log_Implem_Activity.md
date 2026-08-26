# DeviceHub: To Configure the DeviceHub Log {#_09a4a70a-3103-453d-9728-de163a4a25ec .task}

In the following implementation activity, you will learn how to configure the logging of information in DeviceHub. You can specify the information to be shown in the DeviceHub log and set up the log to be saved to a file.

## Story { .section}

Suppose that you are a technical specialist in your company and you have installed DeviceHub. Now you need to configure the DeviceHub log.

## Process Overview { .section}

On the **General** tab of the configuration window of DeviceHub, you will configure the DeviceHub log.

## System Preparation { .section}

Before you start configuring the logging of information in DeviceHub, make sure that DeviceHub has been installed on your computer, as described in [DeviceHub: To Install DeviceHub](Devicehub_To_Install_DeviceHub_Implem_Activity.md)

## Step: Configuring the DeviceHub Log { .section}

To configure the DeviceHub log, do the following:

1.  Go to **Start** &gt; **Programs** &gt; **Acumatica** &gt; **Acumatica DeviceHub** to view the DeviceHub main window.

    **Note:** DeviceHub must be run with administrator privileges; otherwise, some of its functions may be unavailable.

2.  On the application’s main menu, click **File** &gt; **Configure** to open the **Configuration** window.
3.  On the **Log** tab, select the **Collect diagnostics** check box.

    With this setting, DeviceHub collects extended information about connected devices and processing threads.

4.  Do the following to specify the settings to store the log information to a file:
    -   Select the **Save log to file** check box to save the log to a file when the application is running.
    -   Leave the default value in the **Log folder** box.
    -   Select *30* in the **Keep log files for \_ days** box. This indicates that DeviceHub will keep the log for the past 30 days.

You have configured the DeviceHub log. If you have completed other instructions in this chapter, you can do the following:

-   Add a printer to DeviceHub, as described in [Printers: To Add a Printer to DeviceHub](DeviceHub_To_Add_Printers_to_DeviceHub_Implem_Activity.md)
-   Add a scanner to DeviceHub, as described in [To Add a Scanner to DeviceHub](DeviceHub_To_Add_Scanners_Implem_Activity.md)
-   Add a scale to DeviceHub, as described in [Scales: To Add a Scale to DeviceHub](DeviceHub_To_Add_a_Scale_Implem_Activity.md)

**Parent topic:**[Getting Started with DeviceHub](../ImplementationGuide/Config_Initial_DeviceHub_Mapref.md)

