# To Reserve an Inventory Item for an Order {#_8edb651c-8956-4506-96f3-c2ee4ad4952c .task}

If some of the specific items require reservation \(allocation\) for the order, you can reserve them on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, as described in the following instructions.

## To Reserve an Inventory Item in an Order { .section}

1.  Open the [Sales Orders](../Shared/../UserGuide/SO_30_10_00.md) \(SO301000\) form.
2.  In the **Order Type** box, select the order type of the order for which you want to allocate items.
3.  In the **Order Nbr.** box, select the reference number of the needed order.
4.  On the **Details** tab, for each item whose quantities should be reserved in the source warehouse, perform the following steps:
    1.  Click the order line with the needed item, and click **Line Details** on the table toolbar.
    2.  In the **Line Details** dialog box, which opens, select the **Allocated** check box for the allocation line. If the full quantity is not available in the source warehouse, the system replaces the quantity in the line with the available quantity and adds one more line for the remaining quantity.
    3.  For the additional line \(if added\), select the check box in the **Line Details** column. In the **Alloc. Warehouse** column, select the source warehouse from the list of warehouses. If the item quantity available in this warehouse \(**Quantity**\) is less than the remaining quantity, the system adds one more allocation line with the remaining quantity; if it does, either adjust the requested quantity or continue reserving item quantities in other warehouses.
    4.  Click **OK** to save the created allocations and close the dialog box.

## Notes About the Procedure { .section}

Note the following about reserving an inventory item for an order:

-   The functionality of stock allocation \(reservation\) is available only if any of the following features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form: *Multiple Warehouses*, *Sales Order to Purchase Order Link*, or *Lot and Serial Tracking* or *Inventory Subitems*.

    **Important:** The **Inventory Subitems** check box has been removed from the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form because the functionality associated with the *Inventory Subitems* feature will be phased out. If you have this feature enabled in your system, the associated functionality remains available. To disable the feature, contact your Acumatica support provider.

-   If your order requires any transfers, you will need to create and process transfer orders.
-   Non-stock items cannot be allocated.

**Parent topic:**[Processing Sales of Stock Items](../UserGuide/OrderMgmt_Sale_of_Stock_Items_Mapref.md)

