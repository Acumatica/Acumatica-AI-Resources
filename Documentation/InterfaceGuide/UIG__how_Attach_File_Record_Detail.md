# To Scan a File and Attach It to a Record Detail {#_8e6f3b99-d5ac-4eba-8f4d-62a0b576b975 .task}

In Acumatica ERP, you can scan a file and attach it to a record detail—that is, to a detail row or line of a record \(an entity or a document\) created on a data entry form. This topic describes the process of scanning and attaching the file.

**Tip:** This functionality is available only if the *DeviceHub* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form and at least one scanner has been configured in the DeviceHub application. For more information about configuring scanners in DeviceHub, see the topics of the [Configuring Printers](../Shared/../ImplementationGuide/Config_Printers_DeviceHub_Mapref.md) chapter.

## To Scan a File and Attach It to a Record Detail { .section}

1.  Open the appropriate data entry form, and select the record to which you want to attach the file.
2.  In the appropriate detail row of the table, at the beginning of the row, click the Files \(![](../Shared/Images/Attaching_files_to_record.png)\) button.
3.  In the **Files** dialog box, which opens, click **Scan**.
4.  In the **Submit for Scanning** dialog box, which opens, select a scanner in the **Scanner** box.

    The system fills in the boxes of the dialog box with the default settings of the scanner. You can change these settings, if needed.

5.  On the toolbar of the dialog box, click **Scan** to initiate the scanning of the document. When the system completes the scanning, the **Submit for Scanning** dialog box closes; the system returns you to the **Files** dialog box, where a row with the name of the file with the scanned document appears in the table.
6.  Click **Upload**. The system attaches the scanned document to the record detail \(that is, to the detail row of the record\).

**Parent topic:**[Using Tables](../InterfaceGuide/Details_Table__con_Working_with.md)

