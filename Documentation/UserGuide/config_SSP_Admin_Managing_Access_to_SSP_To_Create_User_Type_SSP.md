# Managing Access to the Self-Service Portal: To Create User Types for User Accounts {#_510864ac-2fc2-4900-b340-f78f401a95bd .task}

In the following implementation activity, you will create user types to be used for contacts that will have access to the Acumatica Self-Service Portal. When a user type is specified for a newly created user, it causes the system to insert default settings, including the entity type \(an external contact for a Self-Service Portal user\) associated with the user type and the roles that can be associated with the user account.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams wants to give access to the Self-Service Portal for users of customers' companies. To start configuring the access, you need to create specific user types first. You will need to create the *Customer Admin* and *Customer User* user types, which you will use for the *Customer Admin* and *Customer User* user roles, respectively.

## Configuration Overview {#section_ynp_zqg_3pb .section}

For the purposes of this activity, the following tasks have been performed:

-   The Acumatica ERP application instance with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded and the Self-Service Portal application instance have been deployed in the same database.

    **Tip:** This deployment is outside of the scope of this training.

-   In the *U100\_SSP\_Admin\_2026 R1* dataset, on the [User Roles](SM_20_10_05.md) \(SM201005\) form of Acumatica ERP, the *Portal Admin* role has been assigned to the *gibbs* user account. The user account is associated with Kimberly Gibbs, the system administrator in the SweetLife Fruits &amp; Jams company. The role provides full administrative privileges in the Self-Service Portal.

## Process Overview { .section}

In this activity, you will do the following on the [User Types](EP_20_25_00.md) \(EP202500\) form of Acumatica ERP:

1.  Create the *Customer User* and the *Customer Admin* user types.
2.  Select the role that can be assigned to the newly created user accounts with the selected user type and make it default role.

## System Preparation { .section}

Before you start creating user types, do the following:

1.  Launch the Acumatica ERP instance that uses the same database and tenant as the Self-Service Portal to be configured.
2.  Sign in as system administrator by using the *gibbs* username and the *123* password.
3.  Make sure that you have performed the following prerequisite activity: [Managing Access to the Self-Service Portal: To Create User Roles for a Customer’s Employees](config_SSP_Admin_Managing_Access_to_SSP_Create_Roles_for_Customer_Employees.md).

## Step 1: Creating a User Type for Customers’ Users {#section_nnf_scr_x4b .section}

In this step, you will create the *Customer User* user type, which will be selected for the Self-Service Portal users in the customers' companies who are not being given administrative access rights.

To add the *Customer User* user type, do the following in the Acumatica ERP instance:

1.  In Acumatica ERP, open the [User Types](EP_20_25_00.md) \(EP202500\) form.
2.  In the **User Type** box of the Summary area, type `Customer User`.
3.  In the **Linked Entity** box, select *Contact*. This setting indicates that *Customer User* is a contact-related user type: a user type associated with a contact in your system.
4.  In the **Description** box, type `Customer user`.
5.  Select the **Allow Selection of This Type on Contacts Form** check box.
6.  On the **Allowed Roles** tab, click **Add Row**.
7.  Specify the following settings for this row:
    -   **Role Name**: *Customer User*
    -   **Assigned by Default**: Selected

        With this check box selected, this role will be automatically assigned to any new user for which the user type is selected.

8.  On the **Login Rules** tab, select the **Use Email as Username** check box. This indicates that the email address of a contact will be used as the username of the contact for a new user of this user type.
9.  On the form toolbar, click **Save**.

## Step 2: Creating a User Type for Customers’ Administrators {#section_pmc_scr_x4b .section}

In this step, you will add a special user type because none of the existing types allows a user to manage user accounts in the Self-Service Portal. To add the *Customer Admin* user type, do the following:

1.  While you are still viewing the [User Types](EP_20_25_00.md) \(EP202500\) form, click **Add New Record** on the form toolbar.
2.  In the **User Type** box of the Summary area, type `Customer Admin`.
3.  In the **Linked Entity** box, select *Contact*. This setting indicates that *Customer Admin* is a contact-related user type: a user type associated with a contact in your system.
4.  In the **Description** box, type `Customer admin`.
5.  Select the **Allow Selection of This Type on Contacts Form** check box.
6.  On the **Allowed Roles** tab, click **Add Row**.
7.  Specify the following settings for this row:
    -   **Role Name**: *Customer Admin*
    -   **Assigned by Default**: Selected
8.  On the **Login Rules** tab, select the **Use Email as Username** check box.
9.  On the **Managed User Types** tab, do the following:
    1.  Click **Add Row**.
    2.  In the **User Type** column, select *Unrestricted External User*.
    3.  Click **Add Row**.
    4.  In the **User Type** column, select *Customer User*.

        With these types listed on the tab, a user with the *Customer Admin* user type can create, manage, and delete user accounts that are associated with the user types listed on this tab.

10. On the form toolbar, click **Save**.

You have created user types, which will be then assigned to the Self-Service Portal users.

**Parent topic:**[Managing Access to the Self-Service Portal](../UserGuide/config_SSP_Admin_Access_to_SSP_Mapref.md)

