# To Map AD FS Claims to Roles in Acumatica ERP {#_a77ffed9-1d4d-4997-ba17-17cbd90849ea .task}

After you have enabled Microsoft Active Directory Federation Services \(AD FS\) integration, you need to map AD FS claims to user roles defined in Acumatica ERP by using the [User Roles](SM_20_10_05.md) \(SM201005\) form. Claims configured in [To Configure AD FS Claims](US__how_ADFS_Configure_ADFS_Claims.md) transfer domain groups to Acumatica ERP to associate them with user roles. Do the following:

1.  Open the [User Roles](SM_20_10_05.md) \(SM201005\) form.
2.  In the Summary area, in the **Role Name** box, select the Acumatica ERP user role you want to associate with a domain group \(or with multiple groups\).
3.  On the **Claims** tab, click **Add Row**.

    **Tip:** The **Claims** tab appears on this form if the integration of Acumatica ERP with AD FS has been enabled in the `web.config` file, as described in [To Enable AD FS Integration with Acumatica ERP](US__how_ADFS_Enable_Integration.md).

4.  In the **Group** column, type the name of the domain group that you want to associate with the role in the following format: `<Domain_Name>\<Group_Name>`.

    **Tip:** If you have configured claims that transfer other parameters to Acumatica ERP, you need to specify the values of these parameters in the **Group** column.

5.  On the form toolbar, click **Save**.
6.  Repeat Steps 2 through 5 for every role that should be mapped.

After you have mapped AD FS claims with user roles in Acumatica ERP you can assign specific roles for a particular domain user, as described in [To Set Up Role Assignment for Domain Users](US__how_ADFS_Groups_Override.md) or enable silent logon with AD FS to use the AD FS service as the default identity provider, as described in [To Enable Silent Logon](US__how_ADFS_Silent_Logon_Enable.md).

**Parent topic:**[Integrating Acumatica ERP with AD FS](../UserGuide/US__mng_ADFS_Integration.md)

