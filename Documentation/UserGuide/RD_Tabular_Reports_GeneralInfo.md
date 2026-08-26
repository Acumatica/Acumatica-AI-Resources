# Tabular Reports: General Information {#_5b0e0765-03d3-43a4-99c2-d16bc8f43887 .concept}

Tabular reports display data in rows \(typically records of some type\) and a series of columns, with the column headers displayed directly above the columns. This form of data presentation gives you the ability to compare and analyze data in one report. For example, you may need to analyze sales data by financial periods or by sales managers. By using the Acumatica Report Designer, you can configure tabular reports.

## Learning Objectives { .section}

In this chapter, you will learn how to create tabular reports in the Report Designer.

## Applicable Scenarios { .section}

You may want to create tabular reports by using the Acumatica Report Designer in the following circumstances:

-   You are responsible for the customization of Acumatica ERP in your company, including developing and modifying reports to give users the information they need to do their jobs.
-   You need to create tabular reports so that their users can compare and analyze the same type of data according to particular criteria.

## Examples of Tabular Reports { .section}

You can use a tabular report, for example, to view a breakdown of your sales by salesperson and inventory item. In this case, the rows would list salespeople \(by their names\), the columns would display inventory item names, and the cell at the intersection of each row and column would contain the total sales amount of the item for the particular salesperson.

Another example of a tabular report is a report that displays sales by month. In this case, the rows would list the items \(by their names\), the columns would show the months, and the cell at the intersection of each row and column would contain the total sales amount of the item in the month.

## Configuration of a Tabular Report { .section}

To configure a tabular report, in the Report Designer, you need to specify the following properties for the report:

-   **Data** &gt; **Groups**: In your report, you need to have a group to place the data in columns. For more information about data groups, see [Data Sorting and Grouping: General Information](RD_Sorting_and_Grouping_GeneralInfo.md).
-   **Behavior** &gt; **TabularReport**: The *True* value means that the report is tabular.
-   **Behavior** &gt; **TabularFreeze**: The value of this property, which is a number of pixels or centimeters, specifies the position of the red vertical line in the report layout. The line passes through all the group headers, the group footers, and the detail sections of the tabular report. You should use the topmost group section for the columns of the tabular report and place columns to the right of the red line. A new column is created for each new group of the data of this group section.
-   **Layout** &gt; **Width**: The value of this property, which is a number of pixels or centimeters, specifies the width of the report if it had only two columns—that is, the first column and the column that presents a series of columns. The difference between the values in **Layout** &gt; **Width** and **Behavior** &gt; **TabularFreeze** specifies the width of the column in the series of columns.

**Parent topic:**[Developing Tabular Reports](../UserGuide/RD_Tabular_Reports_Mapref.md)

