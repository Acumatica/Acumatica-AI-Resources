# Add Widget Dialog Box for Link Widgets {#_51586095-4ad0-447b-b02b-25125ae2a914 .reference}

You use the **Add Widget** dialog box to add a widget to a dashboard and to modify an existing widget. The settings that you need to specify depend on the widget type.

When you add a new widget by using this dialog box, you perform two steps. In the first step, you select the type of the widget that you want to add to the dashboard; the system brings up the version of the **Add Widget** dialog box that is specific to the widget type. In the second step, you specify the properties that are specific to the selected widget type. When you modify an existing widget, you perform only the second step. \(In this case, the system immediately brings up the appropriate version of the dialog box.\)

## Add Widget Dialog Box: Step 1 {#section_a3z_dpq_q4b .section}

When you want to add a new widget to a dashboard, you first need to select the option button representing the type of the widget in the **Add Widget** dialog box. The elements of this dialog box are described in the following table.

|Element|Description|
|-------|-----------|
|**Widget Type**|The type of widget to be added to the dashboard, which can be one of the following:-   **Chart**: A graphical representation of data from an Acumatica ERP form. You can use charts of the following types:
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

|
|The dialog box has the following buttons.|
|**Cancel**|Cancels the changes and closes the dialog box.|
|**Next**|Goes to the next step of the **Add Widget** dialog box for the selected widget type.|

## Add Widget Dialog Box: Step 2 {#section_b4k_fpq_q4b .section}

After you select the **Link** widget type in the **Add Widget** dialog box, or when you click Edit \(![](Images/Icons_Form_Grid_Views.png)\) on the widget toolbar, the **Widget Properties** dialog box opens. In this dialog box, you need to specify the properties that are specific to the link widget. For more information about link widgets, see [Specific Widgets: Link Widgets](RPT_Configuring_Widgets_Link_Widgets_Concept.md).

|Element|Description|
|-------|-----------|
|**Icon**|Required. The icon to be displayed before the link title on the dashboard.|
|**Form**|Required. The form to which navigation will occur.|
|**Parameters**|The form-specific parameters of the address line that the system adds to the form link when a user clicks the tile.|
|**Window Mode**|The setting, which defines how the system should open the form once you click the link widget. The following options are available:-   *Same Tab*
-   *New Tab*
-   *Pop-Up Window*

|
|**Description**|A description of the widget.|
|**Caption**|The name of the widget on the dashboard.

 By default, the system displays the name of the form, but you can override it.

|
|The dialog box has the following buttons.|
|**Finish**|Saves the changes and closes the dialog box.|
|**Previous**|Returns to the previous step of the dialog box without saving your changes. The button appears only when you are adding a widget.|
|**Cancel**|Cancels your changes and closes the dialog box.|

**Parent topic:**[Specific Widgets: Widget Reference](../UserGuide/RPT_Widgets_Reference.md)

