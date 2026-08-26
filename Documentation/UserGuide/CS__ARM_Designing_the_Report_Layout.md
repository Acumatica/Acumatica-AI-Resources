# Report Structure Design {#_90b3d3d4-2add-41c0-84bc-33ced2cb1a3e .concept}

The report structure determines the report outlook, and identifies the rows and columns to be included in the report. To design an analytical report, you define what sections will be included in the report, how the data will be grouped in the report, and what rows and columns will be included in the report; you also specify the order in which the rows and columns will be displayed in the report. You also define the headers for the report columns and for the report itself, and specify the captions for the rows. All the parameters required to define the analytical report structure can be specified by using the Analytical Report Manager forms.

## Selecting the Rows and Columns for the Report { .section}

Every report has its set of rows and columns, which can be specific for this report or can be used in other reports. Every row included in the row set and every column included in the column set has attributes specifying what data will be displayed in the report.

The row set and column set can be used in a specific report or in a variety of reports that have common data selection criteria and a similar structure.

To define the rows and columns to be included in the report, you should perform the following steps:

1.  You open the [Row Sets](CS_20_60_10.md) \(CS206010\) form to view the predefined row sets that you can use for your report. On this form, you can modify a row set or create a new one.

    For a detailed description of row sets, see [Row Sets](CS__ARM_Row_Set.md).

2.  You open the [Column Sets](CS_20_60_20.md) \(CS206020\) form to view the predefined column sets that you can use for your report. On this form, you can modify a column set or create a new one.

    For a detailed description of the column sets, see [Column Sets](CS__ARM_Column_Set.md).

3.  You open the [Report Definitions](CS_20_60_00.md) \(CS206000\) form, and in the **Row Set** and **Column Set** boxes, you select the set that you want to use in your report.

**Tip:** The row and column sets are defined for the report as a whole, and if the report includes multiple sections, each consisting of various rows and columns, the row set and column set should include all rows and columns for all the report sections.

## Defining the Report Sections { .section}

Every report can include one section or multiple sections made up of rows and columns. The grouping rules for rows and columns can be defined separately for each report section.

To make a report with more than one section, you need to specify the report with a unit set. You can define the structure of the sections in the report by creating a unit hierarchy on the [Unit Sets](CS_20_60_30.md) \(CS206030\) form.

To define what units will be included in the report, you should perform the following steps:

1.  You open the [Unit Sets](CS_20_60_30.md) form to view the predefined unit sets that you can use for your report. On this form, you can modify a unit set or create a new one.
2.  You open the [Report Definitions](CS_20_60_00.md) \(CS206000\) form, and in the **Unit Set** box, select the unit set that you want to use in your report.

    For a detailed description of unit sets, see [Unit Sets](CS__ARM_Unit_Set.md).


For each section in the report, you can specify the following:

-   The rows and columns to be included in this section.
-   The data selection criteria used to include the data in this section of the report.

## Defining the Rows and Columns to Be Included in the Report Section { .section}

The rows and columns to be displayed in the analytical report sections can be selected separately for each report section.

To specify the rows and columns to be included in a report section, you perform the following steps:

1.  You open the [Unit Sets](CS_20_60_30.md) \(CS206030\) form, and specify the **Printing Group** column value for the unit that is related to this report section.



2.  You open the [Row Sets](CS_20_60_10.md) \(CS206010\) form, and specify the same value in the **Unit Group** column for all the rows to be included in this report section.



3.  Open the [Column Sets](CS_20_60_20.md) \(CS206020\) form and specify the same value in the **Unit Group** column for all the columns to be included in this report section.

## Defining the Data Selection Criteria for the Report Sections { .section}

Depending on the report structure and the need to use the same row sets and column sets in a variety of reports, you can define the section-specific data filtering criteria for the rows and columns included in a report section, or define them separately for each unit.

To decide where to define the data filtering criteria, you should use the following guidelines:

-   When the row set and column set are used in only one report, or the other reports' row set and column set have common data selection criteria, the data selection criteria for each report section can be defined at the row and column levels.
-   When the row set and column set will be used in another report, the data selection criteria for each report section should be defined at the unit level.

To define the data selection criteria for the report section at the row and column level, you perform the following steps:

1.  You specify the data source parameters for each row included in the report section.
2.  You specify the data source parameters for each column included in the report section.

To define the data selection criteria for the report section at the unit level, you specify the data source parameters for the unit related to the specific report section.

For more information about the data source parameters, see [Data Source Editor](CS__ref_Data_Source_Editor.md) and [Data Source](CS__ARM_Data_Source.md)

## Grouping the Report Sections { .section}

Depending on the data sampling rules, the sections in the report can be arranged in a flat or hierarchical structure.

The flat structure can be used when the report consists of multiple sets of data assembled in different numbers of rows and columns. A hierarchical report structure is used when a report section includes the data from the other sections of the report \(for example, the consolidated sales volumes followed by separation of the sales volumes by the time periods\).

To define how the sections will be grouped and displayed in the report, you should define the unit structure in the unit set selected for the report. For a flat report structure, the sections will be included in the report in the same order as the corresponding units in the unit set selected for the report. For a hierarchical structure, the sections corresponding to the nodes in the units' hierarchical structure will be displayed before the sections corresponding to the child nodes or leaves in the units' hierarchical structure.

When the sections in the report are organized in a hierarchical structure, you usually apply additional data filtering rules for the node units to include the particular data from the other report sections in the section corresponding to the node unit, use the formulas in the node units if the data in one report section is calculated by using the data from the other report sections, or apply both formulas and data filtering rules.

To group the section in the report, you perform the following steps:

1.  You open the [Unit Sets](CS_20_60_30.md) \(CS206030\) form and select the unit set that you want to use in your report.
2.  In the left area of the form, you set up the units in a hierarchical or flat structure.
3.  In the table area of the form, for the node units in the unit set, you define the **Data Source** column to apply the additional data filtering criteria for data selection for the node unit, and define the formulas in the **Values** column to calculate the values based on the data from the other units, when necessary.

    For a detailed description of specifying the unit attributes, see [To Define the Units to Be Included in the Unit Set](CS__ARM_Defining_the_Units_to_be_Included_in_the_Unit_Set.md).


## Specifying the Report Headers and Captions { .section}

To provide the description of the data included in the report, you should define the titles for the report and its sections, add the headers for the report columns or column groups, and specify the captions for the rows or a group of rows. For more information, see [To Add a Report Title](CS__ARM_Setting_Up_the_Report_Headline.md) and [To Add a Title for a Report Section](CS__ARM_Setting_Up_the_Headline_for_a_Report_Section.md).

**Parent topic:**[Managing Analytical Reports](../UserGuide/GL__GL_ARM_Reports.md)

