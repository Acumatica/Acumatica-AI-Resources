# Sales of Stock Items: Stock Allocation with Multiple UOMs {#_f03af8f5-644d-4788-8533-5868174eea59 .concept}

If the *Multiple Units of Measure* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can specify multiple units of measure \(UOMs\) for a stock item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

During stock allocation, if an item’s sales UOM is not divisible and the ordered quantity is not fully available in the warehouse specified in the line, the system divides the order line’s quantity into an integer quantity in the line's UOM and the remaining quantity in the base UOM.

## Allocation of Stock Items in Multiple UOMs { .section}

In a sales order, when the system partially allocates an item that is either lot tracked or not tracked, it checks the divisibility of the item's sales unit. That is, the system checks the state of the **Divisible Unit** check box right of the **Sales Unit** box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

**Tip:** An item can be lot- or serial-tracked only if the *Lot and Serial Tracking* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For details, see [Items with Lot and Serial Numbers: Tracking Settings](Lot_and_Serial_Numbers_Class_Settings.md).

Suppose that a line has an item quantity on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. This quantity is specified for the item in a non-base UOM with the *Multiply* conversion factor on the [Stock Items](IN_20_25_00.md) form. The **Divisible Unit** check box is cleared for the item's sales UOM. You open the **Line Details** dialog box on the [Sales Orders](SO_30_10_00.md) form and selects the **Allocated** check box in the line split. If the quantity can be allocated only partially, the system does the following:

1.  Changes the quantity in this line split to an integer quantity in the order line's UOM if this quantity is available in a warehouse \(that is, inserts this quantity in the **Quantity** column for the line split\).
2.  If the available quantity in the order line's UOM is not sufficient in the warehouse but a few more item units in the base UOM are available, adds another line split for this quantity. For this line split, the system selects the **Allocated** check box.
3.  For any integer quantity that is not sufficient in the warehouse, adds another line split. For this line split, the **Allocated** check box is cleared.
4.  For the remaining quantity in the base UOM \(the quantity that is not available in the warehouse\), adds another line split. For this line split, the **Allocated** check box is cleared.

**Attention:** The system uses base UOMs in a line split only for allocated quantities—that is, when the **Allocated** check box is manually or automatically selected for the line split in the **Line Details** dialog box of the [Sales Orders](SO_30_10_00.md) form. If items are not allocated and then processed \(for example, if they have been partially shipped\), the system will create line splits in the order line's UOM regardless of the divisibility of the sales UOM.

For a serial-tracked item, the system always splits lines on the [Sales Orders](SO_30_10_00.md) form in the base UOM during the allocation.

**Tip:** You can allocate lot- and serial-tracked items without specifying their lot or serial numbers, respectively.

In an order with a type whose automation behavior is *Blanket Order* on the [Order Types](SO_20_10_00.md) \(SO201000\) form, the system always uses the UOM of the order line when the line is partially allocated and split.

## Processing of a Sales Order with Partially Allocated Quantities { .section}

When you have created the sales order with partially allocated quantities, you create a transfer order on the [Create Transfer Orders](SO_50_90_00.md) \(SO509000\) form to move the allocated items to the needed warehouse. In the transfer order, the system adds the split lines with the UOMs specified in the **Line Details** dialog box of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form for the sales order.

When you create a shipment for the sales order on the [Shipments](SO_30_20_00.md) \(SO302000\) form, the system adds to the shipment the split lines specified in the **Line Details** dialog box of the sales order.

**Attention:** If the UOM in a sales order line is specified as the **Sales UOM** on the [Stock Items](IN_20_25_00.md) \(IN202500\) form and the **Divisible Unit** check box is cleared, you will not be able to create a shipment if the split lines have the base UOM.

On shipment confirmation, the system sums the splits of an order line. When the related sales invoice is created on the [Invoices](SO_30_30_00.md) \(SO303000\) form, the system inserts the lines as follows:

-   If the sum of all line splits is an integer \(that is, it can be fully converted to the order line's UOM\), inserts the order line's UOM in the corresponding line of the sales invoice
-   If the sum of all line splits is not an integer, inserts the base UOM in the invoice line

## Example of Stock Allocation { .section}

Suppose that a company sells computers and accessories, including 1 TB hard drives. It sells hard drives by piece and in boxes of 10 pieces per box. The base and sales units of measure are *EA* \(each\), and a conversion to *BOX10* \(a box of 10 pieces\) is specified in the item's settings on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

Further suppose that a customer orders 40 hard drives. A salesperson creates a sales order for 4 boxes of hard drives. In the retail warehouse, only 25 hard drives are available \(that is, two boxes and five pieces\). The rest of the hard drives are available in the wholesale warehouse. Thus, the salesperson wants to allocate all the available hard drives in the retail warehouse to the order and transfer the remaining hard drives from the wholesale warehouse.

On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the salesperson opens the **Line Details** dialog box for the order line with the hard drives and selects the **Allocated** check box in the line. The system splits the line as follows:

-   Line split 1: A quantity of 2 boxes, which are available and allocated in the warehouse.
-   Line split 2: A quantity of 5 pieces, which are available and allocated in the warehouse.
-   Line split 3: A quantity of 1 box, which is not available. The **Allocated** check box is cleared in the line because the quantity needs to be transferred from another warehouse.
-   Line split 4: A quantity of 5 pieces, which are not available. The **Allocated** check box is cleared in the line because the quantity needs to be transferred from another warehouse.

When all the items are available in the retail warehouse, the shipment has been confirmed, and the sales invoice has been prepared for the order, the sales invoice contains the sum of the splits of the order line.

**Parent topic:**[Processing Sales of Stock Items](../UserGuide/OrderMgmt_Sale_of_Stock_Items_Mapref.md)

