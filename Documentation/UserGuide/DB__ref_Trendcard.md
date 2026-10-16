# Add Widget Dialog Box for Trend Card KPI Widgets

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


<table id="_1a6c04b1-f23b-49a2-90fe-078ed763720e"><thead><tr><th>

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

A button that you click to open the **Inquiry Parameters** dialog box so you can specify the parameters for the inquiry selected in the **Inquiry Screen** box \(for the description of this dialog box, see [Other Dialog Boxes](DB__ref_Scorecard.md#_790ccebb-329b-45df-bd59-d7a422989da9)\).

</td></tr><tr><td>

**Shared Filter to Apply**

</td><td>

The shared filter that is applied to the data in the widget. You can apply a shared filter or leave the box blank to display all the data from the inquiry.

</td></tr><tr><td>

**Filter Settings**

</td><td>

A button that you click to open the **Filter Settings** dialog box. \(For the description of this dialog box, see [Other Dialog Boxes](DB__ref_Scorecard.md#_790ccebb-329b-45df-bd59-d7a422989da9).\) You use this dialog box to configure a filter for data displayed on the widget.

</td></tr><tr><td>

**Field to Aggregate**

</td><td>

Required. The field from the selected inquiry that is displayed in the widget.

</td></tr><tr><td>

**Aggregate Function**

</td><td>

The function that is used to aggregate the values of the selected generic inquiry field. Possible values in this box are the following. -   *Average*: Calculates the average value in the column.
-   *Count* \(default value\): Determines the number of items in the column.
-   *Max*: Determines the item with the highest value in the column. \(For text data, the highest value is the last alphabetic value.\) This function ignores null values.
-   *Min*: Determines the item with the lowest value in the column. \(For text data, the lowest value is the first alphabetic value.\) This function ignores null values.
-   *Sum*: Calculates the sum of the items in the column.

</td></tr><tr><td>

**Timeline Field**

</td><td>

The field of the date type from the selected inquiry, which is used for calculating trends.

</td></tr><tr><td>

**Period**

</td><td>

The time period upon which a comparison of the field selected in the **Field to Aggregate** box is performed. The following values are available in the box:-   *Yesterday*: The day that is before the current business date.
-   *Last Week*: The calendar week that is immediately before the current business date. The day that starts a week depends on the Acumatica ERP locale.
-   *Last Month*: The calendar month that is immediately before the current business date.
-   *Last Quarter*: The calendar quarter that is immediately before the current business date.
-   *Last Year*: The calendar year that is immediately before the current business date.

</td></tr><tr><td>

**Rising Trend Color**

</td><td>

The color of the widget background that is used when the aggregate value of the field selected in the **Field to Aggregate** box is rising in comparison to the time period selected in the **Period** field.

 The default value of this box is *Acumatica Blue*.

</td></tr><tr><td>

**Flat Trend Color**

</td><td>

The color of the widget background that is used when the aggregate value of the field selected in the **Field to Aggregate** box stays the same in comparison to the time period selected in the **Period** field.

 The default value of this box is *Acumatica Yellow*.

</td></tr><tr><td>

**Falling Trend Color**

</td><td>

The color of the widget background that is used when the aggregate value of the field selected in the **Field to Aggregate** box is falling in comparison to the time period selected in the **Period** field.

 The default value of this box is *Acumatica Red*.

</td></tr><tr><td>

**Caption**

</td><td>

The name of the widget on the dashboard.

</td></tr><tr><td colspan="2">

The dialog box has the following buttons.

</td></tr><tr><td>

**Finish**

</td><td>

Saves your changes and closes the dialog box.

</td></tr><tr><td>

**Previous**

</td><td>

Returns to the previous step of the dialog box without saving your changes. The button appears only when you are adding a widget.

</td></tr><tr><td>

**Cancel**

</td><td>

Cancels your changes and closes the dialog box.

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

<table id="_8a3dd80a-fbe3-4f59-b10e-f7b9462f05bf"><thead><tr><th>

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

**Parent topic:**[Specific Widgets: Widget Reference](../UserGuide/RPT_Widgets_Reference.md)

