# Filter Settings Dialog Box {#_740754ac-3770-44a2-88b6-21bb115ea56a .reference}

You can use the **Filters Settings** dialog box, which opens after you click the **Filter Settings** button on the form toolbar or in the filtering area, to create, delete, and manage your reusable filters for a particular form.

## Filter Settings Dialog Box { .section}

|Element|Description|
|-------|-----------|
|Filter name box|An unlabeled box that contains a drop-down list of the names of the filters that can be applied to the currently selected form. You can select a filter name to see the details of the filter.|
|**Default**|A check box that indicates \(if selected\) that this is the default filter for the selected form—that is, the filter is applied when the form is opened.

 As the maximum, two filters can have the **Default** check box selected for one form: one is shared and another is not shared \(a filter that you have created for your personal use\). If two default filters are created for the form, the tab with the not shared filter is displayed when you open the form.

 If the filter is shared \(the **Shared** check box is selected for the filter\), the check box is available only if the user account under which you are signed in has access to shared filters.

|
|**Shared**|A check box that indicates \(if selected\) that the filter is shared with other users. That is, the users that have access to shared filters can view and edit this filter.

 If the filter is shared \(the **Shared** check box is selected for the filter\), the check box is available only if the user account under which you are signed in has access to shared filters.

 For more information about shared filters, see [Managing Advanced Filters](GI_Reusable_Filters_Mapref.md).

|
|Filter Settings Table|A table that contains the clauses that make up the filter, with each row defining one clause of the filter. For details, see [Filter Settings Table](#_81918a93-d88d-467e-adac-165a3e676b3e).

 If the filter is shared \(the **Shared** check box is selected for the filter\), the table is available only if the user account under which you are signed in has access to shared filters.

|
|This dialog box has the following buttons.|
|**New**|Clears all filter settings currently displayed in the dialog box so that you can specify new filter settings. If the settings in the dialog box have not been saved before you click **New**, they will be lost.|
|**Save**|Gives you the ability to enter a name for the new filter and save it, or saves the existing filter after you have modified it.

 If the filter is shared \(the **Shared** check box is selected for the filter\), the button appears only if the user account under which you are signed in have access to shared filters.

|
|**Copy**|Saves an existing filter under a new name.|
|**Remove**|Deletes the filter from the system.

 If the filter is shared \(the **Shared** check box is selected for the filter\), the button appears only if the user account under which you are signed in has access to editing shared filters—that is, to the [Filters](CS_20_90_10.md) \(CS209010\) form.

|
|**Apply**|Applies the filter and closes the dialog box.

 If the filter is shared \(the **Shared** check box is selected for the filter\), the button appears only if the user account under which you are signed in has access to shared filters.

|
|**Cancel**|Closes the dialog box without filtering the data.|

## Filter Settings Table {#_81918a93-d88d-467e-adac-165a3e676b3e .section}

For a filter, the Filter Settings table contains clauses that make up the filter, with each row defining one clause of the filter. A filter may contain just one clause, or it may contain multiple simple clauses that you combine into one logical expression by using brackets and logical operators. The columns of the table are described below.

If the filter is shared \(the **Shared** check box is selected for the filter\), the table is available only if the user account under which you are signed in has access to shared filters.

The table toolbar has only standard buttons.

|Column|Description|
|------|-----------|
|**Active**|A check box that you select for filter clauses that you want to be active. \(This check box is not, however, available for ad hoc filters on reports.\)

 As you enter a clause, it becomes active, with the **Active** check box automatically selected. To quickly modify the filter, you can clear the **Active** check boxes for some of the clauses to exclude them from the filter.

|
|**Brackets**|A set of opening brackets that can be used to group clauses. You can use brackets to make a filter that spans multiple rows.|
|**Property**|Required. The property to be used for filtering, which you select from a list that includes the properties associated with the particular table or report the filter will be applied to.|
|**Condition**|Required. The logical operation to be applied to the value of the selected property. The available conditions depend on the selected property. Select the condition from the list, which may include the following options:

 -   *Equals*: Displays the records for which the value of the specified property is equal to the value in the **Value** box.
-   *Does Not Equal*: Displays the records for which the value of the specified property is not equal to the value in the **Value** box.
-   *Is Greater Than*: Displays the records for which the value of the specified property is greater than the value in the **Value** box.
-   *Is Greater Than or Equal To*: Displays the records for which the value of the specified property is greater than or equal to the value in the **Value** box.
-   *Is Less Than*: Displays the records for which the value of the specified property is less than the value in the **Value** box.
-   *Is Less Than or Equal To*: Displays the records for which the value of the specified property is less than or equal to the value in the **Value** box.
-   *Is Between*: Displays the records for which the value of the specified property is between the values in the **Value** and **Value2** boxes.
-   *Contains*: Displays the records for which the value of the specified property \(if it is a string\) contains the value in the **Value** box.
-   *Does Not Contain*: Displays the records for which the value of the specified property \(if it is a string\) does not contain the value in the **Value** box.
-   *Ends With*: Displays the records for which the value of the specified property ends with the same character or string as the value in the **Value** box.
-   *Starts With*: Displays the records for which the value of the specified property contains at the beginning the value in the **Value** box.
-   *Is Empty*: Displays the records for which the value of the specified property is empty \(null\).
-   *Is Not Empty*: Displays the records for which the value of the specified property is not empty \(not null\).
-   *Is In* \(for properties of the User type\): Displays the records for which the value of the specified property \(a user\) is included in the workgroup selected in the **Value** box. You can select this option for the `@MyGroups` and `@MyWorktree` clauses.
-   *Is Not In* \(for properties of the User type\): Displays the records for which the value of the specified property \(a user\) is not included in the workgroup selected in the **Value** box. You can select this option for the `@MyGroups` and `@MyWorktree` clauses.

 If you specify a date in the **Value** or **Value 2** box but do not specify a time, the system uses `00:00:00` or `23:59:99` as the time, depending on the condition.

 If you specify date-relative parameters, such as *@Today*, in those boxes, the system also uses `00:00:00` or `23:59:99` as the time, depending on the condition.

 The following conditions are obsolete and have been preserved for compatibility with previous versions of Acumatica ERP. We recommend that you use date-relative clauses instead of these conditions \(for details, see [Advanced Filters: General Information](GI_Reusable_Filters_GeneralInfo.md)\):

 -   *Today* \(for values of the *date* type\): Displays the records for which the value of the specified property is equal to the current business date.
-   *Overdue* \(for values of the *date* type\): Displays the records for which the value of the specified property is overdue in comparison to the current business date.
-   *Today+Overdue* \(for values of the *date* type\): Displays the records for which the value of the specified property is equal to the current business date or overdue in comparison to the current business date. \(This is a combination of the *Today* and *Overdue* conditions\).
-   *Tomorrow* \(for values of the *date* type\): Displays the records for which the value of the specified property is equal to the day after the current business date.
-   *This Week* \(for values of the *date* type\): Displays the records for which the value of the specified property is within the current week.

**Tip:** The start and end of the week are determined based on the default system locale or the locale that you selected when you signed in to Acumatica ERP. The system locales are specified and configured on the [System Locales](../Shared/../UserGuide/SM_20_05_50.md) \(SM200550\) form.

-   *Next Week* \(for values of the *date* type\): Displays the records for which the value of the specified property is within the week after the current week.

**Tip:** The start and end of the week are determined based on the default system locale or the locale that you selected when you signed in to Acumatica ERP. The system locales are specified and configured on the [System Locales](../Shared/../UserGuide/SM_20_05_50.md) \(SM200550\) form.

-   *This Month* \(for values of the *date* type\): Displays the records for which the value of the specified property is within the current month. \(The current month contains the current business date.\)
-   *Next Month* \(for values of the *date* type\): Displays the records for which the value of the specified property is within the month after the current month. \(The current month contains the current business date.\)

|
|**Value**|The value for the logical condition used to filter the data, if the selected condition requires a value. The value you enter must conform with the data type of the selected property. You can enter or select a fixed value or one of the predefined parameters \(which are listed in [Advanced Filters: General Information](GI_Reusable_Filters_GeneralInfo.md)\).|
|**Value2**|The second value for the logical condition, if the selected logical condition requires a second value \(as, for example, the *Is Between* condition does\). The value you enter must conform with the data type of the selected property. You can enter or select a fixed value or one of the predefined parameters \(which are listed in [Advanced Filters: General Information](GI_Reusable_Filters_GeneralInfo.md)\).|
|**Brackets**|A set of closing brackets to group clauses. You use brackets for filters with multiple clauses.|
|**Operator**|The logical operator \(*And* or *Or*\) to be used between clauses or groups of clauses. You select this operator to join the current clause with the next one. Use the *And* operator to find the records that meet the criteria in both the selected clause and the next clause. Use the *Or* operator to find the records that meet the criteria in either the selected clause or the next clause. You can apply these operators to single clauses or groups of clauses.|

**Parent topic:**[Getting Started Form Reference](../UserGuide/GS__GS_Form_Reference.md)

