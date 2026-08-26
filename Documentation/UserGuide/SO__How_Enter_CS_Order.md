# To Enter a Cash Sale Order \(CS\) {#_c86a1986-a21f-48c0-a7de-bc73a548577b .task}

You create an order of the predefined *CS* type to record a sale of stock items that is immediately paid by cash and does not require shipping. You use the [Sales Orders](SO_30_10_00.md) \(SO301000\) form to enter the *CS* order.

## To Create a Cash Sale Order { .section}

1.  Open the [Sales Orders](../Shared/../UserGuide/SO_30_10_00.md) \(SO301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Order Type** box in the Summary area, select *CS \(Cash Sale\)*.
4.  Select the customer in the **Customer** box.
5.  If needed, in the **Location** box, change the default location of the customer.
6.  If needed, in the **Project** box, change the *X* non-project code to the particular project.
7.  In the **Date** and **Requested On** boxes, change the dates of the order \(which by default is the current business date\) if needed.
8.  If needed, in the **Customer Order** box, enter the reference number of the original customer document the case sale order is based on.
9.  If needed, in the **Description** box, provide a brief description for this cash sale order.
10. On the **Financial** tab specify the following information:
    1.  In the **Payment Method** box, check the customer's default payment method. The cash sale must be paid by a method based on cash or check.
    2.  In the **Cash Account** box, check the default cash account of the selected payment method. Change it, if needed.
    3.  In the **Payment Ref.** box, enter the reference number of the customer payment.
11. On the **Details** tab, perform the following steps to add one item or multiple items to the cash sale order:
    1.  Click **Add Items** on the table toolbar. The **Inventory Lookup** dialog box appears with the list of active stock items. You can use the selection criteria at the top of the dialog box to narrow the list of items.
    2.  In the line or lines with the items that you want to add, in the **Qty. Selected** column, specify the requested quantity of the items \(measured in the default unit of measure shown in the **UOM** column\). Notice the item availability data in the **Qty. Available** and **Qty. On Hand** column, and make sure that the specified quantity is available in the selected warehouse for each item to be added to the cash sale.
    3.  Click **Add &amp; Close** at the bottom of the dialog box.
12. On the form toolbar, click **Save**.

**Parent topic:**[Processing Cash Sales of Stock Items](../UserGuide/SO__con_scn_Sale_by_Cash.md)

