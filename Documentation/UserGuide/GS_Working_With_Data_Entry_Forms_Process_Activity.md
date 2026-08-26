# Record Entry: Process Activity {#_cc08bf3e-185e-4dea-976a-5cfd670db9e8 .task}

The following activity will give you experience opening a data entry form—in this case, the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. On the form, you’ll create a sales order and copy it to create another sales order.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a new sales manager of the SweetLife Fruits &amp; Jams company. You’ve received two orders for fruit:

-   A purchase order for 50 pounds of apples for the GoodFood One Restaurant customer.
-   A similar order for 50 pounds of oranges for the FourStar Coffee &amp; Sweets Shop customer; you haven’t received a purchase order from this customer yet.

You need to create sales orders for both orders.

## Process Overview { .section}

In this activity, you’ll do the following:

1.  Create a new sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form
2.  Create another new sales order by copying the existing sales order

## System Preparation { .section}

Before you start performing the steps of this activity in Acumatica ERP, make sure that the following tasks have been performed:

-   You’ve installed an Acumatica ERP instance with the *U100* dataset, or a system administrator has performed this task for you.
-   You’ve signed in to Acumatica ERP with the following credentials:

    -   **Username**: *chubb*
    -   **Password**: *123*
    For details, see [Acumatica ERP Access: Process Activity](GS_Accessing_Acumatica_ERP_Process_Activity.md).

-   The business date in your system is set to 1/30/2026. If you see a different date, click the Business Date menu button in the top pane of the Acumatica ERP screen, and select 1/30/2026 in the calendar.

## Step 1: Creating a Sales Order { .section}

Suppose that you’ve received a purchase order from the GoodFood One Restaurant customer, and you need to create a new sales order based on the purchase order. The customer has assigned the reference number *10557* to its purchase order.

To create this sales order, do the following:

1.  On the main menu, click the **Sales Orders** menu item. The **Sales Orders** workspace opens.
2.  In the **Transactions** category, point at the *Sales Orders* link and click the **New** button right of it. The [Sales Orders](SO_30_10_00.md) \(SO301000\) form opens so that you can create a new record.

    **Tip:** In the workspace, you could instead click the *New Sales Order* tile. Some records, such as sales orders, have a tile at the top of the workspace that you can click to create a record.

3.  In the **Date** box of the Summary area of the form, make sure that 1/30/2026 is selected.
4.  In the **Requested On** box, make sure that 1/30/2026 is selected.
5.  In the **Customer** box, select the customer as follows:
    1.  Click the magnifier button.
    2.  In the lookup table, which opens, double-click *GOODFOOD*. The system closes the lookup table and fills in the **Customer** box with the option you’ve selected.
6.  In the **Description** box, type `Apples`.
7.  On the table toolbar of the **Details** tab, click **Add Row**. In the row, specify the following settings:

    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *APPLES*
    -   **Quantity**: `50`
    **Tip:** Multiple columns in the row—such as the **Warehouse**, **Line Description**, **UOM**, **Unit Price**, and **Ext. Price**—are filled in automatically, based on the settings of the item. The *APPLES* item has been predefined on the [Stock Items](IN_20_25_00.md) \(IN202500\) form in the *U100* dataset.

8.  On the form toolbar, click **Save**. The system saves the sales order with the *Open* status.
9.  In the **Customer Order Nbr.** box, type the number the customer has assigned to the purchase order: `10557`.

    **Tip:**

    The **Customer Order Nbr.** box holds the number of the customer’s document the sales order is based on. The internal reference number, which you can see in the **Order Nbr.** box, was automatically assigned to the sales order.

10. Click **Save and Close** to save the sales order. The system closes the [Sales Orders](SO_30_10_00.md) form and opens the list of sales orders that have been created in the system. In the list of sales orders, you can see the sales order that you’ve just created.

## Step 2: Copying the Sales Order { .section}

Suppose that the FourStar Coffee &amp; Sweets Shop customer has ordered 50 pounds of oranges. Most settings of the new sales order are the same as those in the sales order that you created in Step 1. Thus, to quickly create the new sales order, you’ll copy the existing sales order and change the needed settings of the copied order.

To copy the sales order, do the following:

1.  While you’re still viewing the Sales Orders \(SO3010PL\) list of records, click the link in the **Order Nbr.** column to open the sales order that you’ve created in Step 1.
2.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which opens, click the More \(...\) button on the form toolbar to open the More menu and view the available menu commands.
3.  On the More menu, under **Other**, click **Copy Order**. The **Copy To** dialog box opens.
4.  In the dialog box, click **OK**. The [Sales Orders](SO_30_10_00.md) form reopens for the new sales order. Some elements on the form are filled in with the data of the sales order that you’ve copied.
5.  In the **Customer** box of the form, select *COFFEESHOP*.
6.  On the **Details** tab, in the **Inventory ID** column of the only row, double-click right of the *APPLES* link. The value is highlighted.

    **Attention:**

    If you’d instead clicked the *APPLES* link, the [Stock Items](IN_20_25_00.md) \(IN202500\) form would have opened in a pop-up window, displaying the settings of this item.

7.  In the column, type `orange`.
8.  In the list of options that appears \(which changes as you type\), select *ORANGES - Fresh oranges 1 lb*.
9.  In the **Quantity** column, type `50`.
10. In the **Unit Price** column, type `2.15`.
11. In the **Description** box of the Summary area, update the description for the sales order: Type `Oranges`.
12. Click **Save** to save the sales order you’ve copied and changed.

**Parent topic:**[Entering Records into the System](../UserGuide/GS_Working_With_Data_Entry_Forms_Mapref.md)

