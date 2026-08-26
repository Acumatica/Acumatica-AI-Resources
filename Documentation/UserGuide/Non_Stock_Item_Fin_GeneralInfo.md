# Non-Stock Item: General Information {#_054919f5-29c5-492f-a5dc-0b7a71b7a44b .concept}

Non-stock items are used for goods that you purchase from vendors or sell to customers but do not want to reflect in your company's inventory. Since non-stock items do not require tracking of quantities, you can maintain only standard costs and base price information for them. For each non-stock item, you can specify and periodically update purchase prices and sales prices. Also, you can specify the standard cost of a non-stock item, which can be used in purchase orders and accounts payable bills if the vendor price is not specified. You can use the same non-stock items in accounts payable, accounts receivable, inventory, purchase orders, service orders, and sales orders.

## Learning Objectives {#section_scm_4jv_vxb .section}

In this chapter, you will learn how to create a new non-stock item of the *Charge* type, with a standard cost.

## Applicable Scenarios {#section_ucm_4jv_vxb .section}

You may need to create a non-stock item in any of the following cases:

-   When you initially configure Acumatica ERP with the *Inventory* feature disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form
-   When you are going to sell or purchase new goods

## Types of Non-Stock Items {#section_wcm_4jv_vxb .section}

Acumatica ERP supports the following types of non-stock items:

-   *Non-Stock Item*: A general type of non-stock item generally bought for internal needs or for using in sales but not for selling separately
-   *Labor*: A non-stock item mostly used as a source of general ledger accounts for recording sales of labor
-   *Service*: A non-stock item to designate service fees
-   *Charge*: A non-stock item that represents specific type of charges
-   *Expense*: A non-stock item that represents specific type of expense

## Settings for Non-Stock Items {#section_ycm_4jv_vxb .section}

You can maintain information about non-stock items and their properties by using the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form available in accounts receivable and accounts payable. The list below describes some of the settings that you can provide for a non-stock item by using this form:

-   **Inventory ID**: Every non-stock item is assigned a unique identifier based on the *INVENTORY* segmented key.

    You can configure inventory IDs by specifying settings for the *INVENTORY* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form. For the key, you can define how many segments it is to have, what values may be used, whether these values should be validated, and whether auto-numbering should be used in one of the segments.

    If required, you can change the ID for any non-stock item manually by using the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

-   **Units of measure**: For each non-stock item, you can select the unit of measure \(UOM\) used as base unit for the item and specify conversion rules for them and for other UOMs used for the item. You can select UOMs from the list of those available for the item class or type new UOMs manually. Note that every conversion rule is specified with respect to the UOM chosen as the item's base unit.
-   **General ledger accounts**: The general ledger accounts used for non-stock items are limited to sales accounts and expense accounts.
-   **Valuation method**: Only the standard cost method applies to non-stock items.
-   **Price information**: For non-stock items of all types, you can specify price classes and assign prices that become effective on specific dates.
-   **Attributes**: You can track additional information for non-stock items by using the attributes functionality.

## Non-Stock Item Costs {#section_cdm_4jv_vxb .section}

To make it possible to enter the non-stock item cost and use it in the non-stock item price calculation, Acumatica ERP enables you to maintain standard costs for non-stock items.

The standard costs are determined outside of the system by cost experts, and the values should include some of the indirect and direct costs allocated. You can specify the standard cost for a non-stock item as a pending cost by using the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. Along with the pending cost, you can specify a date when the cost will become effective. Standard costs are defined with respect to the base unit of the stock item.

If you want to update standard costs for non-stock items, use the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) form: Enter a pending cost and the date for the new cost, and on the More menu \(under **Other**\), click **Update Cost**. The system displays only the last cost and current cost. The historical costs that were effective before the last cost are not stored in the database.

## Prices for Non-Stock Items {#section_gdm_4jv_vxb .section}

The current price of an item is automatically inserted into the lines of sales orders and invoices for which you select the item, which results in quicker and more accurate data entry. If the item price has changed, you can automatically recalculate the document amounts based on the updated price.

You can maintain default prices for non-stock items and specify them for the base units in the base currency. You can enter default prices individually for each non-stock item by using the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form and update them at any time on a per-item basis. Default prices have no expiration dates and cannot be specified as based on item quantity. For more information, see [Sales Prices: General Information](Prices_Reviewing_Sales_Prices_GeneralInfo.md).

**Parent topic:**[Creating a Non-Stock Item](../UserGuide/Non_Stock_Item_Fin_Mapref.md)

