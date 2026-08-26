# To Map Active Directory Groups to Roles in Acumatica ERP {#_f9ced04c-234b-46ab-9d67-6816cc19606c .task}

After you have enabled Active Directory \(AD\) integration, you need to map AD groups to user roles defined in Acumatica ERP by using the [User Roles](SM_20_10_05.md) \(SM201005\) form.

## Before You Begin { .section}

Before you start configuring your system, make sure that all the domain users have email addresses configured in AD.

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

After you have mapped AD groups with user roles in Acumatica ERP you can assign specific roles for a particular domain user, as described in [To Set Up Role Assignment for Domain Users](US__how_AD_Groups_Override.md).

**Parent topic:**[Integrating Acumatica ERP with Active Directory](../UserGuide/US__mng_Integration_with_Active_Directory.md)

