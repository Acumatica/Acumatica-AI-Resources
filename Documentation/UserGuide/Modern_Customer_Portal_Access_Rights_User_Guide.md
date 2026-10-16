# Modern Customer Portal: Access Rights Through Predefined Roles

The Modern Customer Portal uses predefined roles to control what each portal user can see and do. Each role defines a specific set of access rights, helping protect data while keeping the portal experience focused and easy to manage.

This topic explains how the predefined portal roles control user access. It also provides reference information on each predefined role to help you decide which roles to assign.

## Role-Based Access in the Portal

The Modern Customer Portal uses a role-based access model. When a portal user signs in, their assigned roles determine what they can do and which workspaces or forms they can access. By assigning roles that match each user’s job responsibilities, you give them the appropriate access to the catalog, orders, cases, and sensitive financial information.

**Important:** Portal roles determine which forms and actions a portal user can access. Row-level security configured in Acumatica ERP can further limit the inventory items and warehouses available to the user on the [Catalog](SP_50_40_01.md) \(SP504001\) form.

A contact of your company can be assigned roles in either of these ways:

-   In Acumatica ERP: On the [Contacts](CR_30_20_00.md) \(CR302000\) form, an administrator creates the contact \(if it doesn’t already exist\) and assigns one or more roles to it \(This may be done in response to a case submitted by a portal user.\)

    **Tip:** A matching portal user is created on the [Users](SM_20_10_10.md) \(SM201010\) form of Acumatica ERP when an administrator specifies the user type on the [Contacts](CR_30_20_00.md) form.

-   In the Modern Customer Portal: A portal manager creates the contact, if needed, and assigns one or more roles to it on the Company Contacts \(SP201020\) form.

    **Tip:** A corresponding portal user is automatically created on the [Users](SM_20_10_10.md) form of Acumatica ERP when the portal manager assigns roles to a contact in the Modern Customer Portal.


## Overview of Portal Roles

The following table shows each predefined portal role, its access rights, and the forms a user with the role can access \(if these forms are available in the portal\).

<table id="_31fc7602-fc25-48df-9511-e20b572e06d8"><thead><tr><th>

Portal Role

</th><th>

Access Rights

</th><th>

Forms a User with the Role Can Access

</th></tr></thead><tbody><tr><td>

**Portal User**

</td><td>

Basic portal access for a general user. The user can view and edit their own profile but cannot access company-level data.

 **Important:** Every user must be assigned this role to sign in to the Modern Customer Portal.

</td><td>

-   Homepage \(SP000000\)
-   My Profile \(SP101000\)

</td></tr><tr><td>

**Customer Portal Manager**

</td><td>

Full access to all portal functionality \(including ordering, support, and financial forms\). This user can create payment methods and contacts in the portal.

 This role is intended for the customer’s primary coordinator, who needs broad visibility to portal forms.

</td><td>

-   Company Profile \(SP201000\)
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

</td></tr><tr><td>

**Customer Portal Company Manager**

</td><td>

Access to the company-level settings, including:

 -   Managing the company profile
-   Viewing contacts and users
-   Reviewing and updating payment methods

</td><td>

-   Company Profile \(SP201000\)

</td></tr><tr><td>

**Customer Portal Contact Manager**

</td><td>

Access to the company-level settings in the portal, including:

 -   Viewing and managing contacts and users
-   Creating contacts

</td><td>

-   Company Profile \(SP201000\)
-   Company Contact \(SP201020\)

</td></tr><tr><td>

**Customer Portal Order Manager**

</td><td>

Access to the catalog and full order history, including the ability to:

 -   Place orders and view their statuses
-   Manage order-related activities
-   Pay orders by using the configured payment methods

</td><td>

-   Catalog \(SP504001\)
-   Cart \(SP504003\)
-   Review Order \(SP504004\)
-   Orders \(SP504010\)
-   Order \(SP504000\)
-   Pay \(SP314002\)

</td></tr><tr><td>

**Customer Portal Case Manager**

</td><td>

Creation and management of support cases, including:

 -   Submitting new cases
-   Replying to existing cases
-   Viewing case statuses

</td><td>

-   Cases \(SP401010\)
-   Case \(SP401000\)

</td></tr><tr><td>

**Customer Portal Financial Manager**

</td><td>

Access to financial information, including:

 -   Viewing invoices, balances, and statements
-   Making payments

</td><td>

-   Balance Overview \(SP314010\)
-   Payments \(SP334000\)
-   Invoice Payments \(SP314001\)
-   Pay \(SP314002\)
-   Statement History \(SP324010\)

</td></tr></tbody>
</table>

## Learn More

To learn how to assign roles to contacts, see [Modern Customer Portal: Role Assignment in the Portal](Modern_Customer_Portal_Creating_Granting_Roles_in_Portal.md).

**Parent topic:**[Assigning Roles to Users in the Portal](../UserGuide/Modern_Customer_Portal_User_Guide_Mapref_Roles.md)

