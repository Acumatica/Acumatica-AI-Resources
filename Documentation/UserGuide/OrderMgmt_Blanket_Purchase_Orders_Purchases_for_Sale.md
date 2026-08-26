# Blanket Purchase Orders: Purchases for Sale {#_a06ce417-6591-48ae-978a-b1bd68ee5ce6 .concept}

You can use a blanket purchase order while processing a purchase for sale in order to purchase items that are not in stock and will be sold to a customer. On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you create a sales order, add a line with the item on the **Details** tab, select the **Mark for PO** check box for this line, and select *Blanket for Normal* or *Blanket for Drop-Ship* in the **PO Source** column, depending on the needed order type. Then on the **Details** tab, you link a blanket purchase order with the sales order by clicking **PO Link** on the table toolbar, and in the **Purchasing Details** dialog box, which opens, clicking the line with the needed blanket purchase order and clicking **Save**. After linking a sales order with a blanket purchase order you can generate a purchase order \(of the *Normal* or *Drop-Ship* type\) for the sales order by clicking **Create Purchase Orders** on the More menu and processing the purchase request on the [Create Purchase Orders](PO_50_50_00.md) \(PO505000\) form.

Depending on the option selected in the **PO Source** column of a sales order line, in the **Purchasing Details** dialog box, the system makes available for selection the following purchase orders of the *Blanket* type:

-   If *Blanket for Normal* is selected, the purchase orders of the *Blanket* type with the *Open* status.
-   If *Blanket for Drop-Ship* is selected, the purchase orders of the *Blanket* type with the *Open* status in which the quantity of the purchase order line is greater than or equal to the quantity of the sales order line.

When you generate a child order for a blanket purchase order on the [Create Purchase Orders](PO_50_50_00.md) \(PO505000\) form, the option in the **PO Source** column of the [Sales Orders](SO_30_10_00.md) form in the related sales order line is changed from *Blanket for Normal* to *Purchase to Order* or from *Blanket for Drop-Ship* to *Drop-Ship*. Also, for the line of the sales order that is marked for drop shipping, the system inserts the reference number of the child order into the **Drop-Ship PO Nbr.** column. If you create a normal or drop-ship purchase order manually on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form and link it to the blanket purchase order by using the **Add Purchase Order Line** dialog box on the same form, the values in the **PO Source** and **Drop-Ship PO Nbr.** columns do not change in the sales order lines.

For details about the purchases for sales process, see [Purchases for Sale: General Information](OrderMgmt_Purchase_for_Sale_GeneralInfo.md).

**Parent topic:**[Processing Blanket Purchase Orders](../UserGuide/OrderMgmt_Blanket_Purchase_Orders_Mapref.md)

