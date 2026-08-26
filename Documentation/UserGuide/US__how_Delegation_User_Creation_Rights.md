# To Delegate the Right to Create Users {#_da75614a-44a6-4f29-a52b-7e40595c096f .task}

You use the [User Types](EP_20_25_00.md) \(EP202500\) form to delegate to an external user the right to create users. This may be required if you need to give your partners the right to manage their organizations' users or customers on the Self-Service Portal of your Acumatica ERP instance.

This procedure describes how you provide an external user with the right to create users in Acumatica ERP.

## To Delegate the Right to Create Users { .section}

1.  Open the [User Types](EP_20_25_00.md) \(EP202500\) form.
2.  Create and save a contact-related user type for an external administrator who will have the right to create users. You could name this type, for example, *External Admin*. For details, see [To Add a User Type](US__how_Add_Contact_User_Type.md).
3.  Create a contact-related user type for external users. You could name this type, for instance, *Portal User*. The external administrator will have the right to create users of this type.
4.  In the Selection area, in the **User Type** box, select the contact-related user type you have created for an external administrator \(such as *External Admin*\).
5.  On the table toolbar of the **Managed User Types** tab, click **Add Row**, and in the **User Type** column, select the contact-related user type you have created for external users \(such as *Portal User*\).
6.  On the form toolbar, click **Save**.

Now any user of the *External Admin* type can create, delete, and manage users of the *Portal User* type \(if you have used the sample names presented above\).

**Parent topic:**[Managing User Access](../UserGuide/SA_Managing_User_Access_Mapref.md)

