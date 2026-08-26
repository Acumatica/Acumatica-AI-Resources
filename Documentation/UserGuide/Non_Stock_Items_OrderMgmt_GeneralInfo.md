# Non-Stock Items: General Information {#_2c0fcd08-d59d-4335-98e3-83471a287f18 .concept}

Non-stock items may be physical entities for which you do not need to track quantities in a warehouse or they may be products that consist of no physical entity and thus cannot be stocked in warehouses \(as with services\). In Acumatica ERP, you create non-stock items by using the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

Acumatica ERP supports the following types of non-stock items:

-   *Non-Stock Item*: A general type of non-stock item usually bought for internal needs or for use in sales but not to be sold separately
-   *Service*: A non-stock item to designate service fees
-   *Labor*: A non-stock item mostly used as a source of general ledger accounts for recording sales of labor
-   *Charge*: A non-stock item that represents specific type of charge
-   *Expense*: A non-stock item that represents specific type of expense

This chapter focuses on the creation and settings of non-stock items that represent physical entities. Thus, in the rest of the chapter, *non-stock item* refers to a physical entity. To learn more about non-stock items representing services \(*service items*\), see [Service Items: General Information](Services_GeneralInfo.md).

## Learning Objectives {#section_rdh_xgs_mlb .section}

In this chapter, you will do the following:

-   Become familiar with the settings of a non-stock item that represents a physical entity
-   Understand the non-stock item settings that affect the processing of orders that include the item
-   Create a non-stock item

## Applicable Scenarios {#section_sdh_xgs_mlb .section}

When you are initially configuring entities and settings in Acumatica ERP, you may need to create a non-stock item in the following cases:

-   You are going to sell or purchase goods that you do not want to track in inventory.
-   You are going to drop-ship goods.

## Non-Stock Items in Sales Orders {#section_jqw_k2n_nlb .section}

Although non-stock items are not tracked in inventory, you may want to process them through shipment, so that these items will be listed in shipment confirmations and pick lists. You can include a non-stock item in a shipment only if the **Require Shipment** check box is selected on the **General** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form for this item. When the item with the check box selected is included in a sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you can create a shipment only if the order type is used for processing shipments.

**Tip:** Shipments can be processed for sales orders of a type if the **Process Shipments** check box is selected on the [Order Types](SO_20_10_00.md) \(SO201000\) form.

After the shipment has been created and confirmed, you can create a sales invoice for this order.

## Non-Stock Items in Purchase Orders {#section_tzk_hyd_plb .section}

For each non-stock item, you define whether a purchase receipt is required when the item is included in a purchase order by selecting or clearing the **Require Receipt** check box on the **General** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

In a purchase order line on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, when you select a non-stock item that requires a purchase receipt, the system inserts *Non-Stock* as the line type. When you create a purchase receipt for the purchase order, the system copies all *Non-Stock* lines to the purchase receipt.

## Posting Accounts for Non-Stock Lines {#section_xc2_pgg_plb .section}

For the *Non-Stock* lines on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, in the **Account** column, the system inserts the Expense account defined by the **Use COGS/Expense Account From** setting of the posting class specified on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form.

If the *Subaccounts* feature is enabled in your system, in the **Sub.** column of the [Purchase Orders](PO_30_10_00.md) form, the system also inserts the subaccount, which is composed as defined by the rule in the **Combine Expense Sub. From** box on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.

If the subaccount mask associated with the non-stock item—that is, *I*— is selected in the **Combine Expense Sub. From** box on the [Accounts Payable Preferences](AP_10_10_00.md) form, the subaccount is composed according to the rule which is specified in the **Use COGS/Expense Account From** box on the [Posting Classes](IN_20_60_00.md) form for the posting class of the non-stock item.

Accounts and subaccounts are used for processing *Non-Stock* lines as follows:

-   When an inventory receipt linked to the purchase receipt is released, the Expense account \(with the Expense subaccount\) is debited for the line amount and the PO Accrual account \(with the PO Accrual subaccount\) is credited for the same amount.
-   When a bill is released for the purchase receipt, the PO Accrual account \(with the PO Accrual subaccount\) is debited for the line amount and the Accounts Payable account \(with the Accounts Payable subaccount, if applicable\) is credited for the same amount.

The PO Accrual account to be used for receipt-related transactions is defined by the posting class of the item on the [Posting Classes](IN_20_60_00.md) form; the default account assigned to the item on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form will be used if the **Use PO Accrual Account From** setting for the posting class has the *Inventory Item* option selected.

## Units of Measure for Non-Stock Items {#section_qhz_rmm_plb .section}

If the *Multiple Units of Measure* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, for each non-stock item, you can select the units of measure \(UOMs\) used as base, sales, and purchase units for the item and specify conversion rules for them and for other UOMs used for the item. If the feature is disabled, only base units can be specified.

You can select global UOMs or enter new UOMs on the fly. Every conversion rule is specified with respect to the UOM selected as the item’s base unit. For details on UOMs, see [Stock Items: Units of Measure](Stock_Items_UOMs.md). \(Stock and non-stock items are configured similarly.\)

**Parent topic:**[Creating Non-Stock Items](../UserGuide/Non_Stock_Items_OrderMgmt_Mapref.md)

