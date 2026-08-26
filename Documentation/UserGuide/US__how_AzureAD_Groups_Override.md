# To Set Up Role Assignment for Domain Users {#_d0f53f7d-132d-44d2-837f-04173c6f043c .task}

When a domain user signs in to Acumatica ERP for the first time, the system adds a user account for this user and assigns roles to the new account based on the mapping between Active Directory \(AD\) groups and Acumatica ERP roles. For the full integration procedure, see [Integration with Microsoft Entra ID](US__con_AzureAD_Integration.md).

If necessary, you can override the automatically assigned roles by selecting the required roles manually for each domain user on the [Users](SM_20_10_10.md) \(SM201010\) form.

## To Override a User's Role Assignment Based on AD Groups { .section}

1.  Open the [Users](../Shared/../UserGuide/SM_20_10_10.md) \(SM201010\) form.
2.  Optional: If the user has never signed in to Acumatica ERP with their domain credentials, add a local user account for the domain user as follows:
    1.  On the form toolbar, click **Add Active Directory User** to open the **Active Directory User** dialog box.

        **Attention:** The **Add Active Directory User** button appears only if the *Active Directory and Other External SSO* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form and your Acumatica ERP instance is integrated with Active Directory for your company.

    2.  In the **Active Directory User** box, select the AD user account.
    3.  Click **OK** to close the dialog box and populate the form with the user's information.
3.  In the **Login** box, select the user whose default roles you want to change.
4.  In the **Selection** area, select **Override Active Directory Roles with Local Roles**.
5.  On the **Roles** tab, select the roles you want to assign to the user.
6.  On the form toolbar, click **Save**.

## To Restore AD Group Role Assignment for Domain Users { .section}

1.  Open the [Users](../Shared/../UserGuide/SM_20_10_10.md) \(SM201010\) form.
2.  In the **Login** box, select the domain user for whom you want to restore the default roles.
3.  In the **Selection** area, clear **Override Active Directory Roles with Local Roles**.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Integrating Acumatica ERP with Microsoft Entra ID](../UserGuide/US__mng_AzureAD_Integration.md)

