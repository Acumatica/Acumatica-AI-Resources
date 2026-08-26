# To Set Up the Printing of Carrier Labels on a Thermal Printer {#_de3b7e31-58f7-4e36-a6ec-d40ac9755037 .task}

For thermal printers, the carriers usually provide labels in EPL or ZPL formats.

You can create a batch file for the operating system so that the system sends the label file to the thermal printer once you double-click the label file. To create the batch file, follow the steps in the following sections.

## To Share a Printer { .section}

Connect the printer to a local network computer by using a USB cable, and turn the printer on. To share the printer on the network, do the following:

-   For Windows 11:
    1.  Click the **Start** button, and open **Settings**.
    2.  On the left side, click **Network &amp; internet**.
    3.  On the right side, click **Advanced network settings**.
    4.  Click **Advanced sharing settings** &gt; **Private networks**.
    5.  Under **Private networks**, turn on **Network discovery** and **File and printer sharing**.
    6.  Click **Bluetooth and Devices** &gt; **Printers &amp; scanners**.
    7.  Select the printer to share.
    8.  Click **Printer Properties**.
    9.  On the **Sharing** tab of the dialog box, do the following:
        1.  Select the **Share this printer** check box.
        2.  In the **Share name** box, specify the shared printer name and write down the name \(or copy it to the clipboard\).
        3.  Click **OK** to close the dialog box.
-   For Windows 10:
    1.  Click the **Start** button, then click **Settings** &gt; **Devices** &gt; **Printers &amp; scanners**.
    2.  In the list of the devices, click the thermal printer, and then click **Manage**.
    3.  On the left of the window that opens, click **Printer Properties**.
    4.  On the **Sharing** tab of the dialog box, do the following:
        1.  Select the **Share this printer** check box.
        2.  In the **Share name** box, specify the shared printer name and write down the name \(or copy it to the clipboard\).
        3.  Click **OK** to close the dialog box.

## To Prepare a Batch File for Label Printing { .section}

On the computer to which the printer is connected, create the batch file `PrintLabels.bat` that will handle the printing. \(You can change the suggested batch name if needed.\)

If you will use a USB printer, create the file as follows:

1.  Open Notepad, and type the following text:

    ```
    Net use LPT2: \\%ComputerName%\SharedPrinterName
    Copy %1 LPT2
    Net use LPT2: /Delete
    
    ```

2.  Replace ``SharedPrinterName`` with the shared printer's actual name that you wrote down or copied earlier. Do not change `%ComputerName%`; the system will replace it automatically with your computer name.
3.  Save the file as `PrintLabels.bat` to the appropriate location. Make sure that you select *All Files* for the **Save as Type** action.

If you will use a network printer, take these steps:

1.  In Notepad, type the following text:

    ```
    print /d:\\ServerName\PrinterName %1 
    
    ```

2.  Replace `ServerName` with the name of your network server.
3.  Replace `PrinterName` with the name of your network thermal printer.
4.  Save the file as `PrintLabels.bat` to the appropriate location. Make sure that you select *All Files* for the **Save as Type** action.

## To Associate the File Extension with the Created Batch File { .section}

You can associate the file extension with the created batch file as follows:

-   For Windows 11:
    1.  Double-click a label file.
    2.  In the **Select an app to open this file** dialog box, click **Choose an app**.
    3.  Select the `PrintLabels.bat` file that you have created in the previous step.
    4.  Click **Always**.

-   For Windows 10:
    1.  Double-click a label file.
    2.  In the **How do you want to open this file** dialog box, click **More apps**.
    3.  Click **Look for another app on this PC**.
    4.  Select the `PrintLabels.bat` file that you have created in the previous step.
    5.  Make sure that the **Always** check box is selected.
    6.  Click **OK**.

Connect the printer and load the label stock.

**Parent topic:**[Carrier Labels and Tracking Numbers](../UserGuide/SO__con_Carriers_Label.md)

