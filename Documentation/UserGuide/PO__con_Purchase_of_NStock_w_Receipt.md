# Non-Stock Lines in Purchase Orders {#_66095176-02af-4da0-b2b8-bde0967dacfe .concept}

For each non-stock item, you define whether a purchase receipt is required by selecting or clearing the **Require Receipt** check box on the **General** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. This setting affects the processing of non-stock items that are included in purchase orders. In a purchase order line on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, when you select a non-stock item that requires a purchase receipt, the system inserts *Non-Stock* as the line type.

Processing a purchase order with *Non-Stock* lines always involves creating a receipt \(or multiple receipts if the ordered items are not delivered at the same time\). When you create a purchase receipt for a purchase order, the system copies all *Non-Stock* lines to the purchase receipt.

This topic describes how the system processes purchase order lines for non-stock items requiring a purchase receipt.

## Processing of the Accounts Payable Bill for the Purchase Order { .section}

The general workflow of processing purchase orders with lines of any type is to process the associated purchase receipt \(if one is needed\) before the creation of the associated AP bill \(see [Purchases of Stock Items: General Information](OrderMgmt_Standard_Inventory_Purchase_GeneralInfo.md) for details\). However, if you receive bills from a particular vendor before the purchased items are received to inventory, you can configure this vendor so that for its purchase orders, you can create and process an AP bill before the purchase receipt is released.

To do this, you need to select the **Allow AP Bill Before Receipt** check box in the vendor settings on the [Vendors](AP_30_30_00.md) \(AP303000\) form; in addition, you can select this check box for a particular vendor location on the [Vendor Locations](AP_30_30_10.md) \(AP303010\) form. The state of this check box will be copied to each purchase order created to this vendor, and can be reviewed on the **Other** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. For a detailed description on how to process a purchase order with the associated bill being prepared before the receipt, see [Purchases with Billing Before Receipt: General Information](OrderMgmt_Purchase_Bill_Before_Receipt_GeneralInfo.md).

## Posting Accounts for Non-Stock Lines { .section}

For the *Non-Stock* lines on the [Purchase Orders](PO_30_10_00.md) form, in the **Account** column, the system inserts the Expense account defined by the **Use COGS / Expense Account From** setting of the posting class specified on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form. If the *Subaccounts* feature is enabled in your system, in the **Sub.** column of the [Purchase Orders](PO_30_10_00.md) form, the system also inserts the subaccount, which is composed as defined by the rule in the **Combine Expense Sub. From** box on the **General Settings** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.

If the subaccount mask associated with the non-stock item—that is, *I*— is selected in the **Combine Expense Sub. From** box on the [Accounts Payable Preferences](AP_10_10_00.md) form, the subaccount is composed according to the rule which is specified in the **Use COGS / Expense Account From** box on the [Posting Classes](IN_20_60_00.md) form for the posting class of the non-stock item.

Accounts and subaccounts are used for processing *Non-Stock* lines as follows:

-   When an inventory receipt linked to the purchase receipt is released, the Expense account \(with the Expense subaccount\) is debited for the line amount and the PO Accrual account \(with the PO Accrual subaccount\) is credited for the same amount.
-   When a bill is released for the purchase receipt, the PO Accrual account \(with the PO Accrual subaccount\) is debited for the line amount and the Accounts Payable account \(with the Accounts Payable subaccount\) is credited for the same amount.

The PO Accrual account to be used for receipt-related transactions is defined by the posting class of the item on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form; the default account assigned to the item on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) form will be used if the posting class's **Use PO Accrual Account From** settings have the *Inventory Item* option selected. The PO Accrual subaccount is also defined by the settings of the posting class of the item; the default subaccounts assigned to the item on the**GL Accounts** tab will be used as the segment value sources for the resulting subaccount based on the **Combine PO Accrual Sub From** rule. For more information, see [Posting Classes: General Information](Posting_Classes_GeneralInfo.md).

## Rules for Closing and Completing Non-Stock Lines { .section}

The way the lines of the *Non-Stock* type are completed and closed depends on the completion rule specified for the applicable non-stock item in the **Close PO Line** box on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. The system determines if a line of the *Non-Stock* type should be closed and completed by using the following rules:

-   If *By Quantity* is selected in the **Close PO Line** box for the item \(the default option for non-stock items of the *Non-Stock Item* type\), the purchase order line is considered completed in either of the following cases:

    -   If the sum of the received quantity for the released purchase receipts prepared for the line is equal to or greater than the quantity of the purchase order line \* \(**Complete On %**/100\)
    -   On release of the purchase receipt prepared for the line if the user has selected the **Completed** check box manually
    With the *By Quantity* completion rule selected for the item, the line is considered closed on release of the purchase receipt or AP bill if the sum of the received quantity for all released purchase receipts prepared for this line is equal to the line quantity in all released AP bills prepared for this line, and the quantity in the AP bill lines is equal to or greater than purchase order line quantity \* \(**Complete On %**/100\). The line is also considered closed on release of the purchase receipt or AP bill if the sum of the received quantity for all released purchase receipts prepared for this line is equal to the line quantity in all released AP bills prepared for this line, and the user has selected the **Completed** check box manually in the purchase receipt line.

-   If *By Amount* is selected in the **Close PO Line** box for the item \(the default option for non-stock items of the *Labor, Service, Charge*, and *Expense* types\), the purchase order line is considered completed in either of the following cases:

    -   Automatically if the system has closed the line \(that is, if the **Closed** check box is selected\)
    -   On release of the purchase receipt prepared for the line if the user has selected the **Completed** check box manually
    With the *By Quantity* completion rule selected for the item, the line is considered closed on release of the purchase receipt or AP bill if the sum of received quantity for all released purchase receipts prepared for this line is equal to the quantity in all released AP bills prepared for this line, and if the amount in the AP bill lines is equal to or greater than the amount of the purchase order line.


If a user processes the lines of a purchase order partially, multiple related purchase receipts and AP bills can be prepared for a single purchase order. The system determines which purchase order lines should be added to the prepared purchase receipt or AP bill depending on the status of the **Completed** and **Closed** check boxes in each line, as follows:

-   Completed purchase order lines are not added to the purchase receipt.
-   Closed lines are added to neither purchase receipts nor AP bills.

If all purchase order lines have the **Completed** check box selected, and at least one line still has the **Closed** check box cleared, the purchase order is assigned the *Completed* status. If all purchase order lines have the **Completed** and **Closed** check boxes selected, the purchase order is assigned the *Closed* status.

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

