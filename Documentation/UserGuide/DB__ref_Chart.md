# Add Widget Dialog Box for Chart Widgets

You use the **Add Widget** dialog box to add a widget to a dashboard and to modify an existing widget. The settings that you need to specify depend on the widget type.

When you add a new widget by using this dialog box, you perform two steps. In the first step, you select the type of the widget that you want to add to the dashboard; the system brings up the version of the **Add Widget** dialog box that is specific to the widget type. In the second step, you specify the properties that are specific to the selected widget type. When you modify an existing widget, you perform only the second step. \(In this case, the system immediately brings up the appropriate version of the dialog box.\)

## Add Widget Dialog Box: Step 1

When you want to add a new widget to a dashboard, you first need to select the option button representing the type of the widget in the **Add Widget** dialog box. The elements of this dialog box are described in the following table.

<table id="_9cab714c-efd3-42ea-b0db-f18314b2681d"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Widget Type**

</td><td>

The type of widget to be added to the dashboard, which can be one of the following:-   **Chart**: A graphical representation of data from an Acumatica ERP form. You can use charts of the following types:
    -   **Doughnut**
    -   **Line**
    -   **Column**
    -   **Stacked Column**
    -   **Bar**
    -   **Stacked Bar**
    -   **Funnel**
-   **Data Table**: A systematic display of data from an Acumatica ERP form, with data arranged into rows and columns.
-   **Meter**: A statistical record that tracks progress or achievement toward a specific performance indicator by displaying key parameters relevant to your organization's business processes. Data appears as a gauge with normal, warning, and alarm levels.
-   **Score Card**: A statistical record showing a single performance parameter.
-   **Trend Card**: A statistical record showing parameters whose dynamic change is important to the business processes of your organization.
-   **Pivot Table**: A data table organized to filter, sort, count, total, or give the average of data from an Acumatica ERP inquiry, displaying the summarized results in a separate table.
-   **Embedded Page**: A document or an image that is stored on an external resource, such as cloud storage.
-   **Link**: A link to an Acumatica ERP form, report, or dashboard.
-   **Wiki**: A reference topic, procedure, business plan, or other content that is frequently consulted by Acumatica ERP users.
-   **Header**: A title that can be added to the widget section.
-   **Power BI**: A chart, scorecard, or other analytical information that is represented on a Power BI dashboard designed by your organization.

</td></tr><tr><td colspan="2">

The dialog box has the following buttons.

</td></tr><tr><td>

**Cancel**

</td><td>

Cancels the changes and closes the dialog box.

</td></tr><tr><td>

**Next**

</td><td>

Goes to the next step of the **Add Widget** dialog box for the selected widget type.

</td></tr></tbody>
</table>

## Add Widget Dialog Box: Step 2


<table id="table_xwr_r2q_2s"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Inquiry Screen**

</td><td>

Required. The name of the inquiry form that provides data for the widget.

</td></tr><tr><td>

**Inquiry Parameters**

</td><td>

A button that you click to open the **Inquiry Parameters** dialog box so you can specify the parameters for the inquiry selected in the **Inquiry Screen** box. \(For the description of this dialog box, see [Other Dialog Boxes](#_8e15a5e2-dc88-4f1a-a02e-10c421dc3563).\)

</td></tr><tr><td>

**Shared Filter to Apply**

</td><td>

The shared filter that is applied to the data in the widget. You can apply a shared filter or leave the box blank to display all the data from the inquiry.

</td></tr><tr><td>

**Filter Settings**

</td><td>

A button that you click to open the **Filter Settings** dialog box. \(For the description of this dialog box, see [Other Dialog Boxes](#_8e15a5e2-dc88-4f1a-a02e-10c421dc3563).\) You use this dialog box to configure a filter for data displayed on the widget.

</td></tr><tr><td>

**Configure**

</td><td>

A button that you click to open the **Chart Settings** dialog box. \(For the description of this dialog box, see [Other Dialog Boxes](#_8e15a5e2-dc88-4f1a-a02e-10c421dc3563).\) You need to open this dialog box when you want to specify properties that are specific to the chart type.

</td></tr><tr><td>

**Caption**

</td><td>

The name of the widget on the dashboard.

</td></tr><tr><td colspan="2">

The dialog box has the following buttons.

</td></tr><tr><td>

**Cancel**

</td><td>

Cancels your changes and closes the dialog box.

</td></tr><tr><td>

**Previous**

</td><td>

Returns to the previous step of the dialog box without saving your changes. The button appears only when you are adding a widget.

</td></tr><tr><td>

**Finish**

</td><td>

Saves your changes and closes the dialog box.

</td></tr></tbody>
</table>

## Other Dialog Boxes

This section describes dialog boxes that you can open from the **Widget Properties** dialog box.

|Element|Description|
|-------|-----------|
|**Parameter**|The name of the parameter of the inquiry selected in the **Inquiry Screen** box.|
|**Value**|The value of the inquiry parameter.|
|**Use Default Value**|A check box that indicates \(if selected\) that a default value should be used for the inquiry parameter. You can specify the default value on the [Generic Inquiry](../Shared/../UserGuide/SM_20_80_00.md) \(SM208000\) form.|
|The dialog box has the following buttons.|
|**Cancel**|Cancels your changes and closes the dialog box.|
|**OK**|Saves your changes and closes the dialog box.|

<table id="_35e31810-eda8-4d16-b594-484c4cf39202"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Active**

</td><td>

A check box that indicates \(if selected\) that the row is an active filter.

</td></tr><tr><td>

**Brackets**

</td><td>

The opening bracket or brackets for composing a logical expression with multiple filtering conditions.

</td></tr><tr><td>

**Data Field**

</td><td>

The field whose value the filter should be applied to.

</td></tr><tr><td>

**Condition**

</td><td>

One of the following logical conditions, which will be applied to the value of the field specified as the **Data Field** and the values in the **Value 1** and **Value 2** fields if applicable:

 -   *Equals*: Returns *TRUE* if the value of the **Data Field** field is equal to the value specified as **Value 1**.
-   *Does Not Equal*: Returns *TRUE* if the field value is not equal to the **Value 1** value.
-   *Is Greater Than*: Returns *TRUE* if the field value is greater than the **Value 1** value.
-   *Is Greater Than or Equal To*: Returns *TRUE* if the field value is greater than or equal to the **Value 1** value.
-   *Is Less Than*: Returns *TRUE* if the field value is less than the **Value 1** value.
-   *Is Less Than or Equal To*: Returns *TRUE* if the field value is less than or equal to the **Value 1** value.
-   *Is Between*: Returns *TRUE* if the field value is between the **Value 1** and **Value 2** values. \(For this option, you must specify both **Value 1** and **Value 2**.\)
-   *Contains*: Returns *TRUE* if the field value \(string\) contains the **Value 1** value.
-   *Does Not Contain*: Returns *TRUE* if the field value \(string\) does not contain the **Value 1** value.
-   *Starts With*: Returns *TRUE* if the field value contains at the beginning the **Value 1** value.
-   *Ends With*: Returns *TRUE* if the field value ends with the **Value 1** value.
-   *Is Empty*: Returns *TRUE* if the field value is empty \(null\).
-   *Is Not Empty*: Returns *TRUE* if the field value is not empty \(not null\).

 If you specify a date in the **Value** or **Value 2** box but do not specify a time, the system uses `00:00:00` or `23:59:99` as the time, depending on the condition.

 If you specify date-relative parameters, such as *@Today*, in those boxes, the system also uses `00:00:00` or `23:59:99` as the time, depending on the condition.

 **Tip:** If you try to filter the inquiry results by using a string that contains an underscore, the result will also contain the values with the same string with any symbol instead of the underscore. For example, if you try to filter the inquiry by a customer name that contains the *Customer\_Name* string, the system will return all the customers whose name contains any of the following strings: *Customer\_Name*, *Customer-Name*, and *Customer Name*. The reason that all of these strings will be returned is that the underscore is used as a wildcard character.

</td></tr><tr><td>

**Use Parameter**

</td><td>

A check box that indicates \(if selected\) that a dashboard parameter is used in the filtering condition. When this check box is selected, only active dashboard parameters are displayed in the **Value 1** and **Value 2** columns.

</td></tr><tr><td>

**Value 1**

</td><td>

The value you enter for the logical condition used to filter the data, if the selected condition requires a value. The value you enter must conform with the data type of the selected property. You can enter or select a fixed value, one of the predefined parameters, or one of the dashboard parameters.

 The predefined parameters are listed in [Managing Advanced Filters](../Shared/../UserGuide/GI_Reusable_Filters_Mapref.md).

</td></tr><tr><td>

**Value 2**

</td><td>

The second value for the logical condition, if the selected logical condition requires a second value. \(For example, the *Is Between* logical condition requires a second value.\) The value you enter must conform with the data type of the selected property. You can enter or select a fixed value, one of the predefined parameters, or one of the dashboard parameters.

 The predefined parameters are listed in [Managing Advanced Filters](../Shared/../UserGuide/GI_Reusable_Filters_Mapref.md).

</td></tr><tr><td>

**Brackets**

</td><td>

A group of closing brackets to group logical conditions.

</td></tr><tr><td>

**Operator**

</td><td>

The logical operator to be used between groups of logical conditions.

</td></tr></tbody>
</table>

<table id="table_sdq_cgq_2s"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Chart Type**

</td><td>

Required. The type of chart widget you want to add. The following options are available: -   *Doughnut*: A doughnut chart widget
-   *Line*: A line chart widget
-   *Column*: A column chart widget
-   *Stacked Column*: A stacked column chart widget
-   *Bar*: A bar chart widget
-   *Stacked Bar*: A stacked bar chart widget
-   *Funnel*: A funnel chart widget

For more information, see [Specific Widgets: Chart Widgets](RPT_Configuring_Widgets_Chart_Widgets_Concept.md).

</td></tr><tr><td>

**Legend Position**

</td><td>

The location of the legend on the widget. The box is displayed for only doughnut and funnel chart types. The following options are available:-   *None*: The legend is not displayed on the widget.
-   *Left*: The legend is located to the left of the chart.
-   *Right*: The legend is located to the right of the chart.
-   *Top*: The legend is located above the chart.
-   *Bottom*: The legend is located below the chart.
-   *Popup*: The user can open the legend as a pop-up box by clicking the icon in the bottom left corner of the widget. This is the default value.

</td></tr><tr><td colspan="2">

The **Categories** section of the dialog box includes the following elements.

</td></tr><tr><td>

**Legend**

</td><td>

Required. The column from the source form whose values are used for categories. The values of the selected column are displayed on the chart as follows, depending on the chart type:-   *Doughnut*: The column values are displayed as individual sectors on the doughnut. The size of each sector is determined by the aggregated column value selected in the **Value** box. For example, a category might be a customer ID, a financial period, or a cash account.
-   *Line*: The column values are displayed on the horizontal axis.
-   *Column*: The column values are displayed on the horizontal axis.
-   *Stacked Column*: The column values are displayed on the horizontal axis.
-   *Bar*: The column values are displayed on the vertical axis.
-   *Stacked Bar*: The column values are displayed on the vertical axis.
-   *Funnel*: The column values are displayed as individual slices in the funnel. The height of each slice is determined by an aggregated column value selected in the **Value** box. For example, a column might be a customer ID.

</td></tr><tr><td>

**Sort By**

</td><td>

The value by which the legend data is sorted and the sort order. The left box defines the sequence to be sorted as follows: -   *Legend*: The legend data is sorted by the values in the column you selected in the **Legend** box.
-   *Legend Values*: The legend data is sorted by the value you selected in the **Value** box.
-   *Field*: The legend data is sorted by labels in the column you selected in the **Field to Sort By** box, which appears when you select this option.
-   *Field Value*: The legend data is sorted by the value of the field you selected in the **Field to Sort By** box, which appears when you select this option.

The right box defines the sort order. The way the values are sorted depends on the chart type as well as this selection. The following options are available:

-   *Ascending*:
    -   *Doughnut*: The smallest sector is displayed in the upper part of the doughnut, and larger sectors are displayed clockwise in ascending order.
    -   *Line*, *Column*, and *Stacked Column*: The lowest value \(the first alphabetic value for text data\) appears in the left part of the horizontal axis, and higher values are shown to the right in ascending order. The function ignores null values.
    -   *Bar* and *Stacked Bar*: The lowest value \(the first alphabetic value for text data\) appears in the upper part of the vertical axis, and higher values are arranged downward along the vertical axis in ascending order. The function ignores null values.
    -   *Funnel*: The lowest value \(the first alphabetic value for text data\) appears on the top of the funnel, and higher values are arranged downward in ascending order. The function ignores null values.
-   *Descending*:
    -   *Doughnut*: The largest sector is displayed in the upper part of the doughnut, and smaller sectors are displayed clockwise in descending order.
    -   *Line*, *Column* and *Stacked Column*: The highest value \(the last alphabetic value for text data\) appears in the left part of the horizontal axis, and lower values are shown to the right in descending order. The function ignores null values.
    -   *Bar* and *Stacked Bar*: The highest value \(the last alphabetic value for text data\) appears in the upper part of the vertical axis, and lower values are arranged downward along the vertical axis in descending order. The function ignores null values.
    -   *Funnel*: The highest value \(the last alphabetic value for text data\) appears on the top of the funnel, and lower values are arranged downward in descending order. The function ignores null values.

The default values in these boxes depend on the type of the field that you selected in the **Legend** box, as described below:

</td></tr><tr><td>

**Field to Sort By**

</td><td>

The field other than the field selected in the **Legend** box by which legend data will be sorted.

 By default, this box is not available in the dialog box and appears when *Field* or *Field Value* is selected in the left **Sort By** box.

</td></tr><tr><td>

**Maximum Number of Values Shown**

</td><td>

The maximum number of values to be individually shown on the chart. The system always selects the values starting from the largest ones. If you want the system to individually display all values, set the value of this box to *0*.

 The default value of this box is *10*. The maximum allowed number is *150*.

</td></tr><tr><td>

**Show Sum of Other Entries**

</td><td>

A check box that indicates \(if selected\) that the values that are not among the largest values \(whose number is specified in the **Maximum Number of Values Shown** box\) are summed and shown on the chart as a single element, with the element type depending on the chart type. For example, for a doughnut chart, the element is a separate sector, and for a line chart, it is a separate point.

 By default, this check box is cleared.

</td></tr><tr><td>

**Minimum Label Height**

</td><td>

The minimum height reserved for category labels, expressed as a percentage of the widget height.

 This property is available for the following chart types: *Line*, *Column*, *Stacked Column*, *Bar*, and *Stacked Bar*.

 The default value is *0*, meaning that the system allocates the least possible height to category labels and maximizes the plot area.

</td></tr><tr><td>

**Date Rounding**

</td><td id="_d0562fa4-af37-4815-9520-04af871bf662">

The part of the date field that is displayed on the chart widget. You can use on the chart either the full date or a particular part of it \(for example, a month or a year\).This property is available only for fields of the date type.

Select one of the following values:

-   *None*: The full date is used in the chart.
-   *Minutes*: Only minutes from the selected date field are used in the chart.
-   *Hours*: Only hours from the selected date field are used in the chart.
-   *Days*: Only days of month from the selected date field are used in the chart.
-   *Months*: Only months from the selected date field are used in the chart.
-   *Quarters*: Only quarters are used in the chart. The system calculates the quarter based on the date in the selected date field.
-   *Years*: Only years from the selected date field are used in the chart.

</td></tr><tr><td>

**Format**

</td><td id="_e58f6027-9bf9-42d4-bf0d-c271e6611130">

The format of the field value that is selected in the **Legend** box. This box is displayed only for fields of numeric and date types. You can select one of the predefined formats from the list. By default, the box is empty, which means that the field is not formatted.

</td></tr><tr><td colspan="2">

The **Series** section of the dialog box includes the elements listed below.

 This section is available for the following chart types: *Line*, *Column*, *Stacked Column*, *Bar*, and *Stacked Bar*.

</td></tr><tr><td>

**Legend**

</td><td>

The source column for the chart content. The values of the selected column are displayed on the chart as follows, depending on the chart type.

 -   *Line*: The column values are displayed as separate lines in the data area of the chart.
-   *Column*: The column values are displayed as separate columns for each category.
-   *Stacked Column*: The column values are displayed as sections of the chart column for each category.
-   *Bar*: The column values are displayed as separate bars for each category.
-   *Stacked Bar*: The column values are displayed as sections of a bar for each category.

</td></tr><tr><td>

**Sort By**

</td><td>

The value by which the legend data is sorted and the sort order. The left box defines the sequence to be sorted as follows: -   *Legend*: The legend data is sorted by the values in the column you selected in the **Legend** box.
-   *Legend Values*: The legend data is sorted by the value you selected in the **Value** box.
-   *Field*: The legend data is sorted by the labels in the column you selected in the **Field to Sort By** box, which appears when you select this option.
-   *Field Value*: The legend data is sorted by value you selected in the **Field to Sort By** box, which appears when you select this option.

The way the values are sorted depends on the chart type as well as this selection. The following options are available:

-   *Ascending*:
    -   *Line*, *Stacked Column*, and *Bar*: The lowest value \(the first alphabetic value for text data\) appears in the upper part of the vertical axis, and higher values are arranged downward along the vertical axis in ascending order. The function ignores null values.
    -   *Column* and *Stacked Bar*: The lowest value \(the first alphabetic value for text data\) appears in the left part of the horizontal axis, and higher values are shown to the right in ascending order. The function ignores null values.
-   *Descending*:
    -   *Line*, *Stacked Column*, and *Bar*: The highest value \(the last alphabetic value for text data\) appears in the upper part of the vertical axis, and lower values are arranged downward along the vertical axis in descending order. The function ignores null values.
    -   *Column* and *Stacked Bar*: The highest value \(the last alphabetic value for text data\) appears in the left part of the horizontal axis and lower values are shown to the right in descending order. The function ignores null values.

The default values in these boxes depend on the type of the field that you selected in the **Legend** box, as described below:

</td></tr><tr><td>

**Field to Sort By**

</td><td>

A box, which is used to select the field other than the field selected in the **Legend** box to define the sorting.

 By default, this box is not available in the dialog box and appears when *Field* or *Field Value* is selected in the left **Sort By** box.

</td></tr><tr><td>

**Maximum Number of Values Shown**

</td><td>

The maximum number of values to be individually shown on the chart. The system always selects the values starting from the largest ones. If you want the system to individually display all values, set the value of this box to *0*.

 The default value of this box is *10*.

</td></tr><tr><td>

**Show Sum of Other Entries**

</td><td>

A check box that indicates \(if selected\) that the values that are not among the largest values \(whose number is specified in the **Maximum Number of Values Shown** box\) are summed and shown on the chart as a single element, with the element type depending on the chart type. For example, for a doughnut chart, the element is a separate sector, and for a line chart, it is a separate point.

 By default, this check box is cleared.

</td></tr><tr><td>

**Date Rounding**

</td><td>

The part of the date field that is displayed on the chart widget. You can use on the chart either the full date or a particular part of it \(for example, a month or a year\).This property is available only for fields of the date type.

Select one of the following values:

-   *None*: The full date is used in the chart.
-   *Minutes*: Only minutes from the selected date field are used in the chart.
-   *Hours*: Only hours from the selected date field are used in the chart.
-   *Days*: Only days of month from the selected date field are used in the chart.
-   *Months*: Only months from the selected date field are used in the chart.
-   *Quarters*: Only quarters are used in the chart. The system calculates the quarter based on the date in the selected date field.
-   *Years*: Only years from the selected date field are used in the chart.

</td></tr><tr><td>

**Format**

</td><td>

The format of the field value that is selected in the **Legend** box. This box is displayed only for fields of numeric and date types. You can select one of the predefined formats from the list. By default, the box is empty, which means that the field is not formatted.

</td></tr><tr><td>

**Color**

</td><td>

The custom colors of chart elements for the values defined in the **Series** section. The colors should be specified by using expressions. You can open the **Expression Editor** dialog box by clicking the magnifier icon. For details, see [Specific Widgets: Chart Widgets](RPT_Configuring_Widgets_Chart_Widgets_Concept.md).

</td></tr><tr><td colspan="2">

The **Values** section of the dialog box includes the following elements.

</td></tr><tr><td>

**Value**

</td><td>

A column from the source form. The values of the selected column are displayed on the chart as follows, depending on the chart type:-   *Doughnut*: The aggregated column values determine the size of the chart sectors. For example, a value might be an invoiced sales amount.
-   *Line*: The column values are displayed on the vertical axis and are used as a source for the data area.
-   *Column*: The column values are displayed on the vertical axis and are used as a source for the data area.
-   *Stacked Column*: The column values are displayed on the vertical axis and determine the height of each section on a chart column.
-   *Bar*: The column values are displayed on the horizontal axis and are used as a source for the data area.
-   *Stacked Bar*: The column values are displayed on the horizontal axis and determine the length of each section on a bar.
-   *Funnel*: The column values determine the height of each slice. For example, a value might be an invoices sales amount.

</td></tr><tr><td>

**Aggregation Function**

</td><td>

The aggregate function used to perform a calculation on the column of data selected in the **Value** box and return a single value, such as the total of the values or the number of selected rows in the column. The following aggregate functions are available:

 -   *Average*: Calculates the average value in the column.
-   *Count*: Determines the number of items in the column.
-   *Max*: Determines the item with the highest value in the column. \(For text data, the highest value is the last alphabetic value.\) This function ignores null values.
-   *Min*: Determines the item with the lowest value in the column. \(For text data, the lowest value is the first alphabetic value.\) This function ignores null values.
-   *Sum*: Calculates the sum of the items in the column. This is the default value.

</td></tr><tr><td>

**Format**

</td><td>

The format of the field value that is selected in the **Value** box. You can specify any of the standard formats defined for the format function in .Net.

 By default, the box is empty, which means that the field is not formatted.

</td></tr><tr><td colspan="2">

The dialog box has the following buttons.

</td></tr><tr><td>

**OK**

</td><td>

Saves your changes to the widget properties, and closes the dialog box.

</td></tr></tbody>
</table>

**Parent topic:**[Specific Widgets: Widget Reference](../UserGuide/RPT_Widgets_Reference.md)

