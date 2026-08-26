# To Enter an Inventory Issue of the Issue Type {#_c9cfa17c-114e-4955-ad88-8201e07eedb7 .task}

You create issues of the *Issue* transaction type by using the [Issues](IN_30_20_00.md) \(IN302000\) form. When the issue of this type is released, the system creates an inventory transaction to subtract the issued quantity from inventory and decrease the cost of inventory for the extended cost of the line, and generates a General Ledger transaction to credit the inventory account for the extended cost.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Enter an Issue of the Issue Type { .section}

1.  Open the [Issues](../Shared/../UserGuide/IN_30_20_00.md) \(IN302000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Description** box of the Summary area, type the description of the transaction.
4.  On the **Details** tab, do the following:
    1.  On the table toolbar, click **Add Items**.
    2.  In the **Inventory Lookup** dialog box, which opens, do the following:
        1.  Select the unlabeled check box for one stock item or multiple stock items that you want to add to the issue.
        2.  In the **Qty. Selected** column, specify the quantity included in the issue for each of the selected items.
        3.  Click **Add &amp; Close** to add the selected item or items and close the dialog box.
    3.  In the **Tran. Type** column, make sure that the *Issue* value is selected.
    4.  In the **UOM** column, make sure that the correct unit of measure is selected.
    5.  In the **Reason Code** column, select the reason code for this transaction.
    6.  Press Ctrl+Enter to confirm the line.
5.  On the form toolbar, click **Save**.
6.  On the form toolbar, click **Release** to release the issue.

**Parent topic:**[Processing Inventory Transactions](../UserGuide/IN__MNG_Transactions.md)

