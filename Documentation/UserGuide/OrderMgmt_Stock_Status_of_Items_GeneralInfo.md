# Stock Status of Items: General Information {#_f0735d91-dfe3-45fc-a732-953c2caf2be2 .concept}

Acumatica ERP provides the ability to change the stock status of items. You can convert stock items to non-stock items and non-stock items to stock items. The new functionality increases the versatility of item-related scenarios.

**Note:** This functionality is unavailable if at least one of the following features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form: *Manufacturing*, *Projects*, *Time Management*, *Service Management*, *Payroll*.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Convert stock items to non-stock items
-   Convert non-stock items to stock items

## Applicable Scenarios { .section}

You change the stock status of items in the following cases:

-   When a company is going to finish selling a certain type of goods which are recorded as stock items in the system. The company is not going to purchase this item for reselling in the nearest future. The company can issue the retaining quantity from the stock and convert the stock item in the system to a non-stock item to stop tracking the item in the inventory.
-   When a company has bought prototypes of several devices. These items are registered as non-stock items in the system. After successful testing of prototypes, the company decides to make a purchase order for a large volume of the devices for further reselling. To be able to track the devices in the inventory, the non-stock items can be converted to stock items.

## Conversion of a Stock Item to a Non-Stock Item { .section}

The [Stock Items](IN_20_25_00.md) \(IN202500\) form is a starting point for converting a stock item to a non-stock item. You open the form, click on the stock item, which you want to convert, and select the **Convert to Non-Stock Item** command on the More menu. When you invoke the **Convert to Non-Stock Item**, the system checks whether the quantity of the item in the stock is equal to zero and whether there are the documents with this item that have not been processed to completion. If the quantity is equal to zero, and all documents with this item have been processed, the system opens the item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. Some settings such as tax category, default warehouse, UOMs, price and cost information, deferrals are inherited from the stock item settings. Once the item class is selected for the non-stock item, the inherited settings are not replaced with the settings of the new item class. You can change these settings manually. The conversion of the item is not complete until you save the item on the [Non-Stock Items](IN_20_20_00.md) form.

When the conversion is complete, you can view all the reports related to this item for the periods when it was a stock item. You can also reverse AP bills and sales invoices and reopen sales and purchase orders that contain the item as a stock item. In the reopened order, the lines with the converted item cannot be edited.

When you add the converted item to any new documents, the item is processed according to the current stock status.

If an expense account specified in the **Shipped-Not-Invoiced Account** box on the [Order Types](SO_20_10_00.md) \(SO201000\) form was used in a sales order, a shipment for this sales order was confirmed, and the inventory was updated for a stock item which was converted to a non-stock item later, then when you release the sales invoice after the conversion, the COGs account is copied from the non-stock item settings.

## Conversion of a Non-Stock Item to a Stock Item { .section}

The [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form is a starting point for converting a non-stock item to a stock item. You open the form, click on the non-stock item, which you want to convert, and select the **Convert to Stock Item** command on the More menu. When you invoke the **Convert to Stock Item** command, the system checks whether there are documents with this item that have not been processed to completion. If all documents with this item have been processed to completion, the system opens the item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form. Some settings such as tax category, default warehouse, UOMs, price and cost information, deferrals are inherited from the non-stock item settings. Once the item class is selected for the non-stock item, the inherited settings are not replaced with the settings of the new item class. You can change this settings manually. The conversion of the item is not complete until you save the item on the [Stock Items](IN_20_25_00.md) form.

You can reverse AP bills, sales invoices, AR invoices, cash entry documents, cash sale documents and void cash purchases that contain the item as a non-stock item. You can also reopen sales and purchase orders that contain the item as a non-stock item. In the reopened order, the lines with the converted item cannot be edited.

If *Sales* was selected in the **Post Cost to Expenses** box on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) form for a non-stock item, and a shipment was confirmed with this item but the invoice was not prepared, then after the conversion to the stock item, when you release the sales invoice for the shipment, the system will not post any transactions to Cost of Goods Sold and Expense Accrual accounts. The system will show the item's standard cost \(if the standard cost is defined\) from this invoice in the sales profitability reports.

If a shipment contains only non-stock items and at least one of the item was converted to a stock item, the shipment cannot be corrected.

## Conversion of Items with Multiple Base Currencies Feature Enabled { .section}

If the **Multiple Base Currencies** feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form during an item conversion, the currency-specific item settings are inherited only for the base currency of the current branch.

## Vendor and Customer Prices and Discounts in Converted Items { .section}

If vendor or customer prices are defined and vendor or customer discounts are applied to a stock or non-stock item, these prices and discounts are retained for the converted item.

## Process Limitations { .section}

The following limitations apply to items to be converted:

-   A stock item can be converted to a non-stock item with the *Non-Stock Item* type only. The **Require Receipt** and **Require Shipment** check boxes [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form are selected by default and disabled for the new non-stock item.
-   A non-stock item can be converted to a stock item only if the non-stock item has *Non-Stock Item* type and the **Require Receipt** and **Require Shipment** check boxes selected on the [Non-Stock Items](IN_20_20_00.md) form.
-   Matrix items, non-stock and stock kits cannot be converted.

The following limitations apply to items that have been converted:

-   You cannot return the converted item by selecting the unlabeled check box in PO receipt line on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form in a purchase receipt that was created before the conversion. To process the return of the converted item, you should add the item directly to the PO return document on the [Purchase Receipts](PO_30_20_00.md) form.
-   You cannot process a landed cost for a PO receipt line with the converted item if the purchase receipt was created before the conversion. To add the landed cost amount for the converted item, you should use the [Adjustments](IN_30_30_00.md) \(IN303000\) form for non-stock which were items converted to stock items or the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form for stock items which were converted to non-stock items.
-   In a debit adjustment document that is created on reverse of an AP bill which has a link to a purchase order or purchase receipt and includes a non-stock item that was converted to a stock item after the release of the bill, the **Inventory ID** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) will be empty for the line with this stock item. The **Account** and **Subaccount** columns on the same tab will be empty for all lines with converted stock and non-stock items. You should specify the value of these columns for the lines with the converted items manually. On release of this debit adjustment, the PO receipt and PO lines with the converted items will not be marked as unbilled.

**Parent topic:**[Changing Stock Status of Items](../UserGuide/OrderMgmt_Stock_Status_of_Items_Mapref.md)

