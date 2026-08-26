# DeviceHub: Licensing and API Connections of DeviceHub {#_148be3d8-92fc-431f-8572-44d1ca4e8659 .concept}

A single DeviceHub application can create multiple API connections to the Acumatica ERP instance while performing print jobs, scan jobs, and weighing with scales. This topic provides information about the entities and settings of DeviceHub that can create API connections.

## Licensing Information { .section}

The DeviceHub application does not have a separate license agreement; the available capabilities are determined by the Acumatica ERP agreement.

The primary metric that governs the operation of DeviceHub is the number of API users that can connect to Acumatica ERP. Each API user corresponds to one API connection required to perform DeviceHub operations. In the Acumatica ERP instance to which DeviceHub is connected, you can view the maximum number of API users available according to your license agreement. This number is shown in the **Maximum Number of Concurrent Web Services API Requests** box on the **License** tab of the [License Monitoring Console](../UserGuide/SM_60_40_00.md) \(SM604000\) form.



## API Connections for Printers { .section}

The DeviceHub application creates one dedicated API connection, which is used for the following tasks:

-   Signing in to the Acumatica ERP instance
-   Receiving the printer list
-   Updating the printer list
-   Receiving the print jobs on polling
-   Updating the print jobs
-   Signing out of the Acumatica ERP instance

When DeviceHub receives files for printing, the application creates at least one more temporary API connection to upload the files to be printed. The maximum number of such connections depends on the application settings as follows:

-   If the **Use parallel processing** check box is selected on the **Processing** tab, the maximum number of the temporary API connections to receive files for printing is equal to the value in the **Max loading threads** box on this tab. If the **Use parallel processing** check box is cleared, DeviceHub can create only one API connection to receive files for printing.
-   If a printer in the list of printers on the **Printers** tab has the **Use parallel processing** check box selected, the application can create additional API connections for this printer. The maximum number of these connections is determined by the value in **Max loading threads** box specified for the printer on this tab.
-   If a printer in the list of printers on the **Printers** tab has the **Raw mode \(for use with compatible label printers\)** check box selected, the application can create an additional API connection for this printer.

## API Connections for Scanners { .section}

If the use of scanners is configured for DeviceHub, the application opens one API connection, which is used for the following tasks:

-   Signing in to the Acumatica ERP instance
-   Receiving the scanner list
-   Updating the scanner list
-   Updating the scan jobs
-   Signing out of the Acumatica ERP instance

## API Connections for Scales { .section}

If the use of scales is configured for DeviceHub, the application opens one API connection, which is used for the following tasks:

-   Signing in to the Acumatica ERP instance
-   Sending weighing results to Acumatica ERP
-   Signing out of the Acumatica ERP instance

## Calculation of API Connections: Example {#section_pmh_wz3_pvb .section}

Suppose that your company has the following office devices managed via DeviceHub:

-   Two printers for general printing tasks
-   One printer for printing thermal labels
-   One printer for the CTO
-   Three scanners
-   Two scales

The entities and devices as well as the settings of each device affecting the number of connections are described in the following table.

|Entity or Device|Settings|Maximum Number of Connections|
|----------------|--------|-----------------------------|
|The DeviceHub printer module for all printers|N/A|1|
|2 printers for general printing tasks|The **Use parallel processing** check box is selected on the **Processing** tab of the application settings. The **Max loading threads** box on the same tab has *4* specified.|4|
|1 printer for printing thermal labels|The **Raw mode \(for use with compatible label printers\)** check box is selected in the printer settings on the **Printers** tab.|1|
|1 printer for the CTO|The **Use parallel processing** check box is selected in the printer settings on the **Printers** tab. The **Max loading threads** box in the printer settings has *2* specified.|2|
|The DeviceHub scanner module for 3 scanners|N/A|1|
|The DeviceHub scales module for 2 scales|N/A|1|
| | |**Total**: 10|

## Tracking of API Connections {#section_l1p_pj4_pvb .section}

You can track the number of active API connections created by the DeviceHub application on the [System Monitor](../UserGuide/SM_20_15_30.md) \(SM201530\) form. For more details on the use of this form, see [Monitoring System Health](../UserGuide/SA_Monitoring_System_Health_Mapref.md).

**Note:** When you open the configuration settings of the DeviceHub application by clicking **File** &gt; **Configure** in the application menu or pause the application by clicking **Actions** &gt; **Pause** in the application menu, the application temporarily closes all active API connections. The connections are resumed when you close the application settings or click **Actions** &gt; **Start** in the application menu.

**Parent topic:**[Getting Started with DeviceHub](../ImplementationGuide/Config_Initial_DeviceHub_Mapref.md)

