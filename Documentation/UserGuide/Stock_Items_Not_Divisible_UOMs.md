# Stock Items: Units of Measure That Are Not Divisible {#_077d419b-96c6-46be-aee4-f697b3b4927d .concept}

For stock items, you can configure units of measure \(UOMs\) for items that can be measured only in integer quantities, as described in the following sections. Defining of UOMs that are not divisible helps to eliminate errors in inventory, sales, and purchase documents.

## Units of Measure That Are Not Divisible { .section}

To specify that a UOM of a stock item is not divisible, you clear the **Divisible Unit** check box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\). If the *Multiple Units of Measure* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can manage the value of this check box for base, sales, and purchase UOMs of the stock item separately.

Users can add decimal quantities of the item to inventory, sales, and purchase documents when the check box is selected for all three UOMs \(if the *Multiple Units of Measure* feature is enabled\) or for the base UOM \(if the *Multiple Units of Measure* feature is disabled\).

## Base UOMs That Are Not Divisible { .section}

For a stock item, when the **Divisible Unit** check box is cleared on the [Stock Items](IN_20_25_00.md) \(IN202500\) form for the base UOM, users can specify only integer quantities of this item in the base UOM in the following documents:

-   Inventory documents \(issues, receipts, transfers, and adjustments\)
-   Shipments
-   SO invoices
-   Purchase receipts

The system validates the quantities in these documents, making sure that they are integers, anddisplays an error message if they are not. A document with decimal quantities cannot be saved until the user corrects the quantity.

When a user attempts to create a shipment from a sales order in which stock item quantities are specified in non-base UOMs and the base UOM is not divisible, the system converts these UOMs to the base UOM and checks whether each quantity is an integer. If a quantity is not an integer, an error message is displayed, and the shipment is not created or is created on hold, depending on the state of the **Hold Shipments on Entry** check box specified on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

When a user attempts to create a receipt for a purchase order and the base UOM is not divisible, the system checks whether each quantity in the base UOM is an integer \(in the same way as it does for shipments\). If a quantity is not an integer, an error message is displayed, and the receipt is created with the *On Hold* or *Balanced* status, depending on the state of the **Hold Receipts On Entry** check box specified on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

The system performs validation of quantities in base UOMs on the following forms:

-   [Adjustments](IN_30_30_00.md) \(IN303000\)
-   [Issues](IN_30_20_00.md) \(IN302000\)
-   [Receipts](IN_30_10_00.md) \(IN301000\)
-   [Transfers](IN_30_40_00.md) \(IN304000\)
-   [Kit Assembly](IN_30_70_00.md) \(IN307000\)
-   [Kit Specifications](IN_20_95_00.md) \(IN209500\)
-   [Shipments](SO_30_20_00.md) \(SO302000\)
-   [Purchase Receipts](PO_30_20_00.md) \(PO302000\)

## Sales UOMs That Are Not Divisible { .section}

For a stock item, when the **Divisible Unit** check box is cleared on the [Stock Items](IN_20_25_00.md) \(IN202500\) form for the sales UOM, users can specify only integer quantities of the item in the sales UOM in sales orders, shipments, and SO invoices. If the item can be sold in other UOMs, the system validates the quantity of each item converted to the sales UOM to be sure that it is an integer.

For drop-ship sales, the system does not validate each item quantity to be sure that it is an integer if the **Divisible Unit** check box is cleared for any of the UOMs.

The system performs validation of quantities in sales UOMs on the following forms:

-   [Invoices](SO_30_30_00.md) \(SO303000\)
-   [Sales Orders](SO_30_10_00.md) \(SO301000\)
-   [Shipments](SO_30_20_00.md) \(SO302000\)

As an example of the use of a sales UOM that is not divisible, suppose that an organization sells lemonade wholesale by boxes of 10 bottles. Sales managers cannot sell less than a box of lemonade \(even if they specify the quantity in bottles when entering a sales order\). Suppose also that on the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the sales UOM for lemonade is *BOX10* and the **Divisible Unit** check box for this UOM is cleared. Further suppose that a sales manager has received an order from a customer for 15 bottles of lemonade. The manager creates a sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and adds 1.5 boxes of lemonade to the document. The system displays an error message, and the sales manager cannot save this sales order without specifying a quantity that is an integer.

## Purchase UOMs That Are Not Divisible { .section}

For a stock item, when the **Divisible Unit** check box is cleared on the [Stock Items](IN_20_25_00.md) \(IN202500\) form for the purchase UOM, users can specify only integer quantities of the item in the purchase UOM in purchase orders and receipts. If the item can be purchased in other UOMs, the system does not validate the quantity of the item converted to the purchase UOM to be sure that it is an integer.

The system performs validation of quantities in purchase UOMs on the following forms:

-   [Purchase Orders](PO_30_10_00.md) \(PO301000\)
-   [Purchase Receipts](PO_30_20_00.md) \(PO302000\)

**Parent topic:**[Creating Stock Items](../UserGuide/Stock_Items_Mapref.md)

