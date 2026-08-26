# Dashboards: General Information {#_9a2198f4-cf48-4da9-973c-59fd6dbad3eb .concept}

In Acumatica ERP, a dashboard is a collection of widgets—small components you configure to display a particular type of information—that are displayed on a single form and are designed to give you needed information at a glance.

When you create a dashboard, which is also an Acumatica ERP form, you can click buttons to perform dashboard-specific actions. You can share a dashboard with other users as you can other forms.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a dashboard
-   Manage access rights for the viewing and configuration of a dashboard

## Applicable Scenario { .section}

You administer dashboards if you’re responsible for system administration or for the customization of Acumatica ERP in your company.

## Dashboards in the Modern UI {#section_mz3_1pf_kgc .section}

In the Modern UI, dashboards have a sleeker design, faster performance, and a more intuitive experience for both dashboard creators and users. These dashboards represent a complete redesign from the Classic UI dashboards.

The new [Dashboards](SM_20_86_10.md) \(SM208610\) form provides a centralized place to create or delete Modern UI dashboards and manage their properties.

You can manage Classic UI dashboards through the renamed [Classic Dashboards](SM_20_86_00.md) \(SM20860\) form. Design of these dashboards works as it did in previous versions of Acumatica ERP.

## Creation of a New Dashboard { .section}

On the [Dashboards](SM_20_86_10.md) \(SM208610\) form, you add a record for the dashboard to be created and enter its internal identifier in the **Name** box.

In the **Owner Role** box, you select a user role. All users that have the selected role assigned are the owners of the dashboard. That is, the **Design** button on the dashboard title bar is available to these users. If they click the button, the dashboard switches to design mode. In this mode, an owner of the dashboard can populate the dashboard with widgets, modify the dashboard layout, and edit widget properties.

## Publication of a Dashboard {#section_rnv_gts_31c .section}

You publish a dashboard to make it available to users. To do this, on the form toolbar of the [Dashboards](SM_20_86_10.md) \(SM208610\) form, you click the **Publish to the UI** button. The system opens the **Publish to the UI** dialog box.

**Note:** If the Classic UI version of the current dashboard is already published to the UI, the system suggests that you replace the Classic UI dashboard or publish the Modern UI dashboard alongside it.

In the **Publish to the UI** dialog box, you make the needed changes to the default values in the **Site Map Title** \(in which the system inserts the value you have specified as the name\), **Workspace**, and **Category** boxes.

Also, the system assigns the dashboard an automatically generated ID in a format similar to the format of screen IDs of other dashboards, with *DB* as the two-letter module code: *DB000000*. When the ID is assigned, the system adds the dashboard to the site map on the [Site Map](SM_20_05_20.md) \(SM200520\) form and shows its ID in the **Screen ID** box. This means that the dashboard is the dashboard is published on the Acumatica ERP site.

**Important:** If you publish a customization project that has a dashboard with the same ID as a dashboard that already exists in the system, the existing dashboard will be replaced with the custom one. To avoid this issue, add the first custom dashboard with some ID whose number you do not expect to reach \(such as *DB1000000*\). You then assign subsequent custom dashboard IDs with progressively lower numerical values \(such as *DB999999*, *DB999998*, and so on\).

In the **Access Rights** section of the dialog box, you select one of the following option buttons to indicate which access rights should be specified for the newly added dashboard:

-   **Set to Granted for All Roles**: The system will set the access rights for this dashboard to *Granted* for all user roles in the system.
-   **Set to Revoked for All Roles**: The system will set the access rights for this dashboard to *Revoked* for all user roles in the system.
-   **Copy Access Rights from Screen** \(default\): The system will copy the set of the access rights from the specified dashboard.

After you specify the needed settings and click **Publish** in the dialog box, the dashboard is published. That is, it is assigned a screen identifier and becomes available in the specified workspace. Also, the system adds the new site map node for this form to the site map and applies the appropriate access rights to this site map node.

After the dashboard has been published, you can adjust access to the dashboard on the **Visible To** tab of the [Dashboards](SM_20_86_10.md) form.

## Configuration of Dashboard Visibility { .section}

On the **Visible To** tab of the [Dashboards](SM_20_86_10.md) \(SM208610\) form, you specify the access levels for the roles defined in the system. To give access, you select the *Granted* access level for the roles for which the dashboard should be available. Users that do not have a role with the *Granted* access level is specified will not be able to view the dashboard.

## Ability to Personalize a Dashboard {#_2af3dc70-7707-45b6-ad2c-5c83d67b7f7f .section}

You can also control whether users who can view the dashboard can personalize it—that is, create a personal copy of the dashboard and configure and modify the copied widgets. To provide users with this capability, you need to select the **Allow Users to Personalize** check box on the [Dashboards](SM_20_86_10.md) \(SM208610\) form for the particular dashboard. With this check box selected, the **Create User Copy** button will be displayed on the title bar of the dashboard. A user clicks the button to create a personal copy of the dashboard.

If a user has created a personal copy of the dashboard and made modifications to it, this user can reset the copy to the original dashboard by clicking the **Reset to Default** button on the title bar of the dashboard.

A user who manages a particular dashboard can reset all user copies of the dashboard at once by clicking **Reset All User Copies** on the More menu of the [Dashboards](SM_20_86_10.md) form.

## Ability to Deactivate Widgets { .section}

In Acumatica ERP, you can deactivate a widget that consumes a lot of memory, malfunctions, or currently isn’t needed. On the **Widgets** tab of the [Dashboards](SM_20_86_10.md) \(SM208610\) form, the list of widgets of the selected dashboard is shown. By default, the **Active** check box is selected for each widget, meaning that it’s shown on the dashboard. You can deactivate a widget on the dashboard by clearing the **Active** check box for it. If you clear the check box, the widget is no longer shown on the dashboard in either view mode or design mode.

**Attention:** A user with the dashboard owner role or a user who has created a personalized copy of a dashboard can drag a widget to the place of an inactive widget. If the inactive widget is activated again, it may not reappear on the dashboard. In this case, you may need to know the hidden widget's coordinates so that you can quickly locate it and rearrange the widgets on the dashboard. Widget coordinates are shown in the **Row** and **Column** table columns on the **Widgets** tab of the [Dashboards](SM_20_86_10.md) form for the dashboard. For details, see [Dashboards: Widget Location Within a Working Area](RPT_Administering_Dashboard_Forms_Widget_Coordinates.md).

## Ability to Delete Widgets { .section}

On the **Widgets** tab of the [Dashboards](SM_20_86_10.md) \(SM208610\) form, you can delete a widget from a dashboard by selecting its row and clicking the **Delete Row** button on the table toolbar.

## Exposure to the Acumatica Mobile App { .section}

If a dashboard should be displayed in the Acumatica mobile app connected to your Acumatica ERP site, you select the **Expose to the Mobile Application** check box on the [Dashboards](SM_20_86_10.md) \(SM208610\) form for the particular dashboard.

## Export of a Dashboard { .section}

On the [Dashboards](SM_20_86_10.md) \(SM208610\) form, you can prepare a dashboard as an XML file to export it to another tenant of your Acumatica ERP site. You can do this by opening the needed dashboard and clicking the **Export as XML** command on the **Clipboard** menu of the form toolbar. Then in the other tenant, you open the [Dashboards](SM_20_86_10.md) form and click the **Import from XML** command on the **Clipboard** menu of the form toolbar.

If a dashboard contains a widget that’s a wiki page or a widget based on a generic inquiry \(such as a table widget or a KPI widget\), make sure that this wiki page or generic inquiry exists in the tenant to which you’re exporting the dashboard. If it doesn’t, you need to create the wiki page or generic inquiry in the tenant. You can also import the wiki page or generic inquiry from the tenant where it is stored along with the dashboard and then export the wiki page or generic inquiry to the same tenant where you are exporting the dashboard. After importing a dashboard, you need to reselect the wiki page or generic inquiry in the imported dashboard on the [Dashboards](SM_20_86_10.md) form.

For details, see [Specific Widgets: Table Widgets](RPT_Configuring_Widgets_Data_Table_Widgets_Concept.md), [Specific Widgets: Wiki Page Widgets](RPT_Configuring_Widgets_Wiki_Page_Widgets.md), and [Specific Widgets: KPI Widgets: Scorecard, Meter, and Trend Card](RPT_Configuring_Widgets_KPI_Widgets_Concept.md).

**Parent topic:**[Administering Dashboards](../UserGuide/RPT_Administering_Dashboards_Mapref.md)

