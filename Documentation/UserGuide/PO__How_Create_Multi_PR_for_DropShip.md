# To Create a Consolidated Purchase Receipt for Drop-Ship Orders {#_2d299f24-cc40-4c83-b315-3cb90f219d64 .task}

You can create a consolidated purchase receipt for multiple drop-ship purchase orders of the same vendor by using the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

## To Create a Consolidated Purchase Receipt for a Drop-Ship Order { .section}

1.  Open the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.
2.  Select *Receipt* as the document type.
3.  Select the vendor that has delivered the goods or services to the customers.
4.  On the table toolbar of the **Details** tab, click **Add PO**.

    The **Add Purchase Order** dialog box opens with the list of the vendor's open purchase orders.

5.  In the **Type** box of the dialog box, select *Drop-Ship*.
6.  Select the unlabeled check boxes in the rows of the drop-ship purchase orders you want to add to the receipt.
7.  Click **Add &amp; Close** to add the lines of the selected orders to the receipt and close the dialog box.
8.  On the **Details** tab, for each line with an item that is tracked by lot or serial numbers and for which the **Required for Drop-Ship** check box is selected on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, click **Allocations** on the table toolbar, and assign the lot numbers to specific quantities or the serial numbers to particular units of the item.

    **Attention:** The system ignores the assignment method of the lot or serial class for items on drop-ship orders and, by default, requires assignment in the purchase receipt.

9.  If the **Control Qty.** box appears in the Summary area of the form, type the control total.
10. Make sure the **Hold** check box is cleared, and save the receipt.

**Parent topic:**[Processing Sales with Drop Shipping](../UserGuide/OrderMgmt_Drop_Shipment_Sale_Mapref.md)

