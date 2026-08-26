# To Define the Columns of the Column Set {#_e7c8b8c0-0286-4b5a-ab24-54207f28c6d0 .task}

On the [Column Sets](CS_20_60_20.md) \(CS206020\) form, you can perform the following operations, each of which is described in this topic:

-   Add new columns to the column set.
-   Add a column header for any column or group of columns in the column set, and specify the printing style of the header. The header for a column or a column range should be defined after the columns are added to the column set.
-   Specify the attributes for each column in the column set. By changing the column attributes, you can define the data selection, processing, and formatting rules for the data to be included in this column.
-   Delete any column from the column set

The [Column Sets](CS_20_60_20.md) form has two tables below the Summary area: the upper table with the column headers of the column set; and the lower table, which has the columns of the column set and their attributes.

## To Create a Column { .section}

1.  Open the [Column Sets](CS_20_60_20.md) \(CS206020\) form.
2.  In the **Code** box of the Summary area, select the code of the column set in which you want to add a column.
3.  On the table toolbar of the lower table, click **New**. The new column is added to the right of the existing columns.
4.  Specify the attributes of the new column in the relevant rows of the added column.
5.  On the form toolbar, click **Save**.

## To Add a Header for a Column or Column Range { .section}

To add a text description for a single column or a column range in the printed report, you define a header for a column or a group of columns. In the upper table of the [Column Sets](CS_20_60_20.md) \(CS206020\) form, you can to add the headers to the column set and define in which rows the headers should be printed.

In the upper table, you can define the headers for a single column or a column range, and insert the headers in the rows specified by the **Printing Group** attribute. You can add, delete, or change the order of the headers, and copy the printing style defined for a certain header to apply it to another header in the analytical report.

To add a header for a single column or a range of columns, do the following:

1.  Open the [Column Sets](CS_20_60_20.md) \(CS206020\) form.
2.  In the **Code** box of the Summary area, select the code of the column set to which you want to add a header.
3.  On the table toolbar of the upper table, click **New**.
4.  If the header should be printed in a specific row, in the **Printing Group** column, enter the printing group code. \(The same code should be entered in the **Column Group** column for the relevant row.\)
5.  In the column where the header should appear, enter the header text.
6.  Use the lookup control in the column to set the column range for the header printing and define the printing style.

    **Tip:** By default, the column range is limited to the single column where the header text is entered. To make the header span a range of columns, enter the codes of the start column and the end column in the range.

7.  On the form toolbar, click **Save**.

## To View and Edit the Column Attributes { .section}

You can edit any column attributes by changing the values in the relevant rows. To edit columns, do the following:

1.  Open the [Column Sets](CS_20_60_20.md) \(CS206020\) form.
2.  In the **Code** box of the Summary area, select the code of the column set in which you want to edit a column.
3.  In the lower table, click the column whose attributes you want to change, fill in or edit the values.
4.  Repeat Step 3 for each column you want to edit.
5.  On the form toolbar, click **Save**.

## To Delete a Column { .section}

1.  Open the [Column Sets](CS_20_60_20.md) \(CS206020\) form.
2.  In the **Code** box of the Summary area, select the code of the column set in which you want to delete a column.
3.  In the lower table, click the column to be deleted.
4.  On the table toolbar, click **Delete**.
5.  On the form toolbar, click **Save**.

## To Use the Column Set in the Analytical Reports { .section}

Once you define a column set, you can use this column set in any analytical report you configure using the [Report Definitions](CS_20_60_00.md) \(CS206000\) form.

**Parent topic:**[Managing Analytical Reports](../UserGuide/GL__GL_ARM_Reports.md)

