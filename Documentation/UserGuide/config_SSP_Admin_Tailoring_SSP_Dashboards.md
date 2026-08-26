# Tailoring the Self-Service Portal: Creation and Design of Dashboards {#_07957531-5f04-4d6c-a010-593142ec1192 .concept}

With dashboards, users can monitor current financial, operational, and organizational information, and analyze real-time trends that relate to their job. On dashboards, different types of information can be displayed in various presentation forms—such as text, charts, graphs, and tables.

You can create dashboards and share them with other users as forms. That is, you can place any dashboard in a workspace by adding it to the Acumatica ERP site map and specifying different access levels to the dashboard for the user roles available in the system.

## Creation of a Dashboard { .section}

You can create a dashboard if you have access to the [Classic Dashboards](SM_20_86_00.md) \(SM208600\) form. For details on managing dashboards, see [Administering Dashboards](RPT_Administering_Dashboards_Mapref.md). For details on designing dashboards, see [Designing Dashboard Contents](RPT_Designing_Dashboard_Contents_Mapref.md).

To add a new dashboard, on the [Classic Dashboards](SM_20_86_00.md) form, you perform the following steps:

1.  Creation: You add the new dashboard, enter its name, and specify the role for the owner of this dashboard. A user with the specified role assigned will be able to populate the dashboard with widgets, modify the dashboard layout, and edit widget properties.
2.  Publication: You click the **Publish to the UI** button and make the needed changes to the default values in the **Site Map Title**, **Workspace**, and **Category** boxes. Also, the system assigns the dashboard an automatically generated ID in a format similar to the format of screen IDs of other dashboards, with *DB* as the two-letter module code: *DB000000*. When the ID is assigned, the system adds the dashboard to the site map. This setting controls whether the dashboard is published on the Acumatica ERP site.

    In the **Access Rights** section of the dialog box, you select one of the following option buttons to indicate which access rights should be specified for the newly added form:

    -   **Set to Granted for All Roles**: The system will set the access rights for this form to *Granted* for all user roles in the system.
    -   **Set to Revoked for All Roles**: The system will set the access rights for this form to *Revoked* for all user roles in the system.
    -   **Copy Access Rights from Screen** \(default\): The system will copy the set of the access rights from the specified form.
    After you specify the needed settings and click **Publish** in the dialog box, the dashboard is published. That is, it is assigned a screen identifier and becomes available in the specified workspace. Also, the system adds the new site map node for this form to the site map and applies the appropriate access rights to this site map node.

    After the dashboard has been published you can adjust access to the dashboard on the **Visible To** tab of the form.

    These settings control whether the dashboard is published on the Acumatica ERP site and where users can find it.

3.  Visibility configuration: On the **Visible To** tab of the form, you can modify the access levels for the roles defined in the system. To give the access, you select the *Granted* access level for those roles for which the dashboard should be available.
4.  Configuration of additional settings: During this step, you can do any of the following:
    -   Allow users who can view the dashboard to create personal copies of the dashboard and to design these copies by selecting the **Allow Users to Personalize** check box. For a newly created dashboard, the check box is selected by default.
    -   Select **Expose to the Mobile Application** if the dashboard should be displayed in the Acumatica mobile app connected to your Acumatica ERP site.
    -   Specify the parameters for which elements should be displayed in the Selection area of the dashboard on the **Parameters** tab of the form. For example, you can add a date-relative parameter with the default *@WeekStart* value. In this case, the dashboard widgets will display data relevant to the first day of the current week by default. A user can change the parameter value at any time.

After you have created the dashboard, a user with the owner role can populate it with the planned widgets.

**Tip:** If you will be designing this dashboard, be sure to select a role that you are assigned to as the owner role. Otherwise, you will be working with your personal copy of the dashboard, and other users will not see any widgets that you add to the dashboard.

## Types of Widgets { .section}

A *widget* is a dashboard component that provides a particular type of information, such as a real-time data view or a wiki article.

Before you create or modify a dashboard, you need to plan how many widgets and which types the dashboard will have. We recommend that you add no more than seven widgets to a particular dashboard. If a dashboard is cluttered with too many widgets, the users viewing the dashboard cannot understand the data quickly and easily.

In the **Add Widget** dialog box, you click one of the following widget types:

-   **Chart**: A graphical representation of data from an Acumatica ERP form. You can use charts of the following types:
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

**Parent topic:**[Tailoring the Self-Service Portal](../UserGuide/config_SSP_Admin_Tailoring_SSP_Mapref.md)

