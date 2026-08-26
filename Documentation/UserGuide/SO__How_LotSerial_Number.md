# To Specify Lot or Serial Numbers for Ordered Items {#_5fb3b992-6ac0-42ca-82d9-a316ebff8a91 .task}

If you need to specify lot numbers or serial numbers for the items in a particular order, you can do this on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, as described in the instructions below.

## To Specify Lot or Serial Number For the Ordered Items { .section}

1.  Open the [Sales Orders](../Shared/../UserGuide/SO_30_10_00.md) \(SO301000\) form.
2.  In the **Order Type** box of the Summary area, select the order type of the order for which you want to specify lot or serial numbers.
3.  In the **Order Nbr.** box, select the reference number of the needed order.
4.  For each item for which lot or serial numbers should be specified, perform the following steps:
    1.  On the **Details** tab, click the order line with the item, and click **Line Details** on the table toolbar.
    2.  In the **Line Details** dialog box, which opens, to specify particular lot or serial numbers for the item in the allocation line, in the **Lot/Serial Nbr.** column, select one of the lot or serial numbers available in the allocation warehouse. The line quantity changes to *1* if the item has serial numbers, or to the lot quantity if the item has lot numbers; the system adds a new line for the remaining quantity. In the new line, select another serial or lot number. Repeat this step until the remaining quantity is zero.
    3.  Click **OK** to save your changes and close the dialog box.

**Attention:** You can specify lot and serial numbers for items only if the *Lot and Serial Tracking* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Parent topic:**[Processing Sales of Stock Items](../UserGuide/OrderMgmt_Sale_of_Stock_Items_Mapref.md)

