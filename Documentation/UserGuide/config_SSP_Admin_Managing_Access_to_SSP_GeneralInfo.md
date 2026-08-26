# Managing Access to the Self-Service Portal: General Information {#_752c1418-65a1-48e6-bd77-ea64d0ed0e94 .concept}

The Acumatica Self-Service Portal is a site designed to give the users of your customers' organizations limited access to your Acumatica ERP instance.

To control access to the Self-Service Portal, you assign these users *roles*: sets of access rights designed for users with similar responsibilities. These roles are assigned access rights to the appropriate system objects and functionality, so users can access only the information they need.

To ease the process of setting up roles, Acumatica ERP provides a set of predefined roles; you can make changes to any existing role, create your own role from the ground up \(which we do not recommend\), or copy an existing role and make changes to the copy. To give contacts in the customer's company the ability to access the Self-Service Portal instance, you can assign the predefined *Portal User* role \(or a similar role that you create\) to these contacts. When you create a user account associated with a contact, you assign the needed role to this user.

Also, by applying the default *Portal User* access rights, you can give administrative users in the customer's organization the access rights to add, delete, and manage user accounts for the contacts of their organization.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Create user roles for the Self-Service Portal users
-   Create user types for the Self-Service Portal users
-   Create user accounts for contacts

## Applicable Scenarios { .section}

You may need to create user roles, user types, and user accounts for the Self-Service Portal in the following cases:

-   You want to give access to the Self-Service Portal to your customers' employees.
-   You want users of your customers to be able to create contact and user accounts in the Self-Service Portal, on their own.

## Portal User Role { .section}

Acumatica ERP provides a predefined role, *Portal User*, designed to be assigned to users that may have access to the Self-Service Portal. A user with this role assigned can sign in to the Self-Service Portal and review the information pertaining to the business account associated with the user account, including the following:

-   View and edit the company's contact information and address.
-   Add, delete, and manage the contacts within the organization.
-   View the contracts in the organization.
-   View and print customer's documents, such as sales orders, shipments, statements, invoices, or credit memos.

If you use the predefined *Portal User* role, you can change the default role settings by using the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form of the Acumatica ERP instance or the Self-Service Portal. You can also create your own role for portal users by copying the *Portal User* role and modifying the access rights in the new role.

For more information about creating a role for portal users, see [Managing Access to the Self-Service Portal: To Create User Roles for a Customer’s Employees](config_SSP_Admin_Managing_Access_to_SSP_Create_Roles_for_Customer_Employees.md).

## External User Types { .section}

In Acumatica ERP, *user types* provide default settings for new users that you create, including which entity type \(an internal employee or an external contact\) is associated with the user type and which roles can be associated with the user accounts to which the user type is assigned.

On the [User Types](EP_20_25_00.md) \(EP202500\) form, each user type for portal users must have the *contact* entity type selected in the **Linked Entity** box of the Summary area and the *Portal User* role \(or any other custom portal role that you might have created for portal users\) listed on the **Allowed Roles** tab.

For more information, see [User Access: Linked Entities and User Types](SA_Managing_User_Access_User_Types_Usage_Concept.md).

## User Accounts for Contacts { .section}

You can add a user account to a contact account in one of the following ways:

-   By using the [Contacts](CR_30_20_00.md) \(CR302000\) form to open the contact for editing, and then adding the user account information on the **User Info** tab.
-   By using the [Users](SM_20_10_10.md) \(SM201010\) form to create a user account and linking it with the existing contact account.

When you create a user account, you must select a contact-related user type and assign the user the *Portal User* role, or any other role created for the portal user. For details, see [Managing Access to the Self-Service Portal: To Create User Accounts for Contacts](config_SSP_Admin_Access_to_SSP_Add_User_Account_for_Contact.md).

**Parent topic:**[Managing Access to the Self-Service Portal](../UserGuide/config_SSP_Admin_Access_to_SSP_Mapref.md)

