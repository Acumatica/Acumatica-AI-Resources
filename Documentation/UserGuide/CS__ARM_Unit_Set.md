# Unit Sets {#_e99f5f68-c354-417b-a143-af621296157a .concept}

Unit sets are used to organize the report structure in a report or a group of reports when the groups of rows and columns included in the report all use data from different data sources, or when formulas must be applied to calculate the report values based on specific data from the explicitly defined groups of columns and rows. Unit sets and their properties are defined on the [Unit Sets](CS_20_60_30.md) \(CS206030\) form.

A unit set can include one unit or multiple units that define the calculation formulas \(for report values\), the printing groups, and the data source for the dataset to be used. Units allow for applying additional data filtering criteria and data calculations for the specific data set in the report. You can specify what units will be included in the unit set by adding the units in it and organizing the unit structure in the report. Each unit set can be used in a report or a group of reports; however, each report can use only one unit set.

## Unit Set Properties { .section}

Each unit in a unit set has its properties displayed in the lines of the [Unit Sets](CS_20_60_30.md) \(CS206030\) form. The properties of each unit, described in the sections of this topic, specify how the data is selected, calculated, and displayed in the unit of the printed analytical reports.

## Unit Set Code and Description { .section}

The unit set code \(**Code** column\) is an unique value specified by the system when a new unit is added to the unit set. This code is used to identify the unit within the row set, and the references in the formulas defined for the units can also include the unit codes.

The units in the unit sets are sorted by the row code in ascending order, and they appear in this order in the hierarchical structure on the [Unit Sets](CS_20_60_30.md) \(CS206030\) form. The **Code** column value can be modified manually. We recommend that you avoid using successive values as the codes of new units added to the unit set, to make it easier if you need to add units between the existing ones.

For each unit, the **Description** column should contain a description of the unit. The value in this column is not printed in the analytical report.

## Value { .section}

By specifying the **Value** unit attribute, you can define a particular calculated value to be displayed in the report. The values in the units can be predefined parameters or computed values that the system calculates by using formulas. Values are frequently used to insert sums and totals into the reports.

The formulas used to calculate the data in the units usually include references to other units. The expressions defined for the units can also use parameter queries to select the values from the data source and insert them in the column cells. For more information about formulas, see [Formulas](CS__ARM_Formulas.md).

The values defined for the units in the analytical reports usually specify the report structure and follow the user-defined unit's hierarchical structure. The units from the top hierarchical level are usually based on the calculated values from the units on the lower hierarchical levels. The higher hierarchical levels can include the summarized and aggregated values based on the units from the lower hierarchical levels.

## Printing Group { .section}

The **Printing Group** attribute identifies which groups of columns and rows from the row and column sets will be included in the current unit. The **Printing Group** parameter should be specified for the respective columns and rows in the column and row sets of the analytical report.

## Data Source { .section}

You can use the **Data Source** attribute to define the data filtering criteria for the data set to be displayed in the specific report column. You can specify the data filtering criteria on the row, column, unit, and report levels. The filtering rules defined for the data rows are applied first, and the rules defined on the column level are applied to the data set formed by applying the rules defined on the row level; after that, the criteria defined on the unit level are applied. The data filtering criteria specified on the unit level are applied to the unit as a number of rows and columns included in it. If the data selection criteria set on the unit level have no common data source with the data set received from the data source defined on the row and column level, the report will not produce any meaningful results.

The data filtering rules used in the data source definition on the unit level help you to narrow the criteria applied on the row and column level. For example, if a group of columns in the report included in the unit must display the calculated values for the specific subaccounts, you should set the start subaccount and the end subaccount in the data filtering rules defined for the unit.

For more information about data filtering criteria, see [Data Source](CS__ARM_Data_Source.md).

**Parent topic:**[Managing Analytical Reports](../UserGuide/GL__GL_ARM_Reports.md)

