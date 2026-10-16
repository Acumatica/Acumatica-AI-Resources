# Dashboard Design: Dashboard Reference

In Acumatica ERP, a dashboard is a collection of widgets that is displayed on a dashboard page. A dashboard contains buttons you click to invoke dashboard-specific actions, and widgets that aggregate information from other forms.

## Dashboard Title Bar

The dashboard title bar includes standard and form-specific buttons. The form-specific buttons are listed below.

<table id="_9b25038b-f39b-4d56-b364-742828c9865d"><thead><tr><th>

Button

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Design**

</td><td>

Switches the dashboard between view mode and design mode. In view mode, you can only view information on the dashboard and cannot edit it. In design mode, you can edit the dashboard layout and add or modify widgets.

 This button is visible to users who are assigned the *Administrator* role or a dashboard owner role, and to users who have created a personal copy of the dashboard by clicking **Create User Copy**.

 For details, see [Administering Dashboards](RPT_Administering_Dashboards_Mapref.md).

</td></tr><tr><td>

**Edit Layout**

</td><td>

Opens the [Dashboard Layouts](#_13fb6005-ab0b-44ab-bab9-682d3e2a299c) dialog box. This button appears only in design mode.

</td></tr><tr><td>

**Properties**

</td><td>

Opens the [Dashboards](SM_20_86_10.md) \(SM208610\) form, where you can specify the properties of the dashboard. The button is displayed only in design mode and only if you have access to the [Dashboards](SM_20_86_10.md) \(SM208610\) form.

</td></tr><tr><td>

**Reset to Default**

</td><td>

Replaces the settings of your copy of the dashboard with the settings of the original dashboard.

 The button is displayed only in design mode. The button is available only if you are not the dashboard owner and if you have modified the dashboard.

</td></tr><tr><td>

**Create User Copy**

</td><td>

Creates your personal copy of the dashboard. After you have clicked this button, you can personalize the dashboard. Changes you make to the dashboard will be visible to only you.

 The button is displayed only if your system administrator has allowed users to personalize the dashboard.

</td></tr><tr><td>

**Refresh All**

</td><td>

Loads data from the database for all widgets on the dashboard, regardless a refresh interval configured for widgets.

</td></tr></tbody>
</table>

## Selection Area

In the Selection area, you can select the values of any parameters, and the system will filter the data displayed in widgets by using these values. \(Data will be filtered on only those widgets that have the filter settings by the parameters.\)

This section is displayed only if at least one active parameter has been specified for the dashboard on the [Dashboards](SM_20_86_10.md) \(SM208610\) form. For details on dashboard parameters, see [Specific Widgets: Data Filtering](RPT_Configuring_Widgets_Data_Filtering_Concept.md).

## Dashboard Layouts Dialog Box

By using this dialog box, you can change the layout of the dashboard. You can invoke this dialog box by clicking **Edit Layout** on the dashboard title bar. The dialog box has the following elements.

|Element|Description|
|-------|-----------|
|**Layout Option**|The list of layouts that can be applied to the dashboard. You can select a layout option that will organize information on your dashboard appropriately.|
|The dialog box provides the following buttons.|
|**OK**|Saves the new layout and closes the dialog box.|
|**Cancel**|Closes the dialog box without saving any data.|

## Widget Toolbar

For the description of the widget toolbar, see [Dashboard Design: Widget Toolbar Reference](RPT_Designing_Dashboard_Contents_Widget_Toolbar_Reference.md).

**Parent topic:**[Designing Dashboard Contents](../UserGuide/RPT_Designing_Dashboard_Contents_Mapref.md)

