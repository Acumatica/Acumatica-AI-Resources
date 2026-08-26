# To Prepare an Invoice for a Sales Order {#_83557dfa-09a7-4832-9a4a-5c855ceed3c2 .task}

If you need to prepare an invoice for a particular sales order, you can do this from the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

## To Prepare an Invoice for a Sales Order { .section}

1.  Open the [Sales Orders](../Shared/../UserGuide/SO_30_10_00.md) \(SO301000\) form.
2.  In the **Order Type** box of the Summary area, select the order type of the order for which you want to create an invoice.
3.  In the **Order Nbr.** box, select the reference number of the order for which you want to create an invoice.
4.  On the form toolbar, click **Prepare Invoice**.
5.  Review the details of the prepared invoice on the [Invoices](../Shared/../UserGuide/SO_30_30_00.md) \(SO303000\) form, which opens.

## Notes About the Procedure { .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about this procedure:

-   By default, when a user prepares invoices, the system uses the dates of corresponding shipments as invoice date if the **Use Shipment Date for Invoice Date** check box is selected on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form. If you clear this check box, the system will prepare invoices with the current business date.
-   The invoices are created with the *Balanced* status if the **Hold Invoices on Entry** check box is cleared in the settings of the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form. Otherwise, if the check box is selected, the invoices are created with the *On Hold* status.
-   You can mass-prepare invoices for orders by using the *Prepare Invoice* action on the [Process Orders](SO_50_10_00.md) \(SO501000\) form, as described in the [To Create Invoices for Multiple Orders](SO__How_MassCreate_Invoices_SO.md) topic.
-   If a sales order has any lines with the *0* quantity and the order's type has the **Process Shipments** check box selected on the [Order Types](SO_20_10_00.md) form, these order lines are not added to the corresponding shipment and invoice.
-   Sale order lines with the *0* quantity are not listed in the **Add SO Line** dialog box, which a user opens by clicking **Add SO Line** on the table toolbar of the **Details** tab on the [Invoices](SO_30_30_00.md) \(SO303000\) form if the *Advanced SO Invoices* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Parent topic:**[Processing Sales of Stock Items](../UserGuide/OrderMgmt_Sale_of_Stock_Items_Mapref.md)

