# Direct Sales: Direct Sale with a Link to the Related Sales Order {#_dc04bfef-b510-4307-b2c4-d2bc401a1608 .concept}

The customer may want to pick up in the retail store all or a part of items included in a sales order that has been added to the system based on a phone or online sale. In this case, you need to process a direct sale through the POS system with a link to the related sales order to record in the system that some of the items from the order have been taken by the customer.

To process a direct sale, you create a sales invoice on the [Invoices](https://help-2019r2.acumatica.com/(W(2))/Wiki/ShowWiki.aspx?wikiname=HelpRoot_FormReference&PageID=0acc9738-f141-4ea0-a2be-f34ea9d1b63a) \(SO303000\) form. If the customer is picking up items as recorded in a sales order that has already been added to the system, you can add a sales line in a direct sale document that you create on the [Invoices](SO_30_30_00.md) form with a link to this sales order.

## Linking a Direct Sale Line to a Sales Order { .section}

To add a line \(or multiple lines\) linked to a sales order, you click the **Add SO Line** button on the table toolbar of the **Details** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form. In the dialog box that opens, you select the line or lines of one or multiple open sales orders to be added to the sales invoice. The details of the added line or lines are filled in automatically by the system and are not available for editing. The reference number of the sales order to which a line is linked is shown in the **Order Nbr.** column of the line.

If a line of the sales invoice is linked to an open line of a sales order, on release of the sales invoice, on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the system updates the shipped quantity of the sales order line by the quantity specified in the invoice line. \(Thus, the released sales invoice functions as a shipment does for the linked sales order line.\) Also, on the **Shipments** tab of this form, the system inserts the reference number of the sales invoice in the **Shipment Nbr.** box.

**Parent topic:**[Processing Direct Sales](../UserGuide/OrderMgmt_Direct_Sales_Mapref.md)

