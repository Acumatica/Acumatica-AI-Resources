# Integration with Microsoft Entra ID {#_31cffc3a-3147-4572-9cbf-f7eeb46f0c37 .concept}

You integrate Acumatica ERP with Microsoft Entra ID \(formerly known as Microsoft Azure Active Directory\) to manage users and access in one place and to provide single sign-on. You create, delete, and manage user accounts by using Microsoft Entra ID. During integration, you map Entra ID groups with user roles in Acumatica ERP to determine users' access rights.

**Attention:**

-   This functionality is available only if the *Active Directory and Other External SSO* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.
-   We do not recommend using the Microsoft Entra ID authentication simultaneously with the OpenID authentication.

## Requirements { .section}

Before you integrate Acumatica ERP with Microsoft Entra ID, your company must be signed up for a Microsoft cloud service, such as Azure or Office 365, with the Entra ID instance configured. For more information, see [Microsoft Entra ID](https://www.microsoft.com/en-us/security/business/identity-access/microsoft-entra-id) on the Microsoft Azure Portal.

## Configuration Steps { .section}

You can configure integration with Microsoft Entra ID when you implement Acumatica ERP or at any later time. To integrate an instance of Acumatica ERP with Microsoft Entra ID, you will perform the following general steps:

1.  You perform the needed configuration actions on the Microsoft Entra ID instance. That is, you register your Acumatica ERP instance with the Entra ID instance and you obtain the needed credentials, as described in [To Configure Microsoft Entra ID for Integration with Your Acumatica ERP Instance](US__how_AzureAD_Registering_with_Azure.md).
2.  You perform the required configuration actions in the `web.config` file of the application instance, as described in [To Configure the Web.Config File for Integration with Microsoft Entra ID](US__how_AzureAD_Enable.md).

    **Important:** When you save changes to the `web.config` file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance.

3.  You map the Microsoft Entra ID groups to Acumatica ERP roles, as described in [To Map Microsoft Entra ID Groups to Roles in Acumatica ERP](US__how_AzureAD_Integration_Map_Roles.md).
4.  Optional: If required, you override the roles assigned to any user automatically by manually selecting the required roles. For details, see [To Set Up Role Assignment for Domain Users](US__how_AzureAD_Groups_Override.md).
5.  Optional: If you want to use the Microsoft Entra ID service as the default identity provider, you enable silent logon with Microsoft Entra ID, as described in [To Enable Silent Logon](US__how_AzureAD_Silent_Logon_Enable.md).

## User Accounts of Domain Users in Acumatica ERP { .section}

After you have enabled integration with the identity management system, user accounts for domain users are created automatically when the users sign in to your Acumatica ERP instance for the first time.

The accounts of domain users in Acumatica ERP are based on their accounts in the domain. The password of a domain user in Acumatica ERP is the same as the domain account password. The email address and the first and last name of the user are populated from the domain account as well. However, the login, password, email address, and first and last name are managed through the domain and cannot be changed in Acumatica ERP.

**Attention:**

-   You cannot restore the passwords of domain users by using Acumatica ERP tools. You should restore users' domain credentials by using the tools of Active Directory \(AD\).
-   Once the user account is created, we do not recommend renaming users on the Active Directory or Entra ID side. Instead, we suggest that you delete the old account and create a new one. Contact Acumatica support team to get assistance in this task.

To speed up the authentication of users, the information about AD groups is automatically cached by Acumatica ERP if the count of the user groups is greater than or equal to the value of the `ADGroupCacheLimit` parameter specified in the `web.config` file. To update the list of the user groups in Acumatica ERP with current information from AD, click **Reload AD Groups** on the toolbar of the [User Roles](../Shared/../UserGuide/SM_20_10_05.md#) \(SM201005\) form.

The **Reload AD Groups** button appears only when you have integrated the Acumatica ERP instance with AD or Microsoft Entra ID and when the number of user groups in AD or Entra ID is greater than or equal to the value of the `ADGroupCacheLimit` parameter specified in the `web.config` file. If the number of users and groups in AD is less than the value of the `ADGroupCacheLimit` parameter, Acumatica ERP retrieves the lists of users and groups directly from AD.

## Domain User Authentication { .section}

After the integration of Acumatica ERP with Microsoft Entra ID has been set up, users use single sign-on \(SSO\) with the domain to sign in to Acumatica ERP. By default, each user performs the following steps:

1.  On the Sign-In page of your Acumatica ERP instance, the user selects the Microsoft Entra ID icon \(![](Images/AD_AzureAD.png)\) to open the Microsoft Entra ID sign-in page.
2.  On the sign-in page, the user enters the domain credentials in the following format: `<User_Name>@<Domain_Name>`, where *&lt;User\_Name&gt;* is the user account name in the integrated domain and *&lt;Domain\_Name&gt;* is the UPN suffix, also known as the domain name.

To simplify the procedure, you can configure silent logon with Microsoft Entra ID server. For more information, see [To Enable Silent Logon](US__how_AzureAD_Silent_Logon_Enable.md).

**Attention:** You may have restricted the list of tenants a user can see to only the tenants to which the user has access. That is, you may have selected the **Secure Tenant on the Sign-In Page** check box on the Tenant Setup page of the Acumatica ERP Configuration wizard \(see [Managing Tenants Locally](../Shared/../UserGuide/SA_MNG_Managing_Tenants_Locally.md)\). In this case, when users with access to multiple companies sign in to Acumatica ERP by using single sign-on \(SSO\) with an external identity provider, they will be signed in to the first company—based on the companies’ order on the [Tenant List](../Shared/../UserGuide/SM_20_35_30.md) \(SM203530\) form—with SSO enabled.

You need to ensure that all users can sign in to that first company. If they cannot, they will not be able to select a different company to sign in to.

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

**Parent topic:**[Integrating Acumatica ERP with Microsoft Entra ID](../UserGuide/US__mng_AzureAD_Integration.md)

