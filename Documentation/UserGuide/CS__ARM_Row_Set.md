# Row Sets {#_361737b1-9659-4a36-9494-53439eb00aa5 .concept}

A row set is a set of rows to be used in a report or in a group of reports that all use the same rows. You define row sets and their properties on the [Row Sets](CS_20_60_10.md) \(CS206010\) form. Although a row set can be used in multiple reports, each report can be associated with only one row set.

You can specify what rows will be displayed in the analytical report by creating a new row set, adding rows to it, and specifying this row set for the report on the [Report Definitions](CS_20_60_00.md) \(CS206000\) form.

## Row Set Properties { .section}

Each row in a row set has its properties displayed in the lines of the [Row Sets](CS_20_60_10.md) \(CS206010\) form. The properties of each row specify how the data of the row is selected, calculated, formatted, and displayed in the rows of the printed analytical report. The row data source, the data transformation and calculation rules are defined to display the calculated values in the row.

## Row Code and Description { .section}

The row code \(**Code** column\) is a unique value the system specifies when you add a new row to the row set. This code is used to identify the row within the row set, and the references to the rows in the formulas also include the row codes. The code assigned to the row can be changed later, but we do not recommend that you change the existing row codes, because they may be used in the formula references to this row. The rows in the row sets are sorted by row code in ascending order, and this is the order in which they appear in the generated report.

The row description \(**Description** column\) is a descriptive definition of the row contents. The data from this column is not printed in the analytical report. To include a row description in the report, you should create a caption for this column.

## Type { .section}

By defining the **Type** attribute in a row set, you specify what data will be displayed in a particular report row, and how the data in the row will be processed. For more information, see [Row Sets](CS_20_60_10.md).

## Value { .section}

By filling in the **Value** column for a row, you can define a particular value to be displayed in the report line. The values in the rows can be predefined parameters or computed values that the system calculates by using formulas. Values are frequently used to insert sums and totals into the report lines. For more information about formulas, see [Formulas](CS__ARM_Formulas.md).

The formulas used to calculate the data in the report lines usually include references to other rows or particular cells in the report. The expressions used to insert the data in the report rows can also use parameter queries to select the necessary data from the data source.

**Tip:** When you fill in the **Value** column to display a total values in the row, you need to confirm that the appropriate row **Type** is selected for this row to exclude it from the data that can be selected as a source for summarized value calculation.

## Format { .section}

In the **Format** column, you specify the format functions for the row cells. For the rules of row cell formatting, see [Cell Formatting](CS__ARM_Cells_Formatting.md).

## Data Source { .section}

In the **Data Source** column, you define the filtering criteria for the data to be displayed in a specific row of your report. To set up filtering criteria, you should specify the appropriate parameters in the [Data Source Editor](CS__ref_Data_Source_Editor.md) dialog box, which the system opens when you click the magnifier icon in **Data Source** column for any row.

You can specify filtering criteria on different levels \(row, column, unit, or entire report\), but the filtering rules defined for the unit have the highest priority. The rules defined on the row, column, and report levels have the next highest priorities \(in that order\). For example, if you want to define filtering criteria for a column and these criteria differ from the criteria that has already been specified for the rows, you need to clear the parameters or specify the **Amount Type**as *Not Set* for the **Data Source** of the row that interacts with the corresponding column so that the data filtering criteria specified for the column will be applied. For more information about the data filtering criteria, see [Data Filtering Criteria](CS__ARM_Data_Source.md#_fb2e02e9-bdb6-4c93-9508-3db4713ed5f9).

By specifying the data filtering parameters on the row level, you define the data structure in the report. For example, if a group of lines in the report must display the calculated values for a specific period, you should specify the start date and end date of the period for each row included in this group of report lines. If some lines in the report must display the data related to a specific account, and the columns must display the values calculated for certain periods, you should specify the account on the row level, and specify the start date and the end date of each period on the column level.

## Style { .section}

In the **Style** column, you can click the magnifier icon to bring up a dialog box in which you can define the printing style—such as the font, background color, or text alignment—for the data in the specific report row. You can use this column when some report row must be visually emphasized and have formatting that differs from that of the other rows in the report. For example, you can set special formatting properties for the rows that include the total values for some periods.

For more information about the printing style, see [Printing Style](CS__ARM_Printing_Style.md).

## Printing Control { .section}

In the **Printing Control** column, you can specify how the particular row will be printed in the report. For more information, see [Row Sets](CS_20_60_10.md).

## Page Formatting and Row Printing Control properties { .section}

Multiple formatting and printing control properties \(**Page Break**, **Height**, **Indent**, **Line Style**, **Suppress Empty**, **Hide Zero**, **Linked Row**, and **Base Row**\) are used to define the page formatting and to control printing. These properties include options that allow you to set the row printing options and block the printing of empty rows. For more information, see the description for the corresponding columns in the [Row Sets](CS_20_60_10.md) \(CS206010\) form reference.

## Column Group { .section}

In the **Column Group** column, you specify the group of columns where the values from the current row will be printed. Every column group selected for the current row can include one column or multiple columns. When a column group is specified for the current row, the same value should be specified as the **Printing Group** attribute for the columns that will be included in this analytical report where the values from the current row will be inserted.

For example, if the values from the row with the *R01* code should be displayed in columns *A* and *B*, the **Column Group** column of the row should have the same value as the **Printing Group** attribute defined for columns *A* and *B*.

## Unit Group { .section}

You use the **Unit Group** column to include the current row in a unit group. Unit groups are used to generate summarized or aggregated reports and to define the groups of rows to be displayed in some specific reports. Unit groups include the column sets and row sets in hierarchically organized units that can be used to summarize the values in the report formed from the various column sets and row sets.

**Parent topic:**[Managing Analytical Reports](../UserGuide/GL__GL_ARM_Reports.md)

