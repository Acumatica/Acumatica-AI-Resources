# Filtering and Sorting Capabilities: To Create a Simple Filter {#_833941e3-38d7-433e-a932-78d7a0cc8467 .task}

The following activity will help you create and apply filters in Acumatica ERP.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a new sales manager of the SweetLife Fruits &amp; Jams company. On January 30, 2026, you are starting to work with the GoodFood One Restaurant customer. To learn the details about products ordered by the customer so far in 2026, you need to find all the sales orders that have been created in January 2026.

## Process Overview { .section}

In this activity, you’ll do the following:

1.  Create a simple filter
2.  Filter data in a table by a selected cell value
3.  Turn column sorting in a table on and off

## System Preparation { .section}

Before you start working with filters in Acumatica ERP, make sure that the following tasks have been performed:

-   You have installed an Acumatica ERP instance with the *U100* dataset, or a system administrator has performed this task for you.
-   You have signed in to Acumatica ERP with the following credentials:

    -   **Username**: *chubb*
    -   **Password**: *123*
    For details, see [Acumatica ERP Access: Process Activity](GS_Accessing_Acumatica_ERP_Process_Activity.md).


## Step 1: Creating a Simple Filter { .section}

Suppose that you need to view the list of sales orders that have been created in January 2026. To create a simple filter for this purpose, do the following:

1.  On the main menu, click **Sales Orders**. The **Sales Orders** workspace opens.
2.  In the **Transactions** category, click *Sales Orders*. This opens the list of sales orders that have been created in the system.
3.  In the list of sales orders, click the header of the **Date** column.
4.  On the Quick Filter menu, which opens, do the following:
    1.  Make sure **Is Between** is selected in the list of filter conditions.
    2.  In the **From** box, specify *01/01/2026*.
    3.  In the **To** box, specify *01/31/2026*.
    4.  At the bottom of the dialog box, click **Apply**.

        The system closes the menu. In the table, you can see the sales orders that were created in January 2026.

5.  Click the Filter Settings button. In the filtering area, which opens, you can see the **Date: 1/1/2026 - 1/31/2026** quick filter button.

    **Tip:** You can save a simple filter as a quick filter, which can be used in future.

6.  Drag the **Date: 1/1/2026 - 1/31/2026** quick filter button out of the filtering area to delete the simple filter .

## Step 2: Filtering Data by a Selected Cell Value { .section}

Suppose that you need to view all the sales orders that have the *Invoiced* status. Do the following while you are still viewing the list of sales orders:

1.  In the Filter List menu, make sure that *All Records* is selected.
2.  In the **Status** column, click a cell that contains *Invoiced*.

    **Tip:** If you cannot see any sales orders that have the *Invoiced* status on the first page of records, click **Go to Next Page** in the bottom right corner of the screen.

3.  Press Shift+F. In the list of sales orders, you can now see the sales orders that have the *Invoiced* status.

    **Tip:** In the filtering area, you can see the **Status= Invoiced** quick filter button.

4.  Drag the quick filter outside of the filtering area to turn off the filter.

## Step 3: Turning Column Sorting On and Off { .section}

Suppose that you need to sort sales orders by customer name in alphabetical order.

To turn on sorting in the **Customer** column, do the following while you’re still viewing the list of sales order:

1.  Click the **Customer** column header.
2.  On the Quick Filter menu, which opens, click **Sort Ascending**. The system closes the menu and reorders the sales orders in the table, sorting them alphabetically by customer.
3.  To turn off sorting in the **Customer** column of the table, click the **Customer** column header.
4.  On the Quick Filter menu, which opens, again click **Sort Ascending**, which has a check mark right of the menu command. The Quick Filter menu is closed, and sorting is turned off.

**Parent topic:**[Filtering and Sorting in Acumatica ERP](../UserGuide/GS_Filtering_and_Sorting_Mapref.md)

