# User Access: Linked Entities and User Types {#_93be1cc3-9f93-4c09-a2ef-c4152181eb4c .concept}

In Acumatica ERP, a *linked entity* is an employee or contact account that is associated with the user. If the user you are creating on the [Users](SM_20_10_10.md) \(SM201010\) form is already defined in the system as an employee or contact account, you can select the appropriate employee or contact name in the **Linked Entity** box. This will cause the system to fill in the relevant elements.

User types are also used to provide default settings for new users that you create on the [Users](SM_20_10_10.md) form. For each user type that you define in the system, you can define the set of roles that are available for a user of the type and the default roles to be assigned when a user of this type is created, thus easing the entry of new users of the type.

Also, your company may need to give your partners limited access to Acumatica ERP—for instance, to facilitate the process of entering contacts or customer orders. In such a scenario, you may need some way to segregate users that are internal to your company from external users, or even to give your partners the means to create and manage their own users in Acumatica ERP, thus freeing your administrators of the responsibility to manage these users. You can address these requirements through the use of user types in Acumatica ERP.

In Acumatica ERP, creating a user account is a different process than creating an employee or contact is. Contacts, employees, and users are created independently and can be associated with each other later. You can also create a user that is not associated with any user type or linked entity.

## Linked Entity for a User Account { .section}

In the **Linked Entity** box of the [Users](SM_20_10_10.md) \(SM201010\) form, you can select an entity that is one of the following as the linked entity of the user:

-   A contact: You can select a contact if the user has already been defined as an external user, such as a partner or a contact of a customer or vendor organizations.
-   An employee: You can select an employee if the user has already been defined as an employee of your company and possibly to consultants that you consider part of your company.

## Settings for the User Type { .section}

If you use the user type functionality, you define each user type on the [User Types](EP_20_25_00.md) \(EP202500\) form. On the **Security Policies** tab, you can specify the set of roles that are available for selection for users of the selected type. You can also designate the default roles to be assigned to users of a specific type by selecting the **Assigned by Default** check box in the **Roles Permitted for User** table on the **Security Policies** tab for each role.

**Attention:** The collection of roles that are assigned to an existing user of the particular user type on the [Users](SM_20_10_10.md) \(SM201010\) form will be overridden if either of the following has occurred:

-   You have assigned another user type to the user. In this case, the collection of roles specified for the user type overrides any roles that have been previously assigned to the user on the [Users](SM_20_10_10.md) form.
-   You have defined a collection of roles as default roles on the **Security Policies** tab of [User Types](EP_20_25_00.md) form and then clicked **Overwrite User Roles** on the table toolbar. In this case, the roles previously assigned to users of this type on the [Users](SM_20_10_10.md) form will be replaced by the default roles defined on the [User Types](EP_20_25_00.md) form. As a result, the **Roles** tab of the [Users](SM_20_10_10.md) form will display the same set of roles that is defined on the [User Types](EP_20_25_00.md) form as the type’s default roles.

For the procedure of adding a user type, see [To Add a User Type](US__how_Add_Contact_User_Type.md).

On the **Security Policies** tab, you can also specify the following security settings, which will be applied to all users of this type:

-   **Use Email as Username**: You select this check box to allow users with linked contacts to use their email addresses as their usernames when they sign in to the system.
-   **Reset Password on First Sign-In**: You select this check box to force new users to change their password when they first sign in to the system.
-   **Require Username Activation**: You select this check box to force new users to activate their account.

## Internal User Types {#_775858a7-972a-4226-ac5d-7e74ae894419 .section}

For an internal user type that you define on the [User Types](EP_20_25_00.md) \(EP202500\) form, you select *Employee* in the **Linked Entity** box. An employee-related user type is associated with employees in your system. These user types are intended for users who are internal to your company \(generally employees of your company and possibly consultants that you consider part of your company\).

## External User Types { .section}

For an external user type that you define on the [User Types](EP_20_25_00.md) \(EP202500\) form, you select *Contact* in the **Linked Entity** box. A contact-related user type is associated with a contact in your system. These user types are intended for users who are external to the company—for example, partners or contacts. As opposed to employee-related user types, you can use contact-related user types to delegate the right to create users, as described in [To Delegate the Right to Create Users](US__how_Delegation_User_Creation_Rights.md).

**Parent topic:**[Managing User Access](../UserGuide/SA_Managing_User_Access_Mapref.md)

