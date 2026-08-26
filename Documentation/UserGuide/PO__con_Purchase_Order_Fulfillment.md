# Purchase Order Fulfillment {#_b4be9795-981a-4c5c-8016-4236d4138c44 .concept}

By using the Purchase Orders module of Acumatica ERP, you can gauge how promptly and completely vendors fulfill the purchase orders. As you create purchase receipts and link them to purchase orders, you can track how the purchase orders are fulfilled.

## Linking Multiple Purchase Receipts to One Purchase Order { .section}

Based on the availability and delivery dates of purchased goods, there may be multiple purchase receipts to fulfill a single purchase order—for example, when the vendor ships the ordered goods in several different lots. In Acumatica ERP, each purchase order can be linked with multiple purchase receipts or a single receipt, based on how you actually receive the goods.

You can create a purchase receipt for the vendor that has supplied the ordered goods by using the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form and link a purchase receipt to purchase orders of the *Normal* or *Drop-Ship* types—you can add entire purchase orders to the receipt by using the **Add Purchase Order Line** action on the table toolbar, or you can copy separate lines from different purchase orders by using the **Add Purchase Order Line** action. If this is a partial receipt of the ordered items and more item quantities are expected, clear the **Complete PO Line** check box for the relevant purchase receipt lines.

## Completing an Order Line { .section}

You can configure the system to take a specific action \(*Accept but Warn*, *Accept*, or *Reject*\) if the quantity of the items received from a particular vendor on a receipt is outside the limits specified for this vendor on the **Purchase Settings** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form. You can specify the minimum and the maximum receipt percents. These settings of the vendor provide the default values for the same-name settings on all purchase orders created for this vendor. On any order, the user can change these values if needed.

With the *Reject* action selected on a purchase order line, a receipt cannot be saved if any line item quantity is greater than the maximum receipt quantity or less than the minimum receipt quantity \(the minimum and maximum receipt quantities are calculated based on the line's ordered quantity and **Max. Receipt \(%\)** and **Min. Receipt \(%\)**, respectively\).

With the *Accept but Warn*, or *Accept* action selected, any partial quantities can be accepted. On each subsequent receipt, the system checks whether the order line has been completed by comparing the total received and the threshold quantities.

In addition to the **Min. Receipt \(%\)** and **Max. Receipt \(%\)** values, you can specify the **Receipt Threshold \(%\)** value for the vendor on the [Vendors](AP_30_30_00.md) form. The threshold percent will provide the default value for the **Complete at** setting for purchase orders of the vendor and will be used as follows: Once the total received quantity is equal to or greater than the threshold quantity, the order line will be automatically completed.

**Note:**

When creating a new receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, you can manually complete a line of the linked purchase order by selecting the **Complete PO Line** check box on the line of the purchase receipt.

## Tracking the Open Quantity and Balance { .section}

To check on the fulfillment of a purchase order, users can consult the [Purchase Orders](PO_30_10_00.md) form, where the system automatically keeps data up to date as receipts are entered. When some purchased goods have not been delivered, the system tracks the open quantity and open balance, which can be found on the **Other** tab of the form. The open quantity is calculated as the difference between the quantity of ordered goods and the quantity of received goods on this purchase order \(for purchase orders having the *Normal* or *Drop-Ship* type\) or as the quantity of the ordered goods and the received quantities on the *Normal* type orders that are linked to this purchase order \(for *Blanket* and *Standard* purchase orders if the *Blanket and Standard Purchase Orders* feature is enabled in your system\). The open balance is calculated as the difference between the total amount of the ordered items and the amount of the received items \(included in purchase receipts linked to the purchase order\).

When the open quantity and open balance values are calculated, only released receipt documents are taken into account.

## Closing a Purchase Order { .section}

Once you have received all ordered items, the relevant lines of the purchase order are completed and the **Completed** check box is selected for the lines. A purchase order does not receive the *Closed* status until all its lines are completed. When all ordered goods have been received on the purchase order \(and, thus, all lines are completed\), the system changes the purchase order's status to *Closed*. To manually complete the purchase order lines, you can select the **Completed** check box on the **Document Details** tab of the [Purchase Orders](PO_30_10_00.md) form.

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

