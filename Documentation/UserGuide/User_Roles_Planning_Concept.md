# User Roles: Planning of Access Configuration {#_09fab9b0-76f1-42d2-8293-44623c01033a .concept}

Designing system security requires thorough planning and preparation. User access configuration should support business processes without exposing the company to undue risks. That is, a user should have only the access rights necessary to perform typical tasks that are clearly stated in the job description of the user.

In this topic, you will read about the approaches we recommend that you consider while planning user access to the system.

## Full Access Role Approach { .section}

Small companies usually do not require a complex user access configuration that includes multiple roles and strict segregation by job responsibilities. Employees are usually multitasking, and restricting access to the system configuration is usually enough. In this case, you can design roles individually for a person or for a group of people. For example, for a company with 5 to 10 employees, you might configure two roles as follows:

-   *Administrator*: Users with this role have complete access to all system objects in the system, regardless of the functional area.
-   *Regular User*: Users with this role have complete access to system objects of multiple functional areas, except for areas related to the system security and user management.

## Access Tier Approach { .section}

Midsized companies need more complex user access configuration because more people need to access the company's data, but job responsibilities usually are defined and segregated more clearly.

Consider the predefined set of roles that regulates access to finance-related functionality. Roles are grouped by functional areas, such as general ledger, accounts payable, and accounts receivable. Across these areas, in this set, there are three tiers of access for each functional area, which can be referred to as *Admin*, *Clerk*, and *Viewer*. The following table summarizes the different access for these tiers.

|Access Tier|Adding and Processing Records|Deleting Records|Configuration Settings|Reports and Inquiries|
|-----------|-----------------------------|----------------|----------------------|---------------------|
|Admin|Full access|Full access|Full access|Full access|
|Clerk|Full access|Full access|View only|View only|
|Viewer|View only|View only|View only|View only|

With this configuration, you might consider assigning to each user a set of roles from either the Clerk tier or Admin tier and using roles from the Viewer tier for employees who perform internal or external audits. For example, you could assign to a senior accountant all roles from the Admin tier, thus giving complete access to the whole finance-related functionality. For the assistant accountants, you could assign roles from the Clerk tier according to their responsibilities.

Also, you might consider assigning particular users a combination of roles from different tiers. For example, a user who is doing reconciliation will need to view reports and inquiries from the general ledger and accounts payable functional areas. So in addition to the *CA Admin* role, which allows the user to perform reconciliation, you could assign to the user the *AP Viewer* and *GL Viewer* roles.

## Granular Role Approach { .section}

In addition to having three tiers of access \(Admin, Clerk, and Viewer\), we recommend creating roles that allow users to perform granular but sensitive tasks. For example, suppose that a senior accountant with a role from the Admin tier usually reprints checks. During their vacation, the senior accountant passed this responsibility to their assistant, who has a role from the Clerk tier. By defining a role that allows a user to perform only the reprinting of checks, you can temporarily assign this role to the assistant user, instead of giving the user a role from the Admin tier, which would grant more responsibilities than you may want the user to have.

The other solution for securing access to reprinting checks is to create a role specifically for reprinting checks and restrict access to reprinting for all other roles. In this case, you can assign this role to only approved users regardless of their tier of access.

**Parent topic:**[Configuring User Roles](../UserGuide/User_Roles_Mapref.md)

