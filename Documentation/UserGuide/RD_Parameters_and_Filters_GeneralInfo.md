# Parameters and Filters: General Information {#_652b5780-df70-48b5-b688-cbf30c2489ac .concept}

In the Acumatica Report Designer, you can define parameters for the report you are designing, and users will specify the values for these parameters before they run the resulting report. For the report, you also can specify filters that can be used both in conjunction with parameters to limit the data based on the specified value and separately to always limit the data.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following in the Report Designer:

-   Specify parameters in a report
-   Set up filters in a report

## Applicable Scenarios { .section}

You may want to use parameters and filters in reports you design in the Acumatica Report Designer in the following circumstances:

-   You are responsible for the customization of Acumatica ERP in your company, including developing and modifying reports to give users the information they need to do their jobs.
-   You want to modify an existing report to filter data, or add, modify, or define parameters that users can select to view data that meets their current needs.

## Parameters { .section}

Report parameters are variables that the user specifies on the report form before running the report. You can use parameters to share values between two or more reports, or in expressions and formulas to calculate values for multiple fields within the same report. Based on the parameter, the report engine creates a variable within the report, which can be referred to as a database field can. When a parameter is referred to in code, it starts with the *@* symbol.

You can specify parameters for a report on the **Parameters** tab of the Schema Builder. You add a parameter by clicking the **Add** button \(lower left\) and specifying the following settings.

|Parameter|Description|
|---------|-----------|
|**Name** \(required\)|The name that you assign to the parameter, which will be used internally.|
|**Data Type** \(required\)|The data type of the parameter. You can select one of the following types from the drop-down list: *Boolean*, *Date time*, *Float*, *Integer*, and *String*.|
|**Prompt**|The title that is displayed to the left of the parameter on the **Report Parameters** tab of the report form in Acumatica ERP. If this value is not specified, the prompt and the box for the user to specify the parameter will not be displayed, and a user will not be able to enter or select any value; in this case, you can use this hidden parameter internally.|
|**Default Value**|The value of the parameter when the user opens the report form; this value is used by default if a user does not specify another value. While designing and debugging a report in the Report Designer, you can experiment with specifying different values. You can use expressions and formulas to define parameters' default values. In the final version of the report, in the **Default Value** box, you specify the preferred value or leave the setting empty.|
|**Input Mask**|The input mask to be used for entering the data for the parameter. For example, you can specify an input mask for a telephone number. You can specify a formula in the Expression Editor to define the input mask.|
|**View Name**|The lookup window that will open to help the user running the report select the parameter. Usually, in the **View Name** box, the *Report.GetFieldSchema\(DAC.field\)* function is selected. This function returns a detailed description of the lookup window depending upon the specified DAC and field. The lookup window contains all the possible values of the parameter from which the user running the report can select the necessary value.

 **Tip:** You can also use any field of any existing outside DAC if it has an attribute with appropriate lookup columns for the report parameter being adjusted. You can create a special DAC with the needed lookup fields if you have not found the appropriate field or fields in the existing DACs.

|
|**Column Span**|The column span to be used to display the parameter on the report form. The default column span is *1*, indicating that the parameter occupies one column.|
|**Allow Null Values**|A check box that you select to indicate that the parameter can be null. By default, the check box is cleared, which means that the parameter cannot be null.|
|**Visible**|A check box that you select to indicate that the parameter will be visible. By default, the check box is selected. If you clear the check box, the parameter will not appear on the **Report Parameters** tab of the report form and will be used only internally.|
|**Required**|A check box that you use to specify whether the parameter is required to run the report. By default, the check box is cleared, which means that a user can run the report without specifying a value for the parameter. If you select the check box, a user cannot run the report without specifying a value for this parameter.

 If you click the selected check one more time, it will get to its third option, *Required by Condition* \(the check box is filled with square, instead of check mark\). You select this option to let the system calculate whether the parameter is required or not when you open the report form. The system does the calculation based on the parameter configuration, which is defined by the type and attributes of the corresponding DAC field.

 For example, suppose that for the BranchID field, it is defined that it becomes required if the *Multiple Base Currencies* feature is enabled in the system. If you use the BranchID field as a parameter of your report and select the *Required by Condition* option for it, the system will take the current value from the corresponding attribute of the DAC field.

|
|**Available Values**|A table in which you can specify the values that a user can select in the box of the parameter on the report form.|

You delete any parameter from the list on the **Parameters** tab of the Schema Builder by clicking the parameter in the left pane and then clicking the **Remove** button.

Acumatica ERP has the following predefined date-relative parameters:

-   *@Today*: The business day.
-   *@WeekStart* and *@WeekEnd*: The start and end of the current week. The start and end of the week are determined based on the default system locale or the locale the user has selected when signing in to Acumatica ERP. System locales are defined on the [System Locales](../Shared/../UserGuide/SM_20_05_50.md) \(SM200550\) form.
-   *@MonthStart* and *@MonthEnd*: The start and end of the current month.
-   *@QuarterStart* and *@QuarterEnd*: The start and end of the current quarter.
-   *@PeriodStart* and *@PeriodEnd*: The start and end of the current financial period. The financial periods are defined on the [Financial Year](../Shared/../UserGuide/GL_10_10_00.md) \(GL101000\) form.

    For more information about financial periods in Acumatica ERP, see [Managing Financial Periods](../Shared/../UserGuide/Finance_ManagingPeriods_Mapref.md).

-   *@YearStart* and *@YearEnd*: The start and end of the current calendar year.

**Tip:** All the date-relative parameters use the date \(in UTC\) of the server used to run the Acumatica ERP instance as the business date.

## Filters { .section}

You can use filters to limit the volume of data selected for the reports, specify more specific criteria for selecting data from data tables, and remove unnecessary data as a result of the table joining. When you define filters, you can use parameters. Multiple filters are transformed into one SQL WHERE clause.

You can specify filters in the following ways:

-   On the **Filters** tab of the Schema Builder.
-   In the FilterExp Collection Editor \(that is, the **FilterExp Collection Editor** dialog box\). You use the **Data** &gt; **Filters** property of the report in the Properties pane of the **Properties** tab to open the FilterExp Collection Editor.

Filter expressions use the data field names and parameters to specify the criteria for data processing. You specify filters as one filter clause or multiple filter clauses. For each clause, you specify the following settings:

-   **Data Field**: A data field or parameter that you select from the list.
-   **Condition**: The logical operation that applies to the value of the selected property. You select a condition from the list of available conditions.
-   **Value 1** \(and **Value 2**, if needed\): A value for the logical condition that is used to filter the data. Depending on the selected property and condition, you enter one value or two values. Each value must conform with the data type of the selected property. You can use parameters for value settings.

    Not all conditions require you to specify values. For example, values are not necessary for the *Is Null* and *IsNotNull* conditions.


You can use *And* and *Or* operators and parentheses to group clauses into logical expressions. Parentheses can be used in logical statements to define the order of operations. The *And* and *Or* operators work on a unit in parentheses as if the unit was a single clause.

Any defined expression can be deleted. You can delete an expression in the following ways:

-   On the **Filters** tab of the Schema Builder, by clicking the row with the filter you want to delete and pressing the Delete key.
-   In the FilterExp Collection Editor, by clicking the row with the filter you want to delete and then clicking the **Remove** button \(or pressing the Delete key\).

## Optional Data Filtering { .section}

Acumatica ERP gives users the ability to add filters to a generated report. Before a user runs the report, the user can add filters on the **Sorting &amp; Filtering** tab of the report form, in the **Filtering** table. However, the user cannot view, delete, or modify the filters that are defined in the Report Designer.

In the Report Designer, you can manage the list of fields that a user can use to define the sorting and filtering conditions of the published report. When a report is selected, in the **Behavior** &gt; **ViewerFieldsMode** property, you can select the following settings:

-   *MergeWithUsed* \(default\): With this setting, on the **Additional Sort and Filters** tab of the report form, the user can select any of the following as the properties of filtering and sorting conditions: any data fields used in the text boxes, any data fields used in the sorting and filtering conditions of the report, and any data fields listed on the **Viewer Fields** tab of the Schema Builder.
-   *OnlySpecified*: With this setting, on the **Additional Sort and Filters** tab of the report form, the user can select only the data fields specified on the **Viewer Fields** tab of the Schema Builder.

    **Tip:** On the **Viewer Fields** tab of the Schema Builder, you can add all the data fields used in the report to the list of available properties. To do that, you click the **Load Used Fields** button.


**Parent topic:**[Using Parameters and Filters](../UserGuide/RD_Parameters_and_Filters_Mapref.md)

