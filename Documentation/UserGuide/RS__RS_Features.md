# Overview of Row-Level Security {#_749f774f-720d-4fcb-9c48-4df263bc1bd6 .concept}

Acumatica ERP implements a role-based, task-oriented approach to security. You assign roles to users and give the roles appropriate access rights to the system resources—such as modules, specific forms, form elements, and toolbar buttons—that the users need to perform their work tasks. For more information about user roles, see [Configuring User Roles](User_Roles_Mapref.md).

To give your organization the ability to apply more complex security policies, Acumatica ERP provides restriction groups. A *restriction group* is a set of entities of two or more types that you define to achieve one of these goals:

-   To restrict employees' visibility of sensitive data processed by using Acumatica ERP
-   To relate particular entities to each other so as they are used only together on Acumatica ERP forms.

In the sections of this topic, you can find brief information on restriction groups in general, types of restriction groups, and common usage scenarios for restriction groups.

## Restriction Groups { .section}

You can use restriction groups to control the visibility of system entities to employees of your organization. For more information about restriction groups, see [Restriction Groups in Acumatica ERP](SM__con_Overview_of_Restriction_Groups.md).

Your work with restriction groups includes the following tasks:

-   Creating a restriction group and including users and entities in it to control the visibility of entities in the system. For details, see [Configuration of Restriction Groups](RS__con_Configuration_Restriction_Groups.md).
-   Adding objects or users to an existing group when you add new objects and users in the system and need to configure visibility.
-   Removing objects or users from a group when you want to display the objects to all users or when the users' functional roles are changed in your organization.
-   Deactivating a group when you no longer need the visibility restrictions provided by this group.

For details on all operations with restriction groups, see [Operations with Restriction Groups](RS__con_Operations_Restriction_Groups.md).

## Types of Restriction Groups { .section}

Acumatica ERP provides two basic types of restriction groups—A and B. Restriction groups of both types can limit the visibility of system entities in a direct way \(types *A* and *B*\) and an inverse way \(types *A Inverse* and *B Inverse*\). The differences between *A* and *B* and between *A Inverse* and *B Inverse* are in how these groups work if the same entity is added to multiple groups. For details, see [Types of Restriction Groups](SM__con_Types_of_Restriction_Groups.md).

## Combinations of Restriction-Group Entities { .section}

Acumatica ERP supports a variety of scenarios of configuring the visibility of entities within the system. With the most common scenarios, you can create restriction groups that include the following system entities:

-   Users and general ledger \(GL\) accounts: With these restriction groups, if your organization has sensitive GL accounts, you can make these accounts visible to a limited number of employees. For details, see [Account and Subaccount Security](../Shared/../UserGuide/RS__con_Account_and_Subaccount_Security.md).
-   Users and subaccounts: As with groups that include users and GL accounts, you can limit the visibility of sensitive subaccounts to employees. For more information, see [Account and Subaccount Security](../Shared/../UserGuide/RS__con_Account_and_Subaccount_Security.md).

    **Attention:** For performance reasons, visibility restrictions by user for subaccounts do not affect analytical \(ARM\) and form-based reports or general inquiries. This means that users who can view the reports and general inquiries that include subaccounts will see the full list of subaccounts.

-   Users and vendor accounts: You can define these restriction groups to make particular vendors visible in the system to only employees who work with these vendors. For details, see [Vendor Security](../Shared/../UserGuide/RS__con_Vendor_Security.md).
-   Users and customer accounts: With these restriction groups, you can make particular customers visible to only employees who work with these customers. For details, see [Customer Security](../Shared/../UserGuide/RS__con_Customer_Security.md).
-   Users and GL budget articles: With these restriction groups, you can limit the visibility of sensitive budget articles so that only particular users can see and work with these articles. For more information, see [Security of GL Budget Articles](../Shared/../UserGuide/RS__con_GL_Budget_Security.md).
-   Users and warehouses: You can create restriction groups to display a particular warehouse \(or a set of warehouses\) for only employees who work with this warehouse \(or this set of warehouses\). For details, see [Warehouse Security](../Shared/../UserGuide/RS__con_Warehouse_Security.md).
-   Users and inventory items: You can define these restriction groups to reduce the number of items shown in lists with inventory items, depending on the particular employee signed in to the system. For more information, see [Inventory Item Security](../Shared/../UserGuide/RS__con_Restriction_Groups_for_Subitems.md).
-   Users, project groups, and projects: You can define these restriction groups so that particular projects or group of projects are visible to only the users responsible for the included project or projects.

    **Important:** Restriction groups configured for branches do not affect the visibility of projects that have these branches specified on the **Summary** tab of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form. You can manage the visibility of projects to particular users by creating restriction groups on the [Project Access](../Shared/../UserGuide/PM_10_20_00.md) \(PM102000\) form. For more information on configuring access for projects, see [Project Security](../Shared/../UserGuide/RS__con_Project_Security.md).

-   Users and account groups: You can define these restriction groups so that particular project transactions that include sensitive data are visible to only particular users. For more information, see [Project Security](../Shared/../UserGuide/RS__con_Project_Security.md).
-   Users and printers: If the *DeviceHub* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) form \(CS100000\), you can define these restriction groups to configure the visibility of printers to particular users. For more information, see [Printers: Configuration of Printer Access](../Shared/../ImplementationGuide/DeviceHub_Configuration_of_Printer_Access.md).
-   Branches, GL accounts, and users: With these restriction groups, you can allow users to work with only branch-specific accounts. For details, see [Account and Subaccount Security](../Shared/../UserGuide/RS__con_Account_and_Subaccount_Security.md).
-   Branches, subaccounts, and users: You can set up these restriction groups so that the system displays to users only the branch-specific subaccounts. For more information, see [Account and Subaccount Security](../Shared/../UserGuide/RS__con_Account_and_Subaccount_Security.md).
-   Branches and cash accounts: If there are multiple branches in your organization, with these restriction groups, you can allow users in each branch to work with only branch-specific cash accounts. For details, see [Security of Cash Accounts](../Shared/../UserGuide/RS__con_Security_of_Cash_Accounts.md).
-   GL Accounts and Subaccounts: If you have subaccounts that employees must use only with particular GL accounts, by defining these restriction groups, you can set up lists of available subaccounts for each GL account. For more information, see [Account and Subaccount Security](../Shared/../UserGuide/RS__con_Account_and_Subaccount_Security.md).

**Parent topic:**[Managing Visibility with Restriction Groups](../UserGuide/RS__mng_Managing_Restriction_groups.md)

