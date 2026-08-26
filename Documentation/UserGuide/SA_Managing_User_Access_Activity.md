# User Access: To Assign a Role to Multiple Users {#_bbddca70-0272-4848-82dc-3fbdf9877cb7 .task}

The following activity will walk you through the process of assigning a role to multiple user accounts.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you, as a system administrator, have received a number of access requests to the generic inquiries that are exposed through the OData protocol—that is, the generic inquiries for which the **Expose via OData** check box is selected on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. The access to these inquiries is provided by the predefined *BI* role.

The access requests for the following users have been justified and approved by their respective managers:

-   Ian Pick, sales department lead \(with the username *pick*\)
-   Bill Owen, marketing manager \(with the username *owen*\)

## Process Overview { .section}

You will use the [User Roles](SM_20_10_05.md) \(SM201005\) form to assign a role to multiple users.

## System Preparation { .section}

Before you start performing the step of this activity, you should sign in to a company with the *U100* dataset preloaded. Sign in as a system administrator, by using the *gibbs* username and the *123* password.

## Step: Assigning the Role to Multiple Users { .section}

To assign the *BI* role to multiple users, do the following:

1.  Open the [User Roles](SM_20_10_05.md) \(SM201005\) form.
2.  In the **Role Name** box of the Summary area, select the *BI* role.
3.  On the **Membership** tab, do the following:
    1.  Click **Add Row** on the table toolbar.
    2.  In the **Username** column, select *pick*, which represents the user account of Ian Pick.
4.  Repeat the previous instruction to add *owen*, which represents the user account of Bill Owen, to the *BI* role.
5.  On the form toolbar, click **Save**.

You have assigned the role to multiple users.

**Parent topic:**[Managing User Access](../UserGuide/SA_Managing_User_Access_Mapref.md)

