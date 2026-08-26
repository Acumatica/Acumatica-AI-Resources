# Integration with Active Directory {#_8475a118-8bcd-40fb-99ef-cf9fda54f744 .concept}

You integrate Acumatica ERP with Microsoft Active Directory \(AD\) to manage users and access in one place. You create, delete, and manage user accounts by using AD. During integration, you map AD groups with user roles in Acumatica ERP to determine users' access rights.

**Attention:**

-   This functionality is available only if the *Active Directory and Other External SSO* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.
-   We do not recommend using the Active Directory authentication simultaneously with the OpenID authentication.

**Tip:** Enabling integration with AD does not affect the standard authorization and authentication mechanism of Acumatica ERP. With the AD integration enabled, you still can create regular \(non-AD\) users in Acumatica ERP.

## Configuration Steps { .section}

To integrate an instance of Acumatica ERP with AD, you perform the following steps:

1.  Enable integration with Active Directory by modifying the `web.config` file of the application instance, as described in [To Enable Active Directory Integration](US__how_Active_Directory_Integration__Enable.md).

    **Important:** When you save changes to the `web.config` file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance.

2.  Map the user roles configured in Acumatica ERP to the groups configured in the Active Directory domain by using the [User Roles](SM_20_10_05.md) \(SM201005\) form in Acumatica ERP. For details, see [To Map Active Directory Groups to Roles in Acumatica ERP](US__how_Active_Directory_Integration__Map_Roles.md).

    **Tip:** Enabling AD integration does not affect the standard authorization and authentication capabilities of Acumatica ERP. With AD integration enabled, you can still create internal users in Acumatica ERP.

3.  Optional: If you need to override roles assigned to AD users, manually add the AD user accounts to the system \(if necessary\) and specify the roles for the accounts. For details, see [To Set Up Role Assignment for Domain Users](US__how_AD_Groups_Override.md).

## User Accounts of Domain Users in Acumatica ERP { .section}

After you have enabled integration with the identity management system, user accounts for domain users are created automatically when the users sign in to your Acumatica ERP instance for the first time.

The accounts of domain users in Acumatica ERP are based on their accounts in the domain. The password of a domain user in Acumatica ERP is the same as the domain account password. The email address and the first and last name of the user are populated from the domain account as well. However, the login, password, email address, and first and last name are managed through the domain and cannot be changed in Acumatica ERP.

**Attention:**

-   You cannot restore the passwords of domain users by using Acumatica ERP tools. You should restore users' domain credentials by using the tools of Active Directory \(AD\).
-   Once the user account is created, we do not recommend renaming users on the Active Directory or Entra ID side. Instead, we suggest that you delete the old account and create a new one. Contact Acumatica support team to get assistance in this task.

To speed up the authentication of users, the information about AD groups is automatically cached by Acumatica ERP if the count of the user groups is greater than or equal to the value of the `ADGroupCacheLimit` parameter specified in the `web.config` file. To update the list of the user groups in Acumatica ERP with current information from AD, click **Reload AD Groups** on the toolbar of the [User Roles](../Shared/../UserGuide/SM_20_10_05.md#) \(SM201005\) form.

The **Reload AD Groups** button appears only when you have integrated the Acumatica ERP instance with AD or Microsoft Entra ID and when the number of user groups in AD or Entra ID is greater than or equal to the value of the `ADGroupCacheLimit` parameter specified in the `web.config` file. If the number of users and groups in AD is less than the value of the `ADGroupCacheLimit` parameter, Acumatica ERP retrieves the lists of users and groups directly from AD.

## Domain User Authentication { .section}

Generally, to sign in to Acumatica ERP, AD users type their domain credentials without specifying the domain name. But some employees may have both a local user account and a domain user account with the same username. In this case, Acumatica ERP will authenticate the users based on the password they specify \(assuming that the local and domain passwords differ\).

If both the usernames and the passwords are the same for a local user account and a domain user account, on the Sign-In page, the user can select the account to sign in with as follows:

-   To sign in with a local account, the user enters the username of the local account \(as usual\).
-   To sign in with a domain account, the user enters the login in the `<Domain_Name>\<User_Name>` format, where `<Domain_Name>` is the NetBIOS domain name of the integrated domain and `<User_Name>` is the user account name in the integrated domain.

**Tip:** If there is a local account with a name that includes a domain name and a username from this domain, such as `Terra\User1`, a domain user with the name *User1* from domain *Terra* will be mapped to this local account and will inherit all permissions of this account. In this case, the passwords of a local user and a domain user may differ but they both will access the same user account. To prevent confusion, we recommend that you disable or delete the local accounts of employees who do not perform any administration or configuration tasks in Acumatica ERP.

## Domain User Authorization { .section}

When a domain user tries to access Acumatica ERP, user authorization occurs as follows:

1.  The application instance sends an authentication request to the AD server to validate the user's credentials.
2.  When validation has completed successfully, the AD server sends Acumatica ERP the list of AD groups to which the user is assigned.
3.  Acumatica ERP compares the list of AD groups with the internal Acumatica ERP roles, based on the mapping rules defined on the [User Roles](../Shared/../UserGuide/SM_20_10_05.md) \(SM201005\) form.
4.  The system finds any Acumatica ERP roles that are associated with AD groups to which the domain user account is assigned. If Acumatica ERP finds at least one role, the user is authenticated to sign in to the Acumatica ERP instance.

    The user access rights within the Acumatica ERP application instance are based on the internal list of roles.


For more information about authentication in Acumatica ERP, see [Managing User Access](../Shared/../UserGuide/SA_Managing_User_Access_Mapref.md). For details about roles and access rights in Acumatica ERP, see [Configuring User Roles](../Shared/../UserGuide/User_Roles_Mapref.md).

## Access Rights of Domain Users { .section}

Domain users inherit access rights from the AD groups that you have mapped to Acumatica ERP user roles. In addition, you can assign specific user roles to each domain user if the access rights for this user should differ from the AD group rights.

New domain users automatically get the rights to sign in to Acumatica ERP when they join a domain. The membership of these users in Acumatica ERP roles is then automatically updated to comply with the membership of the users in the domain groups.

**Attention:** The user type functionality, described in [User Access: Linked Entities and User Types](../Shared/../UserGuide/SA_Managing_User_Access_User_Types_Usage_Concept.md), cannot be applied to domain users.

**Parent topic:**[Integrating Acumatica ERP with Active Directory](../UserGuide/US__mng_Integration_with_Active_Directory.md)

