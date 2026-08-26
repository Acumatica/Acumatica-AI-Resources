# To Set Up Role Assignment for Domain Users {#_7aa0dabb-ecee-4f65-8a27-bdae4cc9433e .task}

When a Microsoft Active Directory \(AD\) domain user signs in to Acumatica ERP for the first time, the system adds a user account for this user and assigns roles to the new account based on the mapping between AD groups and Acumatica ERP roles. For the full integration procedure, see [Integration with Active Directory](US__con_Integration_with_Active_Directory.md).

You can override the automatically assigned roles of a particular domain user by selecting the required roles manually for the user on the [Users](SM_20_10_10.md) \(SM201010\) form, for example, if you want the user to access additional Acumatica ERP forms.

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

**Parent topic:**[Integrating Acumatica ERP with Active Directory](../UserGuide/US__mng_Integration_with_Active_Directory.md)

