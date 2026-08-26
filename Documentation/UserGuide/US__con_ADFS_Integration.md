# Integration with AD FS {#_61a9e2ba-009c-4254-b09e-efe803d42a39 .concept}

You integrate Acumatica ERP with Microsoft Active Directory Federation Services \(AD FS\) when you want to manage users and access rights using Active Directory \(AD\) and your Acumatica ERP instance is deployed on the Internet but not in your organization's intranet.

Integration of Acumatica ERP with AD FS also provides single sign-on for domain users between your Acumatica ERP instance and other services that use AD FS.

**Attention:**

-   This functionality is available only if the *Active Directory and Other External SSO* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.
-   We do not recommend using the AD FS authentication simultaneously with the OpenID authentication.

## Requirements { .section}

To seamlessly integrate your AD FS server and your Acumatica ERP instance, make sure that the following requirements are met.

-   The AD FS version 3.0 \(included in Windows Server 2012 R2\) or later.
-   AD FS is configured to provide access to external web services.
-   The domain users have preconfigured email addresses.

## Configuration Steps { .section}

You can configure integration with AD FS when you implement Acumatica ERP or at any later time. To integrate an instance of Acumatica ERP with AD FS, you perform the following steps:

1.  Configure the AD FS server. Do the following:
    1.  Configure AD FS Relying Party Trust to register your Acumatica ERP instance with AD FS. For details, see [To Configure the AD FS Relying Party Trust](US__how_ADFS_Configure_ADFS_relying_party_trust.md).
    2.  Configure claims for Acumatica ERP, as described in [To Configure AD FS Claims](US__how_ADFS_Configure_ADFS_Claims.md).
2.  Enable integration with AD FS by modifying the `web.config` file of the application instance, as described in [To Enable AD FS Integration with Acumatica ERP](US__how_ADFS_Enable_Integration.md).

    **Important:** When you save changes to the `web.config` file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance.

3.  Map the AD FS claims to Acumatica ERP roles. This process is described in [To Map AD FS Claims to Roles in Acumatica ERP](US__how_ADFS_map_claims.md) .
4.  Optional: If required, override the roles assigned to any user automatically by selecting the required roles manually. For details, see [To Set Up Role Assignment for Domain Users](US__how_ADFS_Groups_Override.md).
5.  Optional: If you want to use the AD FS service as the default identity provider, enable silent logon with AD FS, as described in [To Enable Silent Logon](US__how_ADFS_Silent_Logon_Enable.md).

## User Accounts of Domain Users in Acumatica ERP { .section}

After you have enabled integration with the identity management system, user accounts for domain users are created automatically when the users sign in to your Acumatica ERP instance for the first time.

The accounts of domain users in Acumatica ERP are based on their accounts in the domain. The password of a domain user in Acumatica ERP is the same as the domain account password. The email address and the first and last name of the user are populated from the domain account as well. However, the login, password, email address, and first and last name are managed through the domain and cannot be changed in Acumatica ERP.

**Attention:**

-   You cannot restore the passwords of domain users by using Acumatica ERP tools. You should restore users' domain credentials by using the tools of Active Directory \(AD\).
-   Once the user account is created, we do not recommend renaming users on the Active Directory or Entra ID side. Instead, we suggest that you delete the old account and create a new one. Contact Acumatica support team to get assistance in this task.

To speed up the authentication of users, the information about AD groups is automatically cached by Acumatica ERP if the count of the user groups is greater than or equal to the value of the `ADGroupCacheLimit` parameter specified in the `web.config` file. To update the list of the user groups in Acumatica ERP with current information from AD, click **Reload AD Groups** on the toolbar of the [User Roles](../Shared/../UserGuide/SM_20_10_05.md#) \(SM201005\) form.

The **Reload AD Groups** button appears only when you have integrated the Acumatica ERP instance with AD or Microsoft Entra ID and when the number of user groups in AD or Entra ID is greater than or equal to the value of the `ADGroupCacheLimit` parameter specified in the `web.config` file. If the number of users and groups in AD is less than the value of the `ADGroupCacheLimit` parameter, Acumatica ERP retrieves the lists of users and groups directly from AD.

## Domain User Authentication { .section}

After integration of Acumatica ERP with AD FS users use single sign-on \(SSO\) with the domain to sign in to Acumatica ERP. By default, the users do the following to authenticate themselves:

1.  On the Sign-In page of your Acumatica ERP instance, the user selects the Entra ID icon \(![](Images/AD_AzureAD.png)\) to open the AD FS sign-in page.
2.  On the sign-in page, the user enters the domain credentials in the following format: `<User_Name>@<Domain_Name>`, where *&lt;User\_Name&gt;* is the user account name in the integrated domain and *&lt;Domain\_Name&gt;* is the UPN suffix, also known as the domain name.

To simplify the procedure, you can configure silent logon with the AD FS server. For more information, see [To Enable Silent Logon](US__how_ADFS_Silent_Logon_Enable.md).

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

**Parent topic:**[Integrating Acumatica ERP with AD FS](../UserGuide/US__mng_ADFS_Integration.md)

