# Printers: General Information {#_15d9329e-b2a3-4f12-b636-3e6b5a880df5 .concept}

If the DeviceHub application is installed and configured, a system administrator can add various printers to DeviceHub. They can also specify the default printers that Acumatica ERP will use when it selects the appropriate printer for printing a particular document. \(See [Printers: Specification of Default Printers](DeviceHub_Configuration_of_Default_Printers.md) for more information about the specification of various default printers.\) Additionally, they can configure the access to printers, further described in [Printers: Configuration of Printer Access](DeviceHub_Configuration_of_Printer_Access.md).

This topic describes the ways the administrator can monitor and manage printers and print jobs once the configuration has been completed, as well as the workflow of printing with DeviceHub.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Add printers to DeviceHub
-   Update the list of printers in Acumatica ERP
-   Print a document via DeviceHub

## Implementation Workflow { .section}

To implement the ability to print documents with DeviceHub in Acumatica ERP, you perform the following general steps, as described in [Printers: To Add a Printer to DeviceHub](DeviceHub_To_Add_Printers_to_DeviceHub_Implem_Activity.md):

1.  In DeviceHub, you add the printers.
2.  In Acumatica ERP, you update the list of printers.
3.  Optional: In Acumatica ERP, you specify the default printers that will be used for printing documents.

## Workflow of Printing with DeviceHub { .section}

Once the DeviceHub and printer configuration has been completed, a user can use one of the following Acumatica ERP forms to print a document with DeviceHub:

-   An automated warehouse management form, such as [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) \(SO302020\). On this form, you need to specify the type of the document to be printed in the **Settings** dialog box, which opens when the user clicks **User Settings** on the form toolbar. The system automatically creates a print job when the user confirms the document on the form.

    Suppose that a user wants to print shipment confirmations on the [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) form. To make the system automatically create print jobs for this document, on [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) form, they select the **Print Shipment Confirmation Automatically** in the **Settings** dialog box.

-   A mass-processing form, such as the [Print/Email Orders](../UserGuide/SO_50_20_00.md) \(SO502000\) form, which is used to print multiple documents simultaneously. To print documents, the user does the following:
    1.  In the Selection area, selects a printing action in the **Action** box, such as *Print Sales Order*, and selects the **Print with DeviceHub** check box.
    2.  Optional: Selects the **Define Printers Manually** check box. With this setting, the **Printer** box becomes available for editing. In the box, the user selects a printer that you want to use for printing.
    3.  Optional: Specifies the number of document copies to be printed in the **Number of Copies** box.
    4.  Selects the unlabeled check box next to the documents that they want to print and clicks **Process**; alternatively, to print all documents, they can click **Process All**.
-   The [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. On this form, a user can use the quick processing of the order to print selected documents with DeviceHub. To select and print documents related to the order, the user does the following:
    1.  Clicks **Quick Process** on the More menu.
    2.  In the **Shipping** and **Invoicing** sections of the **Process Order** dialog box, selects the appropriate check box for each document that you want to print. For example, to print a pick list for the order's shipment, they select the **Print Pick List** check box in the **Shipping** section.
    3.  In the **Printing Settings** section, which appears in the dialog box, the user selects the **Print with DeviceHub** check box.
    4.  Optional: The user selects the **Define Printers Manually** check box. With this setting, the **Printer** box becomes available for editing. In the box, they select the printer that they want to use for printing.
    5.  Optional: They specify the number of document copies to be printed in the **Number of Copies** box.
    6.  When the user has finished specifying the settings of the quick processing, they click **OK**.
-   The [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form. You can configure automatic printing of shipping documents by selecting the following check boxes on the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form:
    -   **Print Shipment Confirmation Automatically**
    -   **Print Shipment Labels Automatically**
    -   **Print Commercial Invoices Automatically**

## Printers and Print Jobs in Acumatica ERP { .section}

To monitor printers and print jobs in the Acumatica ERP instance, you must sign in with the username that is specified in DeviceHub.

In your Acumatica ERP instance, you use the [Printers](../UserGuide/SM_20_65_10.md) \(SM206510\) form to update the list of printers to display the ones that have been configured in DeviceHub. To update the list of printers, you need to click **Update Printer List** on the form toolbar.

To view the list of print jobs for DeviceHub, you use the [Print Jobs](../UserGuide/SM_20_65_00.md) \(SM206500\) form. On this form, you can specify a date range, select a print job in the list, and click **Preview** to view the document to be printed. You can also select the unlabeled check box in the line with any number of print jobs and click **Reprint** to restart each selected print job. Before you click this button, in the **Printer** column, you can select a different printer for any job to be processed.

In the **Status** column on the [Print Jobs](../UserGuide/SM_20_65_00.md) form, you can view the current status of the job. To view the processed jobs as well as those that have not yet been processed, you clear the **Hide Processed** check box in the Selection area.

## Print Queue Management { .section}

You can use the [Manage Print Queue](../UserGuide/SM_20_65_01.md) \(SM206501\) form to manage DeviceHub print jobs. On this form, you select an option in the **Action** box. You can select one of the following options:

-   *Delete*: The system deletes the selected print jobs.
-   *Reprint*: The system resends the selected print jobs to DeviceHub.
-   *Update Print Jobs*: The system updates the values in the **DeviceHub ID** and **Printer** table columns based on the values in the **Change DeviceHub To** and **Change Printer To** boxes in the Selection area.

Next, you select the unlabeled check box in the row of each print job you want to process. When you click **Process**, the system applies this action to the selected print jobs. You can also click **Process All** to apply the selected action to all print jobs in the table.

You can create an automation schedule to delete print jobs. This operation will help you reduce the amount of unnecessary data in the application database and increase the operational efficiency of printing via DeviceHub. For more information about automation schedules, see [Automated Processing: General Information](../UserGuide/SA_Scheduling_Automated_Processing_GeneralInfo.md).

## Printing Carrier Labels { .section}

Through the use of DeviceHub, a user can print carrier labels by using a specialized label printer, such as a ZPL printer. A carrier label is a shipping label that provides information about the requested delivery. In Acumatica ERP, you obtain the labels when you confirm a shipment with a ship-via code for an external carrier service. When the service returns files with the generated labels, the system attaches them to the lines with packages specified for the shipment on the **Packages** tab of the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form.

When you configure a printer for carrier labels in DeviceHub on the **Printers** tab of the **Configuration** window, you select the **Raw mode \(for use with compatible label printers\)** check box. The raw mode printer always uses a separate API connection. This printer can print files with the ZPL format as well as other formats. The exact list of supported formats depends on your printer's specification.

**Note:** Most carrier services generate labels for shipments with a resolution of 200/203 DPI. To ensure correct printing of shipping labels, it is recommended to specify this resolution in the label printer settings in your operating system.

A user can send print jobs for carrier labels in one of the following ways:

-   By using the [Process Shipments](../UserGuide/SO_50_30_00.md) \(SO503000\) form. On this form, they select *Print Labels* in the **Action** box and click **Process** if they want to print labels only for selected shipments \(those for which the unlabeled check box is selected\) or click **Process All** if they want to print labels for all shipments in the table.
-   By using the [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) \(SO302020\) form. On this form, the user clicks the **User Settings** button on the form toolbar and selects the **Print Shipment Labels Automatically** check box in the **Settings** dialog box. When the user processes and confirms a shipment that includes a carrier label, the system will automatically create a print job.
-   
**Parent topic:**[Configuring Printers](../ImplementationGuide/Config_Printers_DeviceHub_Mapref.md)

