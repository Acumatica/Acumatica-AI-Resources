# Purchases of Stock Items: Linking Documents {#_d8827f19-0aca-4f2b-ba76-43ef12f8c953 .concept}

The following sections describe how you can establish connection between purchase documents and related finance documents.

## Linking Accounts Payable Bills to Purchase Documents { .section}

When you process a purchase of stock items by using the purchase order or purchase receipt as a starting point, the AP bills generated based on these documents are automatically linked to the related purchase documents. However, in some organizations, AP bills could be imported from a third-party application, or bills received from the vendors could be entered manually on the [Bills and Adjustments](AP_30_10_00.md) \(AP302000\) form, thus they would contain no reference to the purchase documents. To correctly track the order fulfillment and the relationships between documents in the system, lines with stock items in independently created bills must be linked to purchase orders or purchase receipts.

Stock and non-stock items may be listed in a bill. When you add a stock item to a bill, the system displays a message that warns you that the line must be linked to a purchase receipt before the bill can be released. On the [Bills and Adjustments](AP_30_10_00.md) form, you must link each line of a bill with a stock item to a line of a released purchase receipt. If the bill includes non-stock items, you also may link the lines with non-stock items to the lines of released purchase receipts or open purchase orders, depending on the type of non-stock items.

## Linking Purchase Receipts and Purchase Orders { .section}

When you receive purchases from a single vendor and create a new purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, you can add an entire purchase order, multiple purchase orders, or particular purchase order lines to this receipt. The lines that can be added to a purchase receipt depend on the line types of these lines and on particular system settings. Purchase receipts can be linked to only normal or drop-ship purchase orders.

**Parent topic:**[Processing Purchases of Stock Items](../UserGuide/OrderMgmt_Standard_Inventory_Purchase_Mapref.md)

