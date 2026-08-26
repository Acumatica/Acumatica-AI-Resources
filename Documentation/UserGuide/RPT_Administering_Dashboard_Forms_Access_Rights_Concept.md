# Dashboards: Access Rights {#_891ded74-5222-4c19-be92-227e318c34f1 .concept}

In Acumatica ERP, you can allow users to manage dashboards, to view a dashboard, and to modify widgets on a dashboard. In this topic, you will read about access rights to dashboards.

## Access Rights for Administering Dashboards {#_b9465986-4ef1-47d0-81bd-144939ec10fa .section}

When you want to allow users to administer dashboards, you need to assign them a user role with full access rights to the [Dashboards](SM_20_86_10.md) \(SM208610\) form. Users with such a role can do the following:

-   Add and remove dashboards
-   Select the user role whose users are allowed to design a particular dashboard
-   Specify the levels of access rights that each user role has to a specific dashboard
-   Change the location of a particular dashboard in the site map
-   Allow other users to personalize their copy of a specific dashboard

If you want a user who can administer a dashboard to also be able to design the dashboard \(that is, make changes that are visible to all users who can view the dashboard\), you should assign the dashboard owner role to this user.

**Attention:** You can't delete system dashboards.

## Access Rights for Designing Dashboards {#_7664131b-ac05-45ef-aca8-ff30927f8e29 .section}

A dashboard can be designed by only a user with the role specified as the owner role of the particular dashboard in the **Owner Role** box on the [Dashboards](SM_20_86_10.md) \(SM208610\) form. A user with a dashboard owner role can design the contents of the dashboard from scratch or modify them: modify the dashboard layout, add and delete widgets, arrange widgets, and modify widget properties.

**Tip:** For predefined dashboards and dashboards created in previous versions of Acumatica ERP, the default owner role is the predefined role *DashboardDesigner*.

Suppose that your company has multiple departments and each department has a person or two people who are responsible for designing dashboards for their team. We recommend creating a separate user role for every department and then specifying that role as the owner role for the department dashboards. For example, you copy the predefined *DashboardDesigner* role and name it *Sales\_Dashboards*, and you assign this role to a person from the sales department who is responsible for dashboard design. Then every time a manager from the sales department requests a new dashboard, you select this role in the **Owner Role** box on the [Dashboards](SM_20_86_10.md) form for the dashboard.

## Access Rights for Viewing Widget Data { .section}

The set of widgets that are displayed to the users who can view the dashboard depends on their access rights to the forms from which the widgets' source data is taken. If access to a form underlying a widget is denied for particular users, they see a placeholder with a gray lock icon instead of this widget on the dashboard. For example, suppose that you have added the following widgets to the dashboard you have defined as the home page in the system:

-   *Bills to Approve*, which uses data from the [Approve Bills for Payment](AP_50_20_00.md) \(AP502000\) form
-   *Accounts Receivable Balances*, which is based on data from the [Vendor Summary](AP_40_10_00.md) \(AR401000\) form

When users who do not have access to the [Approve Bills for Payment](AP_50_20_00.md) form sign in to the system, they can view only the *Accounts Receivable Balances* widget; they cannot view the *Bills to Approve* widget on the dashboard. If the particular dashboard can be personalized, any of these users can delete the hidden widget or change its properties in their personal copy of the dashboard.

**Parent topic:**[Administering Dashboards](../UserGuide/RPT_Administering_Dashboards_Mapref.md)

