# To Enter an Inventory Issue of the Invoice Type {#_67600bfa-17cf-4d6b-880e-755f63db9d81 .task}

You create an issue of the *Invoice* type by using the [Issues](IN_30_20_00.md) \(IN302000\) form, as described in this topic. When the issue of this type is released, the system creates the credit transaction to the inventory account and the debit transaction to the COGS account.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Enter an Issue of the Invoice Type { .section}

1.  Open the [Issues](../Shared/../UserGuide/IN_30_20_00.md) \(IN302000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Description** box of the Summary area, type the description of the transaction.
4.  On the **Transaction Details** tab, do the following:
    1.  On the table toolbar, click **Add Item**.
    2.  In the **Inventory Lookup** dialog box, which opens, do the following:
        1.  Select the unlabeled column for one stock item or multiple stock items that you want to add to the receipt.
        2.  In the **Qty. Selected** column, specify the quantity included in the issue for each of the selected items.
        3.  Click **Add &amp; Close** to add the selected item or items and close the dialog box.
    3.  In the **Tran. Type** column, select *Invoice*.
    4.  In the **UOM** column, make sure that the correct unit of measure is selected.
    5.  In the **Unit Price** column, make sure that the default unit price is appropriate for the selected stock item.
    6.  In the **Reason Code** column, select the reason code for this transaction.
    7.  Press Ctrl+Enter to confirm the line.
    8.  Repeat the five previous substeps for each stock item to be included in the receipt.
5.  On the form toolbar, click **Save**.
6.  In the Summary area, clear the **Hold** check box to prepare the issue for release.
7.  On the form toolbar, click **Release** to release the issue.

**Parent topic:**[Processing Inventory Transactions](../UserGuide/IN__MNG_Transactions.md)

