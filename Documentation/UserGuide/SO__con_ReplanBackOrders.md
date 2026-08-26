# Back Ordering and Replanning Back Orders {#_81764df1-a986-4103-ad65-11bfc385cf30 .concept}

This topic explains when the system back-orders a sales order and how to replan a back order to process it further.

## Completing Sales Orders Lines on Shipping { .section}

Lines with stock and non-stock items that require shipping are completed based on the item quantity in the shipments prepared for the sales order. When you confirm a shipment of the full open quantity of an order line, the **Completed** check box becomes selected in the order line. Non-stock lines that do not require shipping are completed by the prepared invoice. After all lines have been completed, the order is assigned the *Completed* status.

When you confirm a partial shipment, if an open *Ship Complete* line or an incomplete *Back Order Allowed* line remains in the order, the remaining open quantity of the line becomes classified to the *SO Back Ordered* allocation type, and the sales order is assigned the *Back Order* status. The open quantities of *Cancel Remainder* lines are set to zero and the **Completed** check box is selected for the lines.

Sales order lines that require shipping but cannot be shipped at the moment are assigned the *SO Back Ordered* allocation type if shipment creation has failed for them. For an individual sales order with the *Back Order* status, you can create a shipment directly from the [Sales Orders](SO_30_10_00.md) \(SO301000\) form without replanning the order once the quantities of the items become above zero. To be able to mass-prepare shipments for back orders by using the *Create Shipment* action on the [Process Orders](SO_50_10_00.md) \(SO501000\) form, you need to replan the back orders.

## Automatic Replanning of Back Orders { .section}

Replanning of a back order is a process that moves the ordered items with the *SO Back Ordered* allocation type to the *SO Booked* allocation type so that the back order can be shipped. You can make the system auto-replan back orders by selecting the **Replan Back-Orders** check box on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form. If this check box is selected, the system automatically replans back orders on release of every inventory transaction that increases the inventory on hand \(inventory receipt, inventory transfer, or positive inventory adjustment\). The system performs the replanning process for the items that are involved in the released inventory transactions.

## Manual Replanning of Back Orders { .section}

If automatic replanning is switched off— that is, if the **Replan Back-Orders** check box is cleared on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form— you can run the manual replanning process for the needed inventory items from the [Recalculate Inventory](IN_50_50_00.md) \(IN505000\) form with the **Replan Back Orders** check box selected. Also, you can configure a schedule to run the process on that form at an appropriate interval, such as once a day.

## Back Order Replanning Process { .section}

When automatic replanning is in process, for each inventory item being processed, the system selects the *SO Booked* and *SO Back Ordered* lines of open sales orders. The selected lines are sorted by **Ship On** date \(starting from the earliest one\), allocation type \(*SO Booked* lines are organized before *SO Back Ordered* lines\), and line quantity, starting from the greatest quantity. *SO Booked* lines are included in the process to make sure that the units that are booked for orders created earlier are not counted for the fulfillment of back orders created later. The system distributes the quantity available for shipping among the selected lines in their sort order as follows:

1.  The quantities of *SO Booked* lines are subtracted from the quantity available for shipping that can be distributed to the next lines.
2.  If there is some quantity available for shipping that can be distributed to an *SO Back Ordered* line, the system changes the allocation type of the line to *SO Booked*. For lines with the *Ship Complete* shipping rule, the system changes the allocation type to *SO Booked* only if the line quantity can be booked in full.
3.  If the quantity available for shipping is not enough to distribute among all the selected lines, the remaining lines maintain the original *SO Back Ordered* status. Each processed line is replanned in full or not replanned at all \(and never split\) if the quantity that can be booked for the line is less than the line quantity.

**Note:** The system does not reallocate items when it replans back orders. For each replanned back order of an order type that requires allocation—that is, if the **Require Stock Allocation** check box is selected for the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form—you have to manually allocate items before further processing the order.

**Parent topic:**[Processing Partial Shipments](../UserGuide/SO__con_Shipments.md)

