# To Create a Contact {#_228d2713-8ed8-412b-ac17-2ff89d6bd687 .task}

In this topic, you will learn how to create a contact in the Acumatica Self-Service Portal. You use the [Contacts](SP_40_80_40.md) \(SP408040\) form, which lists all existing contacts, as a starting point to work with a contact. From this form, you open the [Contact](SP_40_80_41.md) \(SP408041\) form to enter or edit a contact’s settings.

In the process of creating a contact, you will enter settings that the system will use to create a corresponding user account so that the contact can sign in to the system. To do this, on the **Access to Portal** tab of the [Contact](SP_40_80_41.md) \(SP408041\) form, you will enter basic user settings, including the user type, which will grant access rights to the new user.

**Attention:** To access to the [Contacts](SP_40_80_40.md) \(SP408040\) form, you must be signed in to the Self-Service Portal with a user account that has the *Customer Admin*, *Administrator*, or *Portal Admin* role assigned.

## To Add a Contact { .section}

To create a contact, do the following:

1.  In the Self-Service Portal, open the [Contacts](SP_40_80_40.md) \(SP408040\) form.
2.  On the form toolbar, click the **Add New** button. The [Contact](SP_40_80_41.md) \(SP408041\) form opens.
3.  On the **Details** tab, enter the contact information of the employee as follows:
    1.  In the **Summary** section, enter the employee's name and job title.
    2.  In the **Contact** section, enter the main contact data, including the email address, website, and phone and fax numbers.

        **Attention:** Make sure that the email address is valid because it may be used to send the user information, including password recovery details.

    3.  In the **Address** section, select the **Same as in Account** check box to use the company's address as the contact address. You can leave the **Same as in Account** check box cleared and enter the address manually if the new contact has a different business address.

## To Create a User Account { .section}

While you are on the [Contact](SP_40_80_41.md) \(SP408041\) form, you will create a corresponding user account so that the contact can sign in to the Self-Service Portal. Do the following:

1.  In the **User Type** box of the **Access to Portal** tab \(**User Information** section\), select the user type, which grants access rights to the new user.
2.  In the **Login** box, enter the username to be used to sign in to the Self-Service Portal.
3.  In the **Selected** column of the table, in the list of available roles, select the check boxes for the user roles you want to assign to the contact’s user account.

    **Attention:** The contact must have at least one role to be able to access the Self-Service Portal.

4.  To create a password for the user, do one of the following:
    -   Select the **Generate Password** check box to generate the password automatically; the system will send the username and password to the contact by using the email address you have specified in the **Email** box on the **Details** tab.
    -   Clear the **Generate Password** check box, and type the new password in the **Password** box. The user will be asked to enter the new password during the next sign-in to the system.
5.  In the **Time Zone** box \(**Personal Settings** section\), select the time zone to define the working hours for the new user account.
6.  In the **Status** box \(**User Information** section\), make sure that the user account has the *Active* status.
7.  In the Summary area, make sure that the **Active** check box is selected for the new user account.
8.  On the form toolbar, click **Save**.

You have created the contact and corresponding user account so that the contact can sign in to the Self-Service Portal.

**Parent topic:**[Your Company's Contacts](../Portal/SP__con_Contacts.md)

