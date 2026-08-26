# User Roles: To Modify Access Rights for a Copied Role {#_01470ef4-37c0-48fd-8011-24bb36151eec .task}

In the following activity, you will learn how to copy an existing role and modify access to system objects for the copied role.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a system administrator, and because of the company’s growth, you now have an assistant. Initially, the assistant will help you with the creation of user accounts for the new employees. Then you will decide what other responsibilities the assistant will have. To accommodate the assistant’s current job responsibilities, you have decided to copy your existing role \(*Administrator*\) and modify access rights for the copy.

## Process Overview { .section}

You will use the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form to create a copy of a role and then modify access rights for the copied role, which you will name *Junior Administrator*.

You will revoke the access of the *Junior Administrator* role to all workspaces in the system. To allow users with this role to create a user, you will give the role full access to the [Users](SM_20_10_10.md) \(SM201010\), [Contacts](CR_30_20_00.md) \(CR302000\), and [Employees](EP_20_30_00.md) \(EP203000\) forms, which are needed for adding employees to the system. \(For details on the creation of user accounts, see [User Access: To Add a User Account](SA_Managing_User_Access_To_Add_User_Account_Activity.md).\) These forms are located in the **User Security**, **Marketing**, and **Configuration** workspaces, to which you have revoked access. The system displays the menu items for restricted workspaces on the main menu, but only links to allowed forms are visible when the user opens one of these workspaces.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator, by using the *gibbs* username and the *123* password.

## Step 1: Copying a Role { .section}

To copy an existing role, do the following:

1.  Open the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form.
2.  In the **Role Name** box, select the *Administrator* role.
3.  On the form toolbar, click **Copy Role**.
4.  In the **New Role** dialog box, which opens, do the following:
    1.  In the **New Role Name** box, type `Junior Administrator`.
    2.  Click **Copy** to copy the role and close the dialog box.
5.  On the form toolbar, click **Save**.

## Step 2: Modifying Access Rights for the Selected User Role { .section}

To modify access rights for the copied role, do the following:

1.  While remaining on the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form with the copied role selected in the **Role Name** box, in the left pane, select the tenant node \(the very first one, whose name is in all caps\).
2.  In the right pane, for all workspaces in the system, select *Revoked* in the **Access Rights** column.

    **Tip:** You can skip workspaces with the functionality that is not included in your license.

3.  In the left pane, click the **Configuration** node.
4.  In the right pane, for the row with the [Employees](EP_20_30_00.md) \(EP203000\) form, select *Delete* in the **Access Rights** column.
5.  On the form toolbar, click **Save**.
6.  By performing actions similar to those in the previous instructions, set the *Delete* access rights to the following forms:
    -   The [Contacts](CR_30_20_00.md) \(CR302000\) form in the **Marketing** node
    -   The [Users](SM_20_10_10.md) \(SM201010\) in the **User Security** node

You have created a new role based on a copy of an existing role and modified the new role's access to suit your needs.

**Parent topic:**[Configuring User Roles](../UserGuide/User_Roles_Mapref.md)

