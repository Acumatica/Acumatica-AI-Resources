# Drop-Ship Purchase Orders {#_e370dff1-90b1-4faa-bf2a-04de928e9d1d .concept}

Drop-ship purchase orders are used for goods that will be delivered directly from the vendor to the customer that ordered the goods from your company. These goods are not received in the inventory at your company. Orders of this type are available only if the *Drop Shipments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

To create a drop-ship purchase order, you create a new purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form and select the *Drop-Ship* type. If there are sales orders for the items your company plans to purchase from the vendor, you can create a drop-ship order by using the [Create Purchase Orders](PO_50_50_00.md) \(PO505000\) form. Once you select an item and a vendor for a new drop-ship order, sales orders \(if they include a line with the selected inventory item that has the **Mark for PO** check box selected\) are available for selection and can be added as document lines on the [Create Purchase Orders](PO_50_50_00.md) form. For details, see [Sales with Drop Shipping: General Information](OrderMgmt_Drop_Shipment_Sale_GeneralInfo.md). You can also add lines with the *Service* line type to drop-ship purchase orders to record extra charges without generating another invoice for the customer.

## Processing Different Line Types in Drop-Ship Orders { .section}

Drop-ship orders can include lines of different types. The type a particular line has depends on the settings of the item selected in the **Inventory ID** box; the system processes lines of different types in different ways. The following line types are available in drop-ship orders:

-   *Goods for Drop-Ship*: The system assigns this line type to all stock items. Lines of this type are copied to purchase receipts, where each *Goods for Drop-Ship* line must be linked to a sales order document. For more information, see [Sales with Drop Shipping: General Information](OrderMgmt_Drop_Shipment_Sale_GeneralInfo.md).
-   *Non-Stock for Drop-Ship*: The system assigns this line type to non-stock items that have both the **Require Receipt** and **Require Shipment** check boxes selected on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. Lines of this type are copied to purchase receipts, where each *Non-Stock for Drop-Ship* line must be linked to a sales order document.
-   *Non-Stock*: The system assigns this line type to non-stock items that have the **Require Receipt** check box selected and the **Require Shipment** check box cleared on the [Non-Stock Items](IN_20_20_00.md) form. The *Non-Stock* lines are copied to purchase receipts and do not need to be linked to a sales order document.
-   *Service*: The system assigns this line type to non-stock items that have the **Require Receipt** check box cleared on the [Non-Stock Items](IN_20_20_00.md) form, and to lines in which no **Inventory ID** is specified. The way the system processes *Service* lines in drop-ship orders depends on whether the **Process Service Lines from Drop-Ship Purchase Orders via Purchase Receipt** check box is selected on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. For more details, see the next section.
-   *Freight*: You can add a line without an **Inventory ID** specified and select this line type manually to record freight expenses for the order. Lines of this type are copied to purchase receipt, or could be added directly to purchase receipt, and do not need to be linked to a sales order document. The freight amount is posted to the Freight Expense account and subaccount specified on the [Purchase Orders Preferences](PO_10_10_00.md) form.
-   *Description*: You can add a line without an **Inventory ID** specified and select this line type manually. These lines are used for informational purposes. Lines of this type are not copied to purchase receipts.

**Note:** Kits cannot be drop-shipped, because they are manufactured in your company.

## Processing Service Lines in Drop-Ship Orders { .section}

Depending on your business processes, you can select which workflow the system should use for processing *Service* lines. You select the needed workflow by using the **Process Service Lines from Drop-Ship Purchase Orders via Purchase Receipt** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form as follows:

-   If the check box is selected, you can process *Service* lines through purchase receipts: When you create a purchase receipt for the drop-ship purchase order, the non-stock lines of the *Service* type that haven't been billed to the vendor yet are copied to the created purchase receipt. You cannot create an Accounts Payable bill for the *Service* lines for which the purchase receipt has not been created yet. Also, you can add lines of the *Service* type directly to purchase receipts without linking them to a purchase order and sales order.

    This setting gives you the ability to handle charges added by vendors of drop-ship orders when their goods are delivered to the customer. Your company will absorb these charges without again billing the customer for them.

-   If the check box is cleared \(the default setting\), processing *Service* lines doesn't involve creating a purchase receipt an Accounts Payable bill \(or multiple bills\) has to be created directly from the drop-ship order. These lines do not have to be linked to a sales order.

    **Note:** When you create a purchase receipt for a purchase order with lines of different types, the system does not copy *Service* lines to a purchase receipt prepared from a purchase order. Also, *Service* lines cannot be added to the purchase receipt manually.


## Approving Drop-Ship Purchase Orders { .section}

Depending on the order processing flows established in your company, you use the [Approvals](EP_50_30_10.md) \(EP503010\) form to approve drop-ship purchase orders and the [Print/Email Purchase Orders](PO_50_30_00.md) \(PO503000\) form to email them to vendors or to print them for sending by mail. Optionally, the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form can be used by the users involved in this processing because the More menu includes the **Approve**, **Email Purchase Order**, and **Print Purchase Order** menu commands.

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

