# To Map Microsoft Entra ID Groups to Roles in Acumatica ERP {#_cd2f197a-3792-42d6-87b3-73e0973cf7b6 .task}

After you have enabled integration with Microsoft Entra ID, you need to map Microsoft Entra ID groups to the user roles defined in Acumatica ERP by using the [User Roles](SM_20_10_05.md) \(SM201005\) form.

**Note:** The **Active Directory** tab appears on the form if the integration of Acumatica ERP with Microsoft Entra ID has been enabled in the `web.config` file, as described in [To Configure the Web.Config File for Integration with Microsoft Entra ID](US__how_AzureAD_Enable.md).

## Before You Begin { .section}

Before you start configuring your system, make sure that all the domain users have email addresses configured in Microsoft Entra ID.

## To Map Active Directory Groups to Acumatica ERP Roles { .section}

1.  Open the [User Roles](../Shared/../UserGuide/SM_20_10_05.md) \(SM201005\) form.
2.  In the **Summary** area, in the **Role Name** box, select the role you want to associate with an Active Directory group \(or with multiple groups\).
3.  On the **Active Directory** tab, click **Add Row**.

    **Attention:** The **Active Directory** tab appears on this form if the integration of Acumatica ERP with AD has been enabled in the `web.config` file, as described in [To Enable Active Directory Integration](../Shared/../UserGuide/US__how_Active_Directory_Integration__Enable.md).

4.  In the **Group** column of the new row, select the AD group that you want to associate with the role.
5.  On the form toolbar, click **Save**.
6.  Repeat Instructions 2 through 5 for every role that should be mapped to AD groups.

## To Remove the Mapping of Active Directory Groups to Roles { .section}

1.  Open the [User Roles](../Shared/../UserGuide/SM_20_10_05.md) \(SM201005\) form.
2.  In the **Summary** area, in the **Role Name** box, select the role for which you want to remove association with an Active Directory group \(or with multiple groups\).
3.  Click the row that contains the AD group that you want to disassociate from the role, and click **Delete Row** on the table toolbar.
4.  On the form toolbar, click **Save**.
5.  Repeat Instructions 2 through 4 for every role for which mapping with AD groups should be removed.

After you have mapped Microsoft Entra ID groups with user roles in Acumatica ERP, you can assign specific roles for a particular domain user, as described in [To Set Up Role Assignment for Domain Users](US__how_AzureAD_Groups_Override.md) or enable silent logon with Microsoft Entra ID to use this service as the default identity provider, as described in [To Enable Silent Logon](US__how_AzureAD_Silent_Logon_Enable.md).

**Parent topic:**[Integrating Acumatica ERP with Microsoft Entra ID](../UserGuide/US__mng_AzureAD_Integration.md)

