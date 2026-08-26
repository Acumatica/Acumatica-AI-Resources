# Stock Items: Change of an Inventory Account for an Item {#_86e5645d-23b0-4bb9-94a7-17808bea7144 .concept}

We recommend that you carefully plan inventory accounts and avoid changing the inventory account for an item after you have started processing transactions with the item.

**Attention:** If you change the posting class for an item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the general ledger accounts are repopulated in the item from the new posting class, which may affect the inventory account that is used for transaction processing with the item if the source of the inventory account is set to *Inventory Item* for the posting class on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form.

If you decide to define a specific inventory account for some item-warehouse combinations, we also recommend that you do this during initial configuration.

If you need to change the inventory account for an item after you have started processing transactions, the following will happen to inventory transactions after you change the inventory account in an item's settings:

-   Inventory receipts, as well as other transactions that increase inventory, will start to process to the new inventory account retrieved from settings.
-   Inventory issues will continue to clear the old inventory account until its balance is zero.
-   Inventory adjustments will be processed to the new inventory account retrieved from settings.

If you want to transfer the item's balance to the new inventory account, we recommend that you do the following:

1.  You create a temporary clearing asset account on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.
2.  You create an issue reason code and a receipt reason code with this temporary clearing asset account specified in the **Account** box on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form.
3.  Keeping the old inventory account in the item settings on the [Stock Items](IN_20_25_00.md) form, you clear the item balance from the old inventory account by issuing all quantity and cost of the item on the [Issues](IN_30_20_00.md) \(IN302000\) form with the issue reason code that you have defined earlier to clear the balance of the old inventory account, and record the balance to the temporary asset account.
4.  You specify the new inventory account in the settings of the item on the [Stock Items](IN_20_25_00.md) form.
5.  On the [Receipts](IN_30_10_00.md) \(IN301000\) form, you process a receipt with the item quantity you issued earlier \(and at the previously specified cost\) and the receipt reason code that you have defined earlier. When you do, the balance is recorded back to the new inventory account, and the balance of the temporary account is cleared.
6.  You make sure the ending balance of the temporary account is zero on the [Account Details](GL_40_40_00.md) \(GL404000\) form, and you clear the **Active** check box for this account on the [Chart of Accounts](GL_20_25_00.md) form.

After you have performed these steps, the balance is transferred to the new inventory account, and the item is ready for processing additional inventory transactions.

**Parent topic:**[Creating Stock Items](../UserGuide/Stock_Items_Mapref.md)

