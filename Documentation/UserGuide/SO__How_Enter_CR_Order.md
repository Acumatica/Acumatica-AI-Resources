# To Create a Cash Return Order \(CR\) {#_fadddc1f-629c-414a-ae1b-2a7f1aface13 .task}

To process a return of items that were sold on a cash sale, you create a cash return order \(that is, an order of the *CR* order type\) by using the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

## To Create a Cash Return Order { .section}

1.  Open the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
2.  In the Summary area, select *CR* as the order type.
3.  Select the customer in the **Customer** box.
4.  Check the location of the customer in the order, and change it if needed.
5.  Check the currency and the currency exchange rate on the corresponding document from the customer, and change these in the order if needed.
6.  Notice the non-project code that is shown in the **Project** box; if this order is associated with a particular project, select the project.
7.  Check the date of the order, and change it if needed.
8.  In the **Requested On** box, specify the date of the customer document.
9.  In the **Description** box, provide a brief description of this return order.
10. To specify the items to be returned, you can either add items or add original documents. To add the items to be returned, go to Step 12. If the items to be returned were listed on cash sales documents, on the **Details** tab, add the original cash sales document. To do this, click **Add Invoice** on the table toolbar and perform the following steps for each returned item:
    1.  In the **AR Doc. Type** box of the **Add Invoice Details** dialog box, which opens, select *Cash Sales*.
    2.  In the **AR Doc. Nbr.** box, select the customer document by its identifier.
    3.  Once the line or lines of the selected invoice appear in the table, select the unlabeled check boxes to the left of each line with an item that is being returned.

        **Tip:** To view and add particular stock items of non-stock kits, select the **Show Non-Stock Kits by Components** check box.

    4.  Click the **Add &amp; Close** button to add selected lines to the order and close the dialog box.
    5.  On the **Details** tab, specify the **Reason Code** for the return in each added line.
    6.  Click **Save** on the form toolbar.
11. To add the items that will be returned and that were paid by one payment, perform the following steps for each item:
    1.  On the **Details** tab, click **Add Items** on the table toolbar. The **Inventory Lookup** dialog box appears with a list of active inventory items.
    2.  In the dialog box, to find the item by a string in its inventory ID or description, type this string in the **Inventory** box.
    3.  To further narrow the list to a particular subitem of the item \(if subitems are used in your system\), select it in the **Subitem** box.
    4.  In the resulting list of items, select an unlabeled check box in the row of the item you want to add, and in the **Qty. Selected** column, specify the requested quantity of the item \(measured in the default unit of measure shown in the **UOM** column\).
    5.  Click the **Add &amp; Close** button, which closes the dialog box.
    6.  In the row on the **Details**tab with the item you added, specify the **Reason Code** for the return.
    7.  Click **Save** on the form toolbar.
12. In the **Payment Ref.** box on the **Payments** tab, type the payment reference number.
13. On the form toolbar, click **Remove Hold**.
14. On the form toolbar, click **Save**.

**Parent topic:**[Processing Returns for Cash](../UserGuide/SO__con_scn_Return_for_Cash.md)

