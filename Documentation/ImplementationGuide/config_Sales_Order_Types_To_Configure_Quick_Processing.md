# Sales Order Types: To Configure Quick Processing for an Order Type {#_f8034131-f30b-4254-9908-e9041cdad452 .task}

In Acumatica ERP, you can simplify multistep processing of orders of a particular order type by configuring quick processing for this order type on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.

## To Configure Quick Processing for an Order Type { .section}

1.  Open the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.
2.  In the **Order Type** box, select the identifier of the order type for which you want to allow quick processing.
3.  On the **Template** tab, select the **Allow Quick Process** check box.
4.  On the **Quick Processing** tab, which appears, do the following to specify the settings that determine which steps the system will perform when a user is quick processing an order of this type:
    -   In the **Shipping** section \(if applicable for this order type\):
        -   Select the **Print Pick List** check box if the system must print a pick list for a shipment associated with the order.
        -   Select the **Confirm Shipment** check box if the system must confirm a shipment associated with the order.
        -   Select the **Print Labels** check box if the system must print labels for a shipment associated with the order.
        -   Select the **Print Shipment Confirmation** check box if the system must print a shipment confirmation for a shipment prepared for the order.
        -   Select the **Update IN** check box if the system must update item availability information in the Inventory module.
    -   In the **Invoicing** section \(if applicable for this order type\):
        -   Select the **Prepare Invoice** check box if the system must prepare a Sales Orders invoice.
        -   Select the **Print Invoice** check box if the system must print the prepared Sales Orders invoice.
        -   Select the **Email Invoice** check box if the system must send the prepared Sales Orders invoice to customer by email.
        -   Select the **Release Invoice** check box if the system must release the prepared Sales Orders invoice.
    -   In the **Printing Settings** section:
        -   Select the **Print with DeviceHub** check box if the system must generate a preview and print all selected documents by using the DeviceHub application.
        -   Select the **Define Printers Manually** check box, and specify the printer in the **Printer** box if the orders of this type should be printed on a particular printer. \(If the check box is cleared, the system selects the printer automatically.\)
5.  Select the **Open All Created Documents in New Tabs** check box if you want the prepared documents to be automatically opened in new browser tabs after quick processing completes.
6.  Optional: Select the **Download All Created Printable Documents** if you want to automatically download the prepared printable forms when a user opens the browser tabs after quick processing completes.

## Notes About the Procedure { .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the settings on the **Quick Processing** tab:

-   The **Shipping** section appears for the order types that have the **Process Shipments** check box selected on the **Template** tab.
-   The **Invoicing** section appears or any order types that have the **AR Document Type** on the **Template** tab set to *Invoice*, *Debit Memo*, *Credit Memo*, *Cash Sale*, or *Cash Return*.
-   The **Download All Created Printable Documents** check box is available for selection only if the **Open All Created Documents in New Tabs** check box is selected.
-   The **Printing Settings** section appears only if the *DeviceHub* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, and any of the following check boxes is selected on this tab: **Print Pick List**, **Print Labels**, **Print Shipment Confirmation**, and **Print Invoice**.

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

