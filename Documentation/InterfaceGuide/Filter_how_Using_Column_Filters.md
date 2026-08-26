# To Filter the Data in a Table {#_5e70eb02-546d-4e2b-b1ba-e4e562b5a9dd .task}

You quickly filter the data of any table in the system by using simple filters—that is, by selecting the appropriate options in the menu that appears when you click the header of the column to which you want apply the filter. On generic inquiry forms \(such as substitutes for entry forms\), you can filter data in tables by using quick filters—that is, by dragging column headers to the filtering area of the table and specifying the filtering values.

In this topic, you will read about setting up filters based on table columns, clearing these filters, managing column sorting, and filtering by a selected cell value.

**Note:** Simple and quick filters cannot include complex filtering conditions \(with multiple clauses connected with *Or* operators and combined with parenthesis\). If you need to use complex filtering conditions, you create an advanced filter as described in [Managing Advanced Filters](../Shared/../UserGuide/GI_Reusable_Filters_Mapref.md).

## To Set Up a Filter on Table Columns {#_d0150d2d-c08a-40af-a83d-fac78923d68d .section}

1.  Open the form with the table for which you want to set up a filter on table columns.
2.  In the table, do one of the following:
    -   Click the header of the column whose values you want to filter.
    -   If the **Drag column header here to configure filter** box of the filtering area is available above the table \(which indicates that you are viewing a generic inquiry form\), drag the header of the column whose values you want to filter to this part of the filtering area and click the button that is added to the filtering area once you drop the header there.
3.  If you want to filter data in a column with a fixed set of options \(such as **Status**\), in the dialog box that has opened, select the required values.
4.  If you want to filter data in a column with unlimited number of values \(such as **Vendor**\), do the following:
    -   In the dialog box that has opened, select the filter condition from the list of available conditions. The available conditions \(such as **Contains**, **Equals**, **Does Not Equal**, **Is Null**, **Is Not Null** or **Is Empty**\) depend on the data type of the column.
    -   In the box at the bottom of the dialog box, type the filter value \(if needed\).
5.  Click **OK** to apply the filter.

Now the table displays only the rows that satisfy the terms of the filter. The column header is highlighted and displays the filter icon \(![](../Shared/Images/filter_icon_filter.png)\). If the table is on a generic inquiry form, a button is added to the filtering area and displays the column name and filtering value.

You can set up filters for any number of table columns. If you set up filters for multiple columns, the system displays only the rows that satisfy the terms of all filters.

## To Filter Data by a Selected Cell Value { .section}

You can filter the data in a table on an inquiry or processing form by a value of any cell that you select as follows:

1.  Open the form with the table for which you want to set up filtering by a cell value.
2.  In the table, right-click the cell that contains the value by which you want to filter the data, and click **Filter by This Cell Value**.

As a result, the table displays only the rows for which this column contains this value. The column header is highlighted and displays the filter icon \(![](../Shared/Images/filter_icon_filter.png)\). If the table is on a generic inquiry form, a button is added to the filtering area and displays the column name and filtering value.

**Note:** You can also apply this filter by clicking the required cell and pressing SHIFT+F.

## To Clear a Filter {#_7ff861a6-5510-4bfa-9b45-43071f8297bd .section}

On the form with the table for which you want to clear a simple or quick filter, do one of the following:

-   If there is a button with the filter in the filtering area, drag the button to the table.
-   In the table, click the header of the column for which you want to clear the filter, and do one of the following:
    -   If you filtered data in a column with fixed set of options, click **Select All** and then click **OK**.
    -   If you filtered data in a column with unlimited number of values, click **Clear Filter**.

## To Turn On Column Sorting { .section}

1.  Open the form with the table for which you want to set up column sorting.
2.  In the table, click the header of the column whose values you want to sort.
3.  In the dialog box, select the sorting order—ascending \(that is, A to Z for text, lowest to highest for numbers, or newest to latest for dates\) or descending \(that is, Z to A for text, highest to lowest for numbers, or latest to newest for dates\).

The column header displays the ascending \(![](../Shared/Images/filter_icon_ascending.png)\) or descending \(![](../Shared/Images/filter_icon_descending.png)\) sorting icon.

**Note:** You can turn on sorting for only one column in a table at a time.

## To Turn Off Column Sorting { .section}

On the form with the table for which you want to clear column sorting, do the following:

1.  In the table, click the header of the column for which you want to clear sorting.
2.  Click the sorting option you have previously clicked. The column sorting is now turned off.

**Parent topic:**[Using Tables](../InterfaceGuide/Details_Table__con_Working_with.md)

