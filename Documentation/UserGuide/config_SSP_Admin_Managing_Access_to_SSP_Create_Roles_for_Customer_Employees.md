# Managing Access to the Self-Service Portal: To Create User Roles for a Customer’s Employees {#_f1068798-23fa-4dba-adab-0c423e827ca3 .task}

Acumatica ERP provides the predefined *Portal User* role, which allows users to view and work with the company profile and company documents, including contracts and financial documents. A user with this role can create, modify, or delete contacts associated with the company. These are powerful access rights that you might want to avoid assigning to everyone in a customer's company. You can create another role with restricted access to contact creation.

In the following implementation activity, you will create two roles for the Self-Service Portal \(*Customer Admin* and *Customer User*\); both roles are based on copies of the existing *Portal User* role.

## Story { .section}

Suppose that your company wants to have different access rights for users of the Self-Service Portal. You need to create two user roles for the Self-Service Portal users: one for administrators of the customer \(*Customer Admin*\), and another for users of the customer \(*Customer User*\).

Acting as system administrator, you need to create user roles based on a copy of the existing *Portal User* role and specify the proper access rights to some of the forms.

## Configuration Overview { .section}

For the purposes of this activity, the following tasks have been performed:

-   The Acumatica ERP application instance with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded and the Self-Service Portal application instance have been deployed in the same database.

    **Tip:** This deployment is outside of the scope of this training.

-   In the *U100\_SSP\_Admin\_2026 R1* dataset, on the [User Roles](SM_20_10_05.md) \(SM201005\) form of Acumatica ERP, the *Portal Admin* role has been assigned to the *gibbs* user account. The user account is associated with Kimberly Gibbs, the system administrator in the SweetLife Fruits &amp; Jams company. The role provides full administrative privileges in the Self-Service Portal.

## Process Overview {#section_z3f_bhg_dpb .section}

In this activity, you will copy an existing role on the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form to create new roles. For one of the new roles, on the same form, you will modify the access rights to forms and specific records in the system.

## System Preparation { .section}

Before you start creating user roles, sign in to the Self-Service Portal instance with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded as system administrator by using the *gibbs* username and the *123* password.

## Step 1: Creating Roles by Copying an Existing Role { .section}

To create the needed new roles by copying the existing *Portal User* role, do the following:

1.  In the Self-Service Portal, open the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form.
2.  In the **Role Name** box of the Summary area, select *Portal User*.
3.  On the form toolbar, click **Copy Role**.
4.  In the **New Role Name** box of the **New Role** dialog box, which opens, type `Customer Admin` and click **Copy**.

    The system closes the dialog box, creates a new role on the [Access Rights by Role](SM_20_10_25.md) form \(to which you return\), and populates the new role with the settings of the role you have copied \(except for the role name, for which the system inserts the new role name that you entered in the dialog box\).

5.  On the form toolbar, click **Save**.
6.  On the form toolbar, click **Copy Role**.
7.  In the **New Role Name** box of the **New Role** dialog box, which opens, type `Customer User` and click **Copy**. The system closes the dialog box, creates a new role on the [Access Rights by Role](SM_20_10_25.md) form \(to which you return\), and populates the new role with the settings of the role you have copied \(except for the role name\).
8.  On the form toolbar, click **Save**.

In the following step, you will change this role’s access to some of the forms to give the role fewer privileges.

## Step 2: Defining the Proper Access Rights for the Customer User Role { .section}

In this step, you will make changes to the *Customer User* role, which you have created. While you are still viewing the *Customer User* role on the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form, do the following:

1.  In the left pane, click the **Administration** node \(below the tenant node\). The right pane displays the list of the forms available in the **Administration** workspace with the level of access rights the role has to each form.
2.  In the right pane, in the row with *Portal Preferences* in the **Description** column, select *Revoked* in the **Access Rights** column.
3.  On the form toolbar, click **Save**.
4.  In the left pane, select **Profile**.
5.  In the right pane, in the row with *Company Profile* in the **Description** column, select *View Only* in the **Access Rights** column.
6.  In the row with *Contacts* in the **Description** column, select *Revoked* in the **Access Rights** column.
7.  On the form toolbar, click **Save**.

You have created two user roles by copying an existing role. You have also changed the access rights of one of the new roles to some Self-Service Portal forms.

**Parent topic:**[Managing Access to the Self-Service Portal](../UserGuide/config_SSP_Admin_Access_to_SSP_Mapref.md)

