# DeviceHub: User Interface Reference {#_92d63537-dfa0-49a1-b166-a4d4cfd4ba21 .reference}

In this topic, you will find user interface reference information for the DeviceHub application.

## Main Menu { .section}

On the main menu, you can invoke a variety of commands that give you the ability to configure the application and start or pause the application's activity.

|Command|Description|
|-------|-----------|
|**Configure**|Opens the **Configuration** window, in which you specify the application settings and define the devices connected to Acumatica ERP via the application.|
|**Exit**|Closes the application.|

|Element|Description|
|-------|-----------|
|**Pause**|Pauses the application's activity.|
|**Start**|Runs the application.|

## Log Tab { .section}

This tab contains a toolbar with the following button and the log area, which displays a chronological list of events related to the application, each with a date and time.

|Element|Description|
|-------|-----------|
|**Clear**|Clears the log area.|

## Scales Tab { .section}

This tab contains the list of digital scales that are connected to Acumatica ERP via the application. The tab is displayed if the **Enable scale support** check box is selected on the **General** tab of the **Configuration** window.

|Column|Description|
|------|-----------|
|**Scale ID**|The identifier of the digital scale.|
|**Weight**|The last weight received from this digital scale.|

## Diagnostics Tab { .section}

This tab contains a toolbar and the log area, which displays a chronological list of diagnostic details about all devices connected to Acumatica ERP via the application, each with a date and time. The tab is displayed if the **Collect diagnostics** check box is selected on the **Log** tab of the **Configuration** window.

|Element|Description|
|-------|-----------|
|**Clear**|Clears the log area.|

## Resources Tab { .section}

This tab contains the information about the resources that are currently being used for the loading and printing processes. The tab is displayed if the **Collect diagnostics** check box is selected on the **Log** tab of the **Configuration** window.

|Element|Description|
|-------|-----------|
|**In Progress**|An informational element that shows the number of file-loading threads that are currently being processed.|
|**Pending**|An informational element that shows the number of file-loading threads that are currently waiting for processing.|
|Task list|The list of the file-loading tasks, organized in a tree-like structure. These tasks are grouped by threads if parallel processing has been configured and is being used.|

|Element|Description|
|-------|-----------|
|**In Progress**|An informational element that shows the number of printing threads that are currently being processed.|
|**Pending**|An informational element that shows the number of printing threads that are currently waiting for processing.|
|Task list|The list of the printing tasks, organized in a tree-like structure. These tasks are grouped by threads if parallel processing has been configured and is being used.|

## Configuration Window { .section}

You use this window to specify the basic settings of the DeviceHub application. You can open this window by clicking **File** &gt; **Configure** in the main menu of the application.

|Element|Description|
|-------|-----------|
|**DeviceHub ID**|The unique identifier to be used for this DeviceHub instance.|
|**Enable scale support**|A check box that indicates \(if selected\) that digital scales can be configured and connected to Acumatica ERP via the application.|
|**Enable scanner support**|A check box that indicates \(if selected\) that scanners can be configured and connected to Acumatica ERP via the application.|
|The **Methods of retrieving print jobs** section includes the following elements.|
|**Use push notifications**|A check box that indicates \(if selected\) that the application receives print jobs via push notifications that are sent when a user clicks the **Print** or **Reprint** button on any of the applicable Acumatica ERP forms.

 If this check box is selected, the **Poll regularly** check box becomes available for selection.

|
|**Poll on start or reconnection**|A check box that indicates \(if selected\) that DeviceHub receives print jobs that are awaiting processing each time it runs or restarts.|
|**Poll regularly**|A check box that indicates \(if selected\) that the print jobs that are awaiting processing are automatically received regularly at the specified periods of time.

 **Note:** The regular polling starts only after the first push notification is received after the application start.

 This check box is available for selection only if the **Use push notifications** check box is selected.

 If you select this check box, the following boxes become available: **Do not poll last _x_ sec** and **Poll every _x_ sec**.

|
|**Do not poll last _x_ sec**|The minimum time interval before a print job can be started during the regular polling. If the time since creation of the job is less than the value in this box, DeviceHub will not add the job to the printing or scanning queue.

 This box is available for selection only if the **Poll regularly** check box is selected.

|
|**Poll every _x_ sec**|The interval in seconds at which the application receives any print jobs awaiting processing.

 This box is available for selection only if the **Poll regularly** check box is selected.

|
|The **Polling delays for weight retrieval** section includes the following elements:|
|**Delay between devices _x_ ms**|The minimum delay in milliseconds before DeviceHub can poll another scale and send the result to Acumatica ERP.|
|**Delay between polling cycles _x_ ms**|The application polls all scales added to DeviceHub one by one. A single polling request to all of the scales constitutes a cycle. Once every scale has been polled, the application starts a new cycle. This setting defines the minimum delay in milliseconds before DeviceHub can start another cycle of polling.|

|Element|Description|
|-------|-----------|
|**URL**|The URL of the configured Acumatica ERP instance for which DeviceHub is configured \(for example, *http://localhost/AcumaticaDB*\).|
|**Login**|The user login \(that is, the username\) that DeviceHub will use to connect to the Acumatica ERP instance.|
|**Password**|The password that DeviceHub will use to connect to the Acumatica ERP instance.|
|**Tenant**|The login name of the tenant to which DeviceHub will connect. \(If you have only one tenant in your Acumatica ERP instance, leave the box empty.\)|
|The **Connection timeout** section includes the following elements.|
|**Send for _x_ sec**|The maximum number of seconds during which the application will send the connection request to Acumatica ERP.|
|**Receive for _x_ sec**|The maximum number of seconds the application will wait for the connection response from Acumatica ERP.|
|The **Reconnection settings** section includes the following elements.|
|**Limit attempts to**|The maximum number of times DeviceHub will attempt to reconnect to the Acumatica ERP instance if it has been disconnected.|
|**Interval**|The interval between attempts to reconnect to Acumatica ERP.|

|Element|Description|
|-------|-----------|
|**Use parallel processing**|A check box that indicates \(if selected\) that the application will use parallel processing to process print jobs for all connected printers. If this check box is selected, the **Max loading threads** and **Max printing threads** boxes become available.

 If the check box is cleared, all print jobs are processed in the global printing queue \(except the print jobs for the printers that have individual settings to use parallel processing configured on the **Printers** tab\). In this case, the **Max loading threads** and **Max printing threads** boxes are unavailable.

|
|**Max loading threads**|The maximum number of threads that may be used for loading print jobs.

 This box is available only if the **Use parallel processing** check box is selected on this tab.

|
|**Max printing threads**|The maximum number of threads that may be used for printing.

 This box is available only if the **Use parallel processing** check box is selected on this tab.

|
|**Create print task when _x_ documents received or every _y_ sec**|The rules of processing print tasks kept in the application's buffer. In the first box, you specify the maximum number of documents kept in the buffer before the application processes them; in the second box, you specify the interval \(in seconds\) when a print task is created, regardless of the number of the documents in the buffer.|

|Element|Description|
|-------|-----------|
|**Collect diagnostics**|A check box that indicates \(if selected\) that extended diagnostic information is collected and shown on the **Diagnostics** and **Resources** tabs of the application.|
|**Save log to file**|A check box that indicates \(if selected\) that the log must be saved to a file when the application is running. If this check box is selected, the **Log folder** and **Keep log files for _x_ days** boxes become available.|
|**Log folder**|The folder where the log file will be saved. You can leave the default folder that is filled in or specify another folder.|
|**Keep log files for _x_ days**|The number of days for which the log is kept. The default value is *30*.This value is applicable and the box is available if the **Save log to file** check box is selected.

|
|The tab has the following buttons next to the **Log folder** box.|
|**Browse For Folder**|A button that opens the dialog box that you can use to look for the folder in which the application will store the log file.|
|**Open folder**|A button that opens the folder in which the log file is stored.|

|Element|Description|
|-------|-----------|
|Printer list|A list of the printers that have been configured in DeviceHub. You can select any printer in this list to remove it or to specify or edit its settings.|
|**Add**|A button that you click to add a new printer to the list. You click this button and then specify the settings of the new printer on the right side of the tab.|
|**Remove**|A button that you click to remove the selected printer from the list.|
|**Name**|The unique identifier of the selected or newly added printer. Only digits and uppercase letters may be used for printer names.|
|**Printer**|The hardware device to be defined as a DeviceHub-operated printer. You select the hardware device from the printers that are already configured in your operating system.|
|**Raw mode \(for use with compatible label printers\)**|A check box that indicates \(if selected\) that the selected printer works in raw mode. A raw mode printer is frequently used for printing carrier labels.|
|**Paper size**|The paper size to be used by default when the documents are printed on the selected printer. The default value is *&lt;Printer Default&gt;*, which means that the default settings of the specific printer will be used.

 The other possible options in this box depend on the printer's printing settings.

 This box is unavailable for editing if the **Raw mode \(for use with compatible label printers\)** check box is selected.

|
|**Paper bin**|The paper bin to be used by default when the documents are printed on the selected printer. The default value is *&lt;Printer Default&gt;*, which means that the default settings of the specific printer will be used.

 The other possible options in this box depend on the printer's printing settings.

 This box is unavailable for editing if the **Raw mode \(for use with compatible label printers\)** check box is selected.

|
|**Scaling**|The scaling options that will be used when you print a document. You can select one of the following options:

 -   *No Scaling*: The scaling options for printing the document are not defined.
-   *Shrink to Page*: The document's content is scaled down to fit onto a single page.
-   *Fit to Margins*: The document's content is scaled down to fit the printable area that is defined by the printer.

 This box is unavailable for editing if the **Raw mode \(for use with compatible label printers\)** check box is selected.

|
|**Resolution**|The resolution that will be used when you print a document. You can select one of the following options:

 -   *&lt;Print Default&gt;* \(default\): The default resolution of your printer
-   *High*: High resolution
-   *Medium*: Medium resolution
-   *Low*: Low resolution
-   *Draft*: Draft-quality resolution

 Additional options may appear if they’re provided by the printer driver.

 **Attention:** Microsoft Windows adds the *High*, *Medium*, and *Low* options automatically. Depending on your printer model and the version of its driver, the selected option may or may not affect print quality.

|
|**Orientation**|The paper orientation to be used by default for printing the documents on the selected printer. One of the following option buttons should be selected:

 -   **Automatic**: The default setting of the printer will be used for printing the documents on the selected printer.
-   **Portrait**: Portrait orientation will be used for printing the documents on the selected printer.
-   **Landscape**: Landscape orientation will be used for printing the documents on the selected printer.

 This box is unavailable for editing if the **Raw mode \(for use with compatible label printers\)** check box is selected.

|
|**Use parallel processing**|A check box that indicates \(if selected\) that the application uses parallel processing for print jobs sent to this printer. If this check box is selected, the **Max loading threads** and **Max printing threads** boxes on this tab become available.

 If the check box is cleared, the application uses the global processing settings specified on the **Processing** tab. In this case, the **Max loading threads** and **Max printing threads** boxes on this tab are unavailable.

 **Note:** Print jobs for a printer that have the **Raw mode** check box selected are always processed in a separate thread.

|
|**Max loading threads**|The maximum number of threads that may be used for loading print jobs.

 This box is available only if the **Use parallel processing** check box is selected on this tab.

|
|**Max printing threads**|The maximum number of threads that may be used for printing.

 This box is available only if the **Use parallel processing** check box is selected on this tab.

|

|Element|Description|
|-------|-----------|
|Scale list|A list of the digital scale devices that have been configured and connected to Acumatica ERP via the application. You can select any scale in this list to remove it or to specify or edit its settings.|
|**Add**|A button that you click to add a new digital scale to the list. You click this button and then specify the settings of the new digital scale on the right side of the tab.|
|**Remove**|A button that you click to remove the selected digital scale from the list.|
|**Scale ID**|The unique identifier of the selected digital scale \(or the digital scale you are adding\). Only digits and uppercase letters can be used for scale names.|
|**Device**|The hardware device to be defined for use as a scale.|
|**Show all devices**|A check box that indicates \(if selected\) that all devices connected to the computer will be displayed in the **Device** box and will be available for selection. You select this check box to be able to select the digital scale that you are configuring if it is not detected as a scale device.|

|Element|Description|
|-------|-----------|
|Scanner list|A list of the scanners that have been configured and connected to Acumatica ERP via the application. You can select any scanner in this list to remove it or to specify or edit its settings.|
|**Add**|A button you click to add a new scanner to the list. You click this button and then specify the settings of the new scanner on the right side of the tab.|
|**Remove**|A button that you click to remove the selected scanner from the list.|
|**Name**|The unique identifier of the scanner. Only digits and uppercase letters may be used for the names of scanners.|
|**Scanner**|The hardware device to be defined as the selected DeviceHub-operated scanner. You select the hardware device from the scanners already configured in your operating system.|
|**Paper source**|The paper source to be used by default when the document is being scanned on the selected scanner.|
|**Color mode**|The color mode to be used by default when a document is being scanned on the selected scanner.|
|**Resolution**|The output resolution to be used by default when a document is being scanned on the selected scanner.|
|**File type**|The type of the file to which the scanning result will be saved. You can select one of the following options:

 -   *Image* \(default\): If the scanned document has multiple pages, each page will be saved as a separate image.
-   *Pdf*: If the scanned document has multiple pages, all pages will be saved as a single *PDF* document.
-   *Image/Pdf \(Multiple pages\)*: If the scanned document has only one page, it will be saved as an image. If the scanned document has multiple pages, all pages will be saved as a single *PDF* document.

|

|Button|Description|
|------|-----------|
|**Open configuration file**|Opens the application's configuration file \(`user.config`\) which can be used as the supporting information.|
|**OK**|Applies the specified settings and closes the **Configuration** window.|
|**Cancel**|Discards the changes and closes the **Configuration** window.|

**Parent topic:**[Getting Started with DeviceHub](../ImplementationGuide/Config_Initial_DeviceHub_Mapref.md)

