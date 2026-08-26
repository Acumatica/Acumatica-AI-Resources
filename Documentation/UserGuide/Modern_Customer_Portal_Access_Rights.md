# Modern Customer Portal: Access Rights Through Predefined Roles {#_4b7e68c9-1528-473b-9944-cd7cf03be58b .concept}

The Modern Customer Portal uses predefined roles to control what each portal user can see and do. Each role defines a specific set of access rights, helping protect data while keeping the portal experience focused and easy to manage.

This topic explains how the predefined portal roles control user access. It also provides reference information to help you decide which roles to assign.

## Role-Based Access in the Portal { .section}

The Modern Customer Portal uses a role-based access model. When a portal user signs in, their assigned roles determine what they can do and which workspaces and forms they can access. By assigning roles that match each user’s job responsibilities, you give them the appropriate access to the catalog, orders, cases, and sensitive financial information.

A contact can be assigned roles in either of these ways:

-   **In Acumatica ERP:** On the [Contacts](CR_30_20_00.md) \(CR302000\) form, you create the contact, if it doesn’t already exist, and assign one or more roles to it. This may be done in response to a case submitted by a portal user.

    **Tip:** A corresponding portal user is created automatically on the [Users](SM_20_10_10.md) \(SM201010\) form of Acumatica ERP when an administrator specifies the user type on the [Contacts](CR_30_20_00.md) form.

-   **In the Modern Customer Portal:** A portal manager creates the contact, if needed, and assigns one or more roles to it on the Company Contacts \(SP201020\) form.

    **Tip:** A corresponding portal user is automatically created on the [Users](SM_20_10_10.md) form of Acumatica ERP when the portal manager assigns roles to the contact in the Modern Customer Portal.


## Overview of Portal Roles { .section}

The following table shows each predefined portal role, its access rights, and the forms a user with the role can access \(if these forms are available in the portal\).

|Portal Role|Access Rights|Forms a User with the Role Can Access|
|-----------|-------------|-------------------------------------|
|**Portal User**|Basic portal access for a general user. The user can view and edit their own profile but cannot access company-level data.

 **Important:** Every user must be assigned this role to sign in to the Modern Customer Portal.

|-   Homepage \(SP000000\)
-   My Profile \(SP101000\)

|
|**Portal Admin**|Full administrative access to all portal configuration and settings.

 This role is intended for Acumatica ERP administrators of the portal owner. It can’t be assigned to external users or linked to any contact, and it isn’t associated with a specific customer account.

 **Important:** Portal administrators cannot access financial documents or customer-specific data. Although they can access all portal workspaces \(as users with the *Portal Manager* role can\), this access is limited to setup and maintenance.

|None|
|**Customer Portal Manager**|Full access to portal functionality, including ordering, support, and financial forms. This user can create payment methods and contacts in the portal.

 This role is intended for the customer’s primary coordinator, who needs broad visibility to portal forms.

|-   Company Profile \(SP201000\)
-   Company Contact \(SP201020\)
-   Catalog \(SP504001\)
-   Cart \(SP504003\)
-   Review Order \(SP504004\)
-   Orders \(SP504010\)
-   Order \(SP504000\)
-   Balance Overview \(SP314010\)
-   Payments \(SP334000\)
-   Invoice Payments \(SP314001\)
-   Pay \(SP314002\)
-   Statement History \(SP324010\)
-   Cases \(SP401010\)
-   Case \(SP401000\)

|
|**Customer Portal Company Manager**|Access to the company-level settings, including:

 -   Managing the company profile
-   Viewing contacts and users
-   Reviewing and updating payment methods

|-   Company Profile \(SP201000\)

|
|**Customer Portal Contact Manager**|Access to the company-level settings in the portal, including:

 -   Viewing and managing contacts and users
-   Creating contacts

|-   Company Profile \(SP201000\)
-   Company Contact \(SP201020\)

|
|**Customer Portal Order Manager**|Access to the catalog and full order history, including the ability to:

 -   Place orders and view their statuses
-   Manage order-related activities
-   Pay orders by using the configured payment methods

|-   Catalog \(SP504001\)
-   Cart \(SP504003\)
-   Review Order \(SP504004\)
-   Orders \(SP504010\)
-   Order \(SP504000\)
-   Pay \(SP314002\)

|
|**Customer Portal Case Manager**|Creation and management of support cases, including:

 -   Submitting new cases
-   Replying to existing cases
-   Viewing case statuses

|-   Cases \(SP401010\)
-   Case \(SP401000\)

|
|**Customer Portal Financial Manager**|Access to financial information, including:

 -   Viewing invoices, balances, and statements
-   Making payments

|-   Balance Overview \(SP314010\)
-   Payments \(SP334000\)
-   Invoice Payments \(SP314001\)
-   Pay \(SP314002\)
-   Statement History \(SP324010\)

|

## Learn More { .section}

To learn how to assign roles to contacts, see [Modern Customer Portal: Role Assignment in Acumatica ERP](Modern_Customer_Portal_Granting_Roles_in_ERP.md).

**Parent topic:**[Assigning Roles to Portal Users](../UserGuide/Modern_Customer_Portal_User_Creation_Mapref.md)

