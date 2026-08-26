# Scanners: General Information {#_81990dd3-6f45-40e6-83ed-d2a8568cf424 .concept}

If the DeviceHub application is installed and configured for use with the Acumatica ERP instance, a system administrator can configure the scanners to be used. Acumatica ERP sends push notifications to DeviceHub when a scan job is requested.

This topic describes the ways the administrator can monitor and manage scanners and scan jobs once the configuration has been completed, as well as the workflow of scanning with DeviceHub and the way an individual user can specify a default scanner for their own user account.

**Important:** Due to limitations of some manufacturers' scanner drivers, in some cases, only one scanner can be managed by each workstation. That is, if DeviceHub is used for scanning, it must be installed on each workstation that is connected to a scanner for proper functionality.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Add a scanner to DeviceHub
-   Update the list of scanners in Acumatica ERP
-   Scan a document in Acumatica ERP via DeviceHub

## Implementation Workflow { .section}

To implement the ability to scan documents with DeviceHub in Acumatica ERP, you perform the following general steps, as described in [To Add a Scanner to DeviceHub](DeviceHub_To_Add_Scanners_Implem_Activity.md):

1.  In DeviceHub, you add the scanners.
2.  In Acumatica ERP, you update the list of scanners.
3.  \(Optional\) In Acumatica ERP, you specify the default scanners that will be used for scanning documents.

## Workflow of Scanning with DeviceHub { .section}

Once the DeviceHub and scanner configuration has been completed, a user can use the scanning functionality of DeviceHub on any form of Acumatica ERP that has the standard **Files** dialog box. In this dialog box, the user clicks **Scan** on the toolbar. In the **Submit for Scanning** dialog box that opens, the user selects the scanner in the **Scan** box and specifies the scanning settings, including the source of the scanning paper in the device, the color and resolution of the resulting image, and the name and type of the scanned file. Then the user clicks **Scan**, and the system creates a scan job. When the scan job is processed, the system attaches the scanned file to the form.

## Scanners and Scan Jobs { .section}

In your Acumatica ERP instance, you use the [Scanners](../UserGuide/SM_20_65_40.md) \(SM206540\) form to update the list of scanners to show the ones that have been configured in DeviceHub. You must sign in to the Acumatica ERP instance with the username that is used by DeviceHub. To update the list of scanners, you need to click **Update Scanner List** on the form toolbar.

**Important:** For scanning operations with DeviceHub, we recommend that you use a *TWAIN*-compliant scanner.

On the [Scan Jobs](../UserGuide/SM_20_65_05.md) \(SM206505\) form, you can view the scan jobs in the date range you specify. To view the processed jobs in addition to those that have not yet been processed, you clear the **Hide Processed** check box in the Selection area.

## A User Account’s Default Scanner {#section_vv2_1y4_y4b .section}

A user can specify the default scanner to be used for scanning documents for their own user account on the [User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\) form. In the **Personal Settings** section of the **General Info** tab, they specify a configured device in the **Default Scanner** box.

If your organization has more than one DeviceHub workstation with DeviceHub connected to the Acumatica ERP instance, all the workstations will receive the information about a scan job when a user creates it in Acumatica ERP. The DeviceHub workstation that will perform the scan job is determined by the DeviceHub ID in the scan job.

**Parent topic:**[Configuring Scanners](../ImplementationGuide/Config_Scanners_DeviceHub_Mapref.md)

