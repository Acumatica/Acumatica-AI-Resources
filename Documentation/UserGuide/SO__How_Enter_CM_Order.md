# To Create a Credit Memo Order \(CM\) {#_f54ecf0d-dc9c-462c-867c-7c7ce2040f6b .task}

To credit a customer for returned goods without shipping items, you enter a credit memo order \(that is, an order of the *CM* order type\) by using the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

## To Enter a Credit Memo Order { .section}

1.  Open the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
2.  In the Summary area, select *CM* as the order type.
3.  Select the customer in the **Customer** box.
4.  Check the location of the customer in the order, and change it if needed.
5.  Check the currency and the currency exchange rate on the corresponding document from the customer, and change these in the order if needed.
6.  Notice the non-project code that is shown in the **Project** box; if this order is associated with a particular project, select the project.
7.  Check the date of the order, and change it if needed.
8.  In the **Requested On** box, specify the date of the customer document.
9.  In the **Description** box, provide a brief description of this credit memo order.
10. On the **Details** tab, add all the invoices that list the items that have been returned. For each invoice, click **Add Invoice** on the table toolbar and perform the following steps:
    1.  In the **AR Doc. Nbr.** box of the **Add Invoice Details** dialog box, which opens, select the customer invoice by its identifier.
    2.  Once the line or lines of the selected document appear in the table, select the unlabeled check box to the left of each line with an item to be returned.
    3.  Click the **Add &amp; Close** button to add the selected lines to the order \(on the **Details** tab\) and close the dialog box.
    4.  Click **Save** on the form toolbar.
11. Optional: To add other items that will be returned, perform the following steps for each item:
    1.  On the **Details** tab, click **Add Items** on the table toolbar. The **Inventory Lookup** dialog box appears with a list of active inventory items.
    2.  In the dialog box, to find the item by a string in its inventory ID or description, type this string in the **Inventory** box.
    3.  To further narrow the list to a particular subitem of the item \(if subitems are used in your system\), select it in the **Subitem** box.
    4.  In the resulting list of items, select the unlabeled check box in the row of the item you want to add, and in the **Qty. Selected** column, specify the quantity of the item to be returned \(measured in the sales unit of measure shown in the **Sales Unit** column\).
    5.  Click the **Add &amp; Close** button, which adds the items and closes the dialog box.
    6.  Click **Save** on the form toolbar.
12. On the form toolbar, click **Remove Hold**.
13. On the form toolbar, click **Save**.

**Tip:** To view and add particular stock items of non-stock kits in the **Inventory Lookup** dialog box, select the **Show Non-Stock Kits by Components** check box.

**Parent topic:**[Processing Returns for Credit Without Receipts](../UserGuide/SO__con_scn_Return_for_Credit.md)

