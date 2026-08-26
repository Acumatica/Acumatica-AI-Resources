# Posting Classes: General Information {#_88764275-a449-42b4-9153-2284efc1026d .concept}

Every inventory transaction creates an appropriate posting to the general ledger, depending on the particular inventory item, the type of transaction, the warehouse where the item is stocked, and other conditions. A posting class, which is a required setting for stock items, defines which accounts should be used to post specific transactions to the general ledger. Also, posting classes are used to provide the default GL accounts to be assigned to stock items that are created.

During the configuration of Acumatica ERP, you create posting classes and then assign posting classes to item classes, which group items and provide settings for them. When you create each stock item, you specify an item class, which causes the system to insert default settings for the item, including the posting class \(which in turn causes the system to insert the accounts of the posting class for the item\). The insertion of these default accounts streamlines data entry.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Prepare the system for the creation of posting classes
-   Create a posting class for stock items

## Applicable Scenarios { .section}

You create posting classes in the following cases:

-   You are initially configuring inventory management in Acumatica ERP before you create item classes and stock items.
-   You need to create a new class of inventory items with specific posting settings.

## Creation of Posting Classes { .section}

You can create posting classes by using the [Posting Classes](IN_20_60_00.md) \(IN206000\) form.

**Attention:** Before you start creating posting classes, you should make sure that all necessary GL accounts have been created on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.

During the creation of a posting class, you specify the following:

-   Class ID: You type the unique identifier that defines the posting class, which is an alphanumeric string of up to 10 characters.
-   GL accounts: You specify the general ledger accounts assigned to the posting class. The exact set of accounts you need to select depends on the items for which you are creating a posting class. For details, see [General Ledger Accounts of a Posting Class](#_5a666cd1-022d-4ffb-9b39-36b47e5d5e96).
-   Posting settings for transactions: You specify which GL account the system must use for which type of transaction. For details, see [Posting Settings for General Ledger Accounts](#_ed9bd946-a9da-4535-a300-e89b86e26515).
-   Physical inventory reason code: You specify the reason code that the system will use by default for physical inventory involving items associated with this posting class. For more information, see [Reason Codes: General Information](Reason_Codes_GeneralInfo.md).

## General Ledger Accounts Used by Inventory Entities { .section}

You can specify GL accounts in the settings of the following inventory entities: warehouses \(if you use multiple warehouses in the system\), posting classes \(which can be specified for stock and non-stock items\), stock items, and non-stock items. The specified GL accounts are used by the system to record inventory transactions that involve the respective entities. You specify the following GL accounts in the settings of inventory entities:

-   Inventory/Accrual account \(specified in the settings of a stock item, warehouse, non-stock item, or posting class for non-stock items\): An account that is one of the following:
    -   If specified for a stock item or warehouse: An asset account to keep the inventory balance resulting from transactions with the stock item or transactions that involve the specific warehouse. The cost of the applicable items will be debited to the Inventory account when the items are received, and credited when the items are issued from inventory.
    -   If specified for a non-stock item or a posting class to be used for non-stock items: A liability account to be used for non-stock items as the Accrual account. The cost of purchased non-stock items will be credited to this account, and when an AP bill is created for any of these purchased non-stock items, the cost will be debited to this account.
-   Sales account \(specified for each warehouse, stock item, non-stock item, and posting class\): The income account to record sales for the entity.

    **Tip:** A sales account can also be specified in the **Use Sales Account from** box in the **Posting Settings** section of an order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form. In a sales order of a type with a sales account specified, this sales account has a higher priority than the setting specified in the item settings on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

-   COGS/Expense account \(specified for each warehouse, stock item, non-stock item, and posting class\): An account that is one of the following:
    -   If specified for a warehouse, stock item, or posting class for stock items: The expense account used as the Cost of Goods Sold \(COGS\) account. This account will accrue the cost of goods sold once an inventory issue that includes the applicable item or warehouse is released. The cost of items sold is debited to the account when items are issued for sale from inventory.
    -   If specified for a non-stock item or for a posting class to be used for non-stock items or labor items: The Expense account used for transactions with these items.
-   Standard Cost Variance account \(specified for each warehouse, stock item, and posting class for stock items\): The expense account to be used to record any differences between the currently effective standard cost and the cost on a bill for the specified quantities of items.

    This account is used only for transactions associated with stock items to which the *Standard* valuation method is assigned.

-   Standard Cost Revaluation account \(specified for each warehouse, stock item, and posting class for stock items\): The expense account to be used to record the differences in inventory value estimated by using the pending standard cost and the currently effective standard cost for the quantities on hand of a stock item. Revaluation is performed at the moment when standard costs are updated—that is, when the currently effective standard cost becomes the last standard cost, and the pending cost becomes the effective standard cost.

    This account is used only for transactions associated with stock items to which the *Standard* valuation method is assigned.

-   PO Accrual account \(specified for each warehouse, stock item, and posting class\): The liability account to be used to accrue amounts on purchase orders related to the warehouse or stock item for which the account is specified. Whenever receipts linked to purchase orders are released, the system generates transactions between the PO Accrual account and the inventory account.
-   Purchase Price Variance account \(specified for each warehouse, stock item, non-stock item, and posting class for stock or non-stock items\): The expense account to be used to record any differences between the extended price on the purchase receipt and the extended price on the AP bill.

    This account is used for transactions that involve inventory items for which any of the valuation methods is assigned.

-   Landed Cost Variance account \(specified for each warehouse, stock item, and posting class for stock items\): The expense account to be used to record any differences in landed costs between the landed cost amounts specified on purchase receipts and the landed cost amounts on inventory receipts.
-   Deferral account \(specified for each stock item, non-stock item, and posting class\): The account to be used to hold the deferred amount until it is fully recognized. You select an account of one of the following types:
    -   A liability account for a deferral code of the *Revenue* type
    -   An asset account for a deferral code of the *Expense* type

## General Ledger Accounts of a Posting Class {#_5a666cd1-022d-4ffb-9b39-36b47e5d5e96 .section}

You specify the default general ledger accounts assigned to a posting class in the **Default GL Accounts** section of the [Posting Classes](IN_20_60_00.md) \(IN206000\) form. These default GL accounts simplify data entry on the [Stock Items](IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms. When a posting class is assigned to an item class, the system copies the GL accounts from the posting class to the new items in this class. In the settings of the item, you can override any of the default accounts, if needed.

If you change the posting class for an item, the system updates the GL accounts on the [Stock Items](IN_20_25_00.md) or [Non-Stock Items](IN_20_20_00.md) form with the accounts from the new posting class.

**Important:** It is not recommended to change the posting class of an item that is included in existing transactions. For details on the change of accounts for such an item, see [Stock Items: Change of an Inventory Account for an Item](Stock_Items_Change_of_an_Inventory_Account_for_an_Item.md).

## Posting Settings for General Ledger Accounts {#_ed9bd946-a9da-4535-a300-e89b86e26515 .section}

The GL accounts to be used for inventory transactions related to sales, purchases, and valuation of inventory items can be obtained from multiple sources, depending on the business processes established in your organization. On the **General** tab of the [Posting Classes](IN_20_60_00.md) \(IN206000\) form, for each type of account, you specify from which source the system will use this account for the posting class.

In Acumatica ERP, you can select one of the following sources, which determine the GL accounts the system will use:

-   *Inventory item*: The Inventory account for all transactions of the item will be the one specified in the item settings, regardless of at what warehouse the inventory transaction occurs.
-   *Warehouse*: The Inventory account will vary depending on the warehouse where the inventory transaction is made. You select this source if you use multiple warehouses in the system and each warehouse has a specific Inventory account assigned.
-   *Posting class*: The Inventory account assigned to the posting class itself \(as specified in the **Default GL Accounts** section of the [Posting Classes](IN_20_60_00.md) form\) will be used. You select this source when you need to replace the Inventory account in item settings with a new account.

## Basic Scenarios of Configuring Posting Classes { .section}

When you create posting classes, you can configure the following basic scenarios:

-   Posting transactions for multiple items to the same GL account: Suppose that you have a single warehouse, and the majority of inventory transactions should be posted to the same GL account. You do the following:
    -   Create a posting class and specify for it the inventory account that the system should use for posting inventory transactions
    -   Select *Posting Class* as the source of the inventory account in the settings of the posting class
    -   Specify the created posting class in the settings of each item class and inventory item
-   Posting transactions to item-specific GL accounts: Suppose that you have high-cost items for which you want to allocate specific GL accounts. You do the following:
    -   Specify a separate GL account in the settings of each item class for especially valuable items or each inventory item that is considered particularly valuable
    -   Create a posting class; in its settings, you select *Inventory Item* as the source of the inventory account
    -   Specify the created posting class in the settings of the inventory items that have separate GL accounts assigned to them
-   Posting transactions to warehouse-specific GL accounts: Suppose that you have multiple warehouses and you have separate accounts for each warehouse. You do the following:
    -   Assign an individual inventory account to each warehouse
    -   Create a posting class and select *Warehouse* as the source of the inventory account
    -   Assign item classes or items to the created posting class

You can combine these basic scenarios to post transactions according to business processes of your organization.

**Parent topic:**[Creating Posting Classes](../UserGuide/Posting_Classes_Mapref.md)

