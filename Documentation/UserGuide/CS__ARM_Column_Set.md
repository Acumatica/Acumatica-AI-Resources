# Column Sets {#_dd9d50f5-ccc3-47b3-8d84-8a068a7eabab .concept}

Column sets are used to define the set of columns to be used in a specific report or in a variety of reports having a common layout. Every report can be associated with only one column set. When different reports use the same columns, you can create a single column set for them.

You can specify what columns will be displayed in an analytical report by creating a new column set on the [Column Sets](CS_20_60_20.md) \(CS206020\) form, adding the columns to it, and including this column set in the report on the [Report Definitions](CS_20_60_00.md) \(CS206000\) form of the Acumatica ERP analytical report manager.

## Column Set Properties { .section}

Each column in a column set has its properties displayed in the lines of the [Column Sets](CS_20_60_20.md) \(CS206020\) form. The properties of each column, described in the sections of this topic, specify how the data is selected, calculated, formatted, and displayed in the particular column of the printed analytical reports.

## Column Code and Description { .section}

The system assigns a letter code \(such as **A**, **B**, and **C**\) to every column that you add to the column set. The added columns are named as they would be named in an Excel file, and the letter assigned to the column cannot be changed later.

**Tip:** The system assigns letter code within **A** - **ZZZ** range.

In the **Description** row, you can add a description of the contents of each column. The data from the **Description** row is not automatically printed in the analytical report. To include the description column in the report, you should create a header for this column.

## Type { .section}

By defining the **Type** attribute for a column in the column set, you specify what data will be displayed in the particular report column, and how the data in this column will be processed. For more information, see [Column Sets](CS_20_60_20.md).

## Value { .section}

By specifying the **Value** attribute, you define a certain value to be displayed in the report column. The values in the columns can be predefined parameters or computed values that the system calculates by using formulas. Values are frequently used to insert sums and totals into the report columns.

The formulas used to calculate the data in the report columns usually include references to other columns or particular cells in the report. The expressions defined for the report columns can also use parameter queries to select the values from the data source and insert them in the column cells.

**Tip:** When you use the **Value** attribute to display predefined or calculated values in the column, you must confirm that the appropriate **Type** attribute is selected for this column; otherwise, the formula and value calculation rules will be ignored.

For more information about the formulas, see [Formulas](CS__ARM_Formulas.md).

## Rounding { .section}

By specifying the **Rounding** attribute, you set up the level of rounding that will be used in each particular column of your report to round the values. You can select one of the following types of rounding for a column: *No Rounding*, *Whole Dollars*, *Thousands*, *Whole Thousands*, *Millions*, *Whole Millions*, *Billions*, and *Whole Billions*. For a detailed description of each type, see [Column Sets](CS_20_60_20.md).

## Format { .section}

You use the **Format** attribute to specify the format functions for the column cells and row cells. For the rules of cell formatting, see [Cell Formatting](CS__ARM_Cells_Formatting.md).

## Page Formatting and Column Printing Control Properties { .section}

Multiple formatting and printing control properties \(**Width**, **Auto Height**, , **Extra Space**, **Suppress Empty**, **Hide Zero**, and **Suppress Line**\) are used to define page formatting and to control printing. These properties include options you can use to set the column printing options and block the printing of empty columns. For more information, see the description for the corresponding columns in [Column Sets](CS_20_60_20.md).

## Printing Group { .section}

You use the **Printing Group** attribute to define the group of rows where the values from the current column will be printed. Every printing group can include one row or multiple rows, and can be assigned to a single column set or multiple sets. When a column group attribute is specified for the current row, the same column group should be assigned to the **Printing Group** attribute for the column set that will be included in this analytical report.

## Unit Group { .section}

You use the **Unit Group** attribute to include the current column in the unit group. Unit groups are used to generate summarized or aggregated reports; they define the groups of columns to be displayed in some specific reports. Unit groups include the column sets and row sets in hierarchically organized units that can be used to summarize the values in the report formed from the various column sets and row sets.

## Printing Control { .section}

You use the **Printing Control** attribute to specify how the columns will be printed in the report. For more information, see [Column Sets](CS_20_60_20.md).

## Visible Formula { .section}

You use the **Visible Formula** attribute to define the conditions of hiding a column when you run the report. If you do not want to have needless columns \(for example, those with no data\) in the report, you can hide a column or multiple columns by specifying appropriate hiding conditions in the **Visible Formula** box.

Hiding a column does not remove the column or its data at all. The column will be displayed when the report is generated outside the specified conditions.

For example, suppose you have an annual report that has twelve columns, each of which accumulates data by month. If you run the report in March, it will contain the data for the three months \(from January to March\), so only three columns will contain data. In that case, there is no need to display other columns that have no data. Thus, you can specify conditions to hide the columns depending on the period of time when you run the report.

For the **Visible Formula** attribute, you can specify such values as =*True* \(for displaying the column\), *=False* \(for hiding the column\), or a formula with specific conditions for hiding the column depending on the `@StartPeriod` parameter.

## Style { .section}

You can use the **Style** attribute to define the printing style—such as the font, background color, or text alignment—for the data in a specific report column. This attribute can be used when some report column must be visually emphasized and have formatting that differs from that of the other columns in the report. For example, you can set special formatting properties for the columns that include the total values for some periods.

For more information about the printing style, see [Printing Style](CS__ARM_Printing_Style.md).

## Data Source { .section}

You use the **Data Source** attribute to define the filtering criteria for the data to be displayed in a specific column of your report. To set up filtering criteria, you should specify appropriate parameters in the Data Source Editor \([Data Source Editor](CS__ref_Data_Source_Editor.md)\) dialog box. You can specify criteria on different levels \(row, column, unit, or entire report\). The filtering rules defined for the unit have the highest priority. The rules defined on the row, column, and report levels have the next highest priorities \(in that order\). For example, if you want to define filtering criteria for a column and these criteria differ from the criteria that has already been specified for the rows, you need to clear the parameters or specify them as **Not Set** for the row that interacts with the corresponding column, so that the data filtering criteria specified for the column will be applied. For more information about the data filtering criteria, see [Data Filtering Criteria](CS__ARM_Data_Source.md#_fb2e02e9-bdb6-4c93-9508-3db4713ed5f9).

By specifying the data filtering parameters on the row level, you define the data structure in the report. For example, if a group of lines in the report must display the calculated values for the specific period, you should specify the start date and the end date of the period for each row included in this group of report lines. If some lines in the report must display the data related to a specific account, and the columns must display the values calculated for certain periods, you should specify the account on the row level, and specify the start date and the end date of each period on the columns level.

**Parent topic:**[Managing Analytical Reports](../UserGuide/GL__GL_ARM_Reports.md)

