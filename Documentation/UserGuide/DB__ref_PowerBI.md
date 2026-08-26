# Add Widget Dialog Box for Power BI Tile Widgets {#_e8b28915-5d85-4655-8253-cdff5f40fb98 .reference}

You use the **Add Widget** dialog box to add a widget to a dashboard and to modify an existing widget. The settings that you need to specify depend on the widget type.

When you add a new widget by using this dialog box, you perform two steps. In the first step, you select the type of the widget that you want to add to the dashboard; the system brings up the version of the **Add Widget** dialog box that is specific to the widget type. In the second step, you specify the properties that are specific to the selected widget type. When you modify an existing widget, you perform only the second step. \(In this case, the system immediately brings up the appropriate version of the dialog box.\)

## Add Widget Dialog Box: Step 1 { .section}

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

## Add Widget Dialog Box: Step 2 { .section}

After you select the **Power BI Tile** widget type in the **Add Widget** dialog box, or when you click Edit \(![](Images/Icons_Form_Grid_Views.png)\) on the widget toolbar, the **Widget Properties** dialog box opens. In this dialog box, you need to specify the properties that are specific to the Power BI tile widget. For more information about Power BI tile widgets, see [Specific Widgets: Power BI Tile Widgets](DB__con_PowerBI.md). For a detailed procedure that describes adding an embedded page widget to a dashboard, see [Specific Widgets: To Add a Power BI Tile Widget](DB__how_Adding_PowerBI.md).

|Element|Description|
|-------|-----------|
|**Client ID**|The client ID that your system administrator obtained while registering your instance of Acumatica ERP on Microsoft Azure. For details, see [Specific Widgets: To Register Your Acumatica ERP Instance for Power BI](DB__how_Registering_for_PowerBI.md).|
|**Client Secret**|The client secret that your system administrator obtained while registering your instance of Acumatica ERP on Microsoft Azure. For details, see [Specific Widgets: To Register Your Acumatica ERP Instance for Power BI](DB__how_Registering_for_PowerBI.md).|
|**Dashboard**|The Power BI dashboard that provides a tile for the Acumatica ERP dashboard. This box appears after the system connects to Power BI by using the client ID and client secret that you specified in the corresponding boxes. In this box, you can select any available Power BI dashboard.|
|**Tile**|A Power BI tile that is displayed on the Acumatica ERP dashboard. This box appears after the system connects to Power BI by using the client ID and client secret that you specified in the corresponding boxes. In this box, you can select any available Power BI tile from the dashboard that you selected in the **Dashboard** box.|
|**Sign In**|A button that you click to cause the system to open the sign-in page to Power BI by using the client ID and the client secret that you specified in the corresponding boxes. On this page, you need to enter your credentials to be able to load the list of Power BI dashboards and tiles in Acumatica ERP. After entering your credentials, you will be redirected to Acumatica ERP automatically.

 You need to click this button when you add a Power BI tile widget on the Acumatica ERP dashboard.

|
|**Caption**|The name of the widget on the dashboard.|
|The dialog box has the following buttons.|
|**Finish**|Saves the changes and closes the dialog box.|
|**Previous**|Returns to the previous step of the dialog box without saving your changes. The button appears only when you are adding a widget.|
|**Cancel**|Cancels your changes and closes the dialog box.|

**Parent topic:**[Specific Widgets: Widget Reference](../UserGuide/RPT_Widgets_Reference.md)

