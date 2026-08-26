# User Access: To Add a User Account {#_e1fb24a5-55b2-4856-afaa-b91b96ef51c3 .task}

The following activity will walk you through the process of adding a user account.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you, as a system administrator, have received a request to add a user account for a new employee, Sarah Kent, who has taken the position of a warehouse worker. The request has been justified and approved by the corresponding manager.

## Process Overview { .section}

You will use the [Users](SM_20_10_10.md) \(SM201010\) form to add and configure a user account.

## System Preparation { .section}

Before you start performing the step of this activity, you should sign in to a company with the *U100* dataset preloaded. Sign in as a system administrator, by using the *gibbs* username and the *123* password.

## Step: Adding the User Account { .section}

To add the user account for Sarah Kent, do the following:

1.  On the [Users](SM_20_10_10.md) \(SM201010\) form, add a new record.
2.  In the **Login** box of the Summary area, type `kent`.
3.  Clear the **Generate Password** check box.
4.  In the **Password** box, type `Welcome123`.
5.  Specify the following settings for this user:
    -   **First Name**: `Sarah`
    -   **Last Name**: `Kent`
    -   **Email**: `kent@sweetlife.com`
    -   **Comment**: `Warehouse worker`
6.  Specify the following settings to set this user’s individual password policy:
    -   **Allow Password Recovery**: Selected
    -   **Allow Password Changes**: Selected
    -   **Password Never Expires**: Cleared
    -   **Force User to Change Password on Next Login**: Selected
7.  On the **Roles** tab, assign the following roles to the user by selecting the check boxes in the **Selected** column:
    -   *Branch HeadOffice*
    -   *Internal User*
    -   *Warehouse Worker*
8.  On the form toolbar, click **Save**.

**Parent topic:**[Managing User Access](../UserGuide/SA_Managing_User_Access_Mapref.md)

