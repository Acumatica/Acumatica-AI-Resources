# To Quickly Process an Order {#_28fe3440-642b-45e1-930d-e38457c0ade4 .task}

If you need to perform quick processing for particular sales order, you can do this by using the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

## To Quickly Process an Order { .section}

1.  Open the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
2.  In the **Order Type** box, select the order type of the order that you want to process.
3.  In the **Order Nbr.** box, select the reference number of the order that you want to process, or create a new order and enter its information.
4.  On the form toolbar, click **Quick Process**.
5.  If the order type requires shipping, in the **Process Order** dialog box, which appears, specify the source warehouse in the **Warehouse ID** box and the **Shipment Date**. Check the availability message that indicates whether all ordered items are available.
6.  Optional: In the **Printing Settings** section, modify the printing settings, if required
7.  Optional: Modify the processing steps in the **Shipping** and **Invoicing** sections, if required.
8.  Click **OK** to close the dialog box and run processing of the order.

## Notes About the Procedure { .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the steps in this procedure:

-   If the **Quick Process** button is not shown on the toolbar of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, this means that quick processing has not been configured for the selected order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form.
-   The default processing steps are copied from the settings of the order type, which have been specified on the **Quick Processing** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form.
-   When quick processing runs, the system shows processing steps and links to prepared documents and printable forms in the **Processing Results** window in real-time mode.
-   The **Shipping** section appears in the **Process Order** dialog box for orders of the order type that have the **Process Shipments** check box selected in the **Template** of the [Order Types](SO_20_10_00.md) \(SO201000\) form.
-   The **Invoicing** section appears in the **Process Order** dialog box for orders of the order types that have the **AR Document Type** set to *Invoice*, *Debit Memo*, *Credit Memo*, *Cash Sale*, or *Cash Return* on the **Template** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form.
-   The **Printing Settings** section appears in the **Process Order** dialog box only if the *DeviceHub* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form and if any of the printing actions is selected to be performed during quick processing.

For details about setting up quick processing of sales orders, see [Sales Order Types: Quick Processing of Sales Orders](../ImplementationGuide/config_Sales_Order_Types_Quick_Process_Workflow.md).

**Parent topic:**[Processing Sales of Stock Items](../UserGuide/OrderMgmt_Sale_of_Stock_Items_Mapref.md)

