# Stock Status of Items: General Information

Acumatica ERP provides the ability to change the stock status of items: You can convert stock items to non-stock items and non-stock items to stock items. This functionality increases the versatility of item-related scenarios.

**Attention:** This functionality is unavailable if at least one of the following features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form: *Manufacturing*, *Time Management*, *Service Management*, or *Payroll*.

## Learning Objectives

In this chapter, you will learn how to do the following:

-   Convert stock items to non-stock items
-   Convert non-stock items to stock items

## Applicable Scenarios

-   A company is going to finish selling a particular stock item in the system. The company isn't going to purchase this item for reselling in the nearest future. The company can issue the retaining quantity from the stock and convert the stock item in the system to a non-stock item to stop tracking the item in the inventory.
-   A company has bought prototypes of several devices. These items are registered as non-stock items in the system. After successful testing of prototypes, the company decides to make a purchase order for a large volume of the devices for further reselling. To be able to track the devices in the inventory, the non-stock items can be converted to stock items.

## Conversion of a Stock Item to a Non-Stock Item

To convert a stock item to a non-stock item, you open the item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form. On the More menu, you click **Convert to Non-Stock Item**. For a stock item to be converted, the following conditions must be met:

-   The item has an on-hand quantity of 0 in all warehouses and locations.
-   If the item is lot- or serial-tracked, it has an on-hand quantity of 0 in all cost layers.
-   All the records that contain the item have been processed to completion.

If all the conditions are met, the system opens the item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. Some settings—such as the tax category, default warehouse, UOMs, price and cost information, and deferrals—are inherited from the stock item settings. When an item class is selected for the non-stock item, the inherited settings aren't replaced with the settings of the new item class; you can change these settings manually. The conversion of the item isn't complete until you save the item on the [Non-Stock Items](IN_20_20_00.md) form.

When the conversion is complete, you can view all the reports related to this item for the periods when it was a stock item. You can also reverse AP bills and sales invoices and reopen sales and purchase orders that contain the item as a stock item. In the reopened order, the lines with the converted item can't be edited.

If you add the converted item to any new documents, the item is processed according to its current stock status.

On release the sales invoice after the conversion, the Cost of Goods Sold \(COGS\) account is copied from the non-stock item settings rather than the order type settings if all of the following conditions are met:

-   The expense account specified in the **Shipped-Not-Invoiced Account** box on the [Order Types](SO_20_10_00.md) \(SO201000\) form was used in a sales order.
-   A shipment for this sales order was confirmed.
-   Inventory was updated for a stock item that was later converted to a non-stock item.

## Conversion of a Non-Stock Item to a Stock Item

To convert a non-stock item to a stock item, you open the item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. On the More menu, you click **Convert to Stock Item**. For a non-stock item to be converted, the following conditions must be met:

-   The item has the *Non-Stock Item* type and requires receipt and shipment.
-   All the records that contain the item have been processed to completion.
-   The item isn’t used in any labor cost rate line.
-   The item isn’t used in any recurring billing line in a project template task, common task, or project task.

If all the conditions are met, the system opens the item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form. Some settings—such as the tax category, default warehouse, UOMs, price and cost information, and deferrals—are inherited from the non-stock item settings. When an item class is selected for the non-stock item, the settings of the item class don't replace the settings that the item inherited from the non-stock item. You can change these settings manually. The conversion of the item isn't complete until you save the item on the [Stock Items](IN_20_25_00.md) form.

After the conversion, you can still perform the following operations for documents that contain the item as a non-stock item:

-   Reverse AP bills, sales invoices, AR invoices, cash entry documents, and cash sale documents.
-   Void cash purchases.
-   Reopen sales and purchase orders. In the reopened order, the lines with the converted item can't be edited.

When you release the sales invoice for the shipment after the conversion, the system won't post any transactions to the COGS and Expense Accrual accounts if all of the following conditions apply:

-   *Sales* was selected in the **Post Cost to Expenses** box on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) form for a non-stock item.
-   A shipment was confirmed with this item, but the invoice wasn't prepared before the conversion.

The system will show the item's standard cost \(if one is defined\) from this invoice in the sales profitability reports.

If a shipment contains only non-stock items and at least one of the item was converted to a stock item, the shipment can't be corrected.

## Conversion of Items with Multiple Base Currencies Feature Enabled

If the **Multiple Base Currencies** feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form during an item conversion, the currency-specific item settings are inherited only for the base currency of the current branch.

## Vendor and Customer Prices and Discounts in Converted Items

If vendor or customer prices are defined and vendor or customer discounts are applied to a stock or non-stock item, these prices and discounts are retained for the converted item.

## Process Limitations

The following limitations apply to items to be converted:

-   A stock item can be converted to a non-stock item with the *Non-Stock Item* type only. The **Require Receipt** and **Require Shipment** check boxes [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form are selected by default and disabled for the new non-stock item.
-   A non-stock item can be converted to a stock item only if the non-stock item has *Non-Stock Item* type and the **Require Receipt** and **Require Shipment** check boxes selected on the [Non-Stock Items](IN_20_20_00.md) form.
-   Matrix items, non-stock kits, and stock kits can't be converted.

The following limitations apply to items that have been converted:

-   You can't return the converted item by selecting the unlabeled check box in a purchase receipt line on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form in a purchase receipt that was created before the conversion. To process the return of the converted item, you should add the item directly to the purchase return document on the [Purchase Receipts](PO_30_20_00.md) form.
-   You can't process a landed cost for a purchase receipt line with the converted item if the purchase receipt was created before the conversion. To add the landed cost amount, you should use:
    -   The [Adjustments](IN_30_30_00.md) \(IN303000\) form for non-stock items that were converted to stock items
    -   The [Journal Transactions](GL_30_10_00.md) \(GL301000\) form for stock items that were converted to non-stock items
-   In a debit adjustment document that is created on reverse of an AP bill which has a link to a purchase order or purchase receipt and includes a non-stock item that was converted to a stock item after the release of the bill, the **Inventory ID** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form will be empty for the line with this stock item. The **Account** and **Subaccount** columns on the same tab will be empty for all lines with converted stock and non-stock items. You should specify the value of these columns for the lines with the converted items manually. On release of this debit adjustment, the following won't be marked as unbilled:
    -   The purchase receipt and purchase receipt lines with the converted items
    -   The purchase order lines—for an AP bill released before the receipt

**Parent topic:**[Changing Stock Status of Items](../UserGuide/OrderMgmt_Stock_Status_of_Items_Mapref.md)

