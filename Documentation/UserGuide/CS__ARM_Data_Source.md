# Data Source {#_c2b2e88d-1d50-4253-a6d6-ef63673f48a7 .concept}

The data source defines and applies the data filtering criteria to select the data that will be used in the report. You can include the selected data in the report in the following ways:

-   For each row of a row set, by specifying data filtering criteria in the [Data Source Editor](CS__ref_Data_Source_Editor.md) dialog box. You invoke this dialog box by clicking the magnifier icon in the **Data Source** column on the [Row Sets](CS_20_60_10.md) \(CS206010\) form\).
-   For each column of a column set, by specifying data filtering criteria for the report columns in the [Data Source Editor](CS__ref_Data_Source_Editor.md) dialog box. You invoke this dialog box by clicking the magnifier icon in the **Data Source** cell for the column, in the lower table of the [Column Sets](CS_20_60_20.md) \(CS206020\) form\).
-   For each unit that includes rows and columns, by specifying data filtering criteria in the [Data Source Editor](CS__ref_Data_Source_Editor.md) dialog box. You invoke this dialog box by clicking the magnifier icon in the **Data Source** column \(in the table of the Units area\) on the [Unit Sets](CS_20_60_30.md) \(CS206030\) form.
-   For the data source defined for the entire report, by specifying additional data filtering criteria to be applied to the report rows and columns. You do this by specifying the data source parameters on the [Report Definitions](CS_20_60_00.md) \(CS206000\) form.

Thus, you can define the data filtering criteria for a separate row, column, or unit included in the report, or for the whole report at once.

## Data Filtering Criteria { .section}

Data filtering criteria specify how the data will be selected from the database. These criteria can be defined for the whole report, for a unit, or for any specific row or column in the report. Usually, the criteria defined for the rows and columns reflect the report structure: how the report data will be grouped in rows and columns.

The data filtering criteria defined for the whole report or for the individual rows and columns, use common parameters that identify the subsets of data to be displayed in the report. These parameters can be specified in the [Data Source Editor](CS__ref_Data_Source_Editor.md) dialog box.

Data filtering criteria specified for a report or for an individual row or column in the report includes the following \(further described in the following sections of this topic\):

-   Specific group of accounts and subaccounts: The specific group of accounts and subaccounts used to limit the volume of data to be included in the report
-   Specific range of periods \(**Start Period** and **End Period**\): The range of periods for the data to be used in the report
-   Type of amount: The specific amount type to be used in the ARM report \(in the whole report or in a separate row or column\), such as the beginning balance amount or ending balance amount

## Specific Group of Accounts and Subaccounts { .section}

To eliminate the data that is not related to a specific account and subaccount, or define the range of accounts and subaccounts to be used for data filtering criteria in the report, you should define the account and subaccount ranges.

To specify a predefined group of accounts and subaccounts to be included in the report, you can select an **Account Class**. To set additional limitations and select the specific accounts, subaccounts, or both as data filtering criteria, you should enter values in the **Start Account** and **End Account** \(and **Start Sub.** and**End Sub.**, if subaccounts are used in your system and you want to report on only a specific range of subaccounts\) boxes.

If the accounts specified in the **Account Class**, **Start Account**, and **End Account** boxes have no common data, null values will be displayed in the report rows, columns, or both.

**Tip:** You can use denominated accounts for retrieving amounts in a foreign currency.

## Specific Period { .section}

To define specific periods for the data to be included in the report, specify **Start Period** and **End Period** values.

The data related to the periods not included in the selected range of periods will be filtered out and not included in the report.

## Amount Type { .section}

To define the type of amounts that should be used in the report lines \(displayed or used in calculations\), you should select the appropriate **Amount Type** option in the [Data Source Editor](CS__ref_Data_Source_Editor.md) dialog box or on the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) \(CS206000\) form. The following types of amounts can be selected: *Turnover*, *Credit*, *Debit*, *Beg. Balance*, *Ending Balance*. These types of amounts can be specified for use in the whole analytical report or for a separate row or column.

You can also use the amounts in a foreign currency retrieved from the denominated accounts by specifying one of the following options: *Curr. Turnover*, *Curr. Credit*, *Curr. Debit*, *Curr. Beg. Balance*, or *Curr. Ending Balance*.

If no **Amount Type** is specified for any report item \(such as row or column\), the null value will be displayed in the report row or column.

**Parent topic:**[Managing Analytical Reports](../UserGuide/GL__GL_ARM_Reports.md)

