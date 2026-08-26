# User Roles: To Configure Roles for Four Access Tiers {#_6c5091ee-ff61-4f7c-94fc-c057add340da .task}

In the following activity, you will learn how to create user roles and specify access rights to system objects for the roles.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company has purchased an Acumatica ERP subscription in Acumatica Business Cloud. The instance has been installed by SaaS engineers, and a basic company configuration has been performed. The company has decided to have four access tiers:

-   *Configurator*: Roles from this tier give access to only the configuration settings of a functional area.
-   *Manager*: Roles from this tier allow users to work with the entities, inquiries, and reports of a functional area without any restrictions and view configuration settings.
-   *Clerk*: Roles from this tier allow users to only add new records and edit record details within a functional area.
-   *Auditor*: Roles from this tier allow users to only view records, inquiries, and reports associated with a functional area.

You, as a system administrator, have decided to start implementation of the tiers with the general ledger functional area, and you will define one role for each tier. By default, the forms related to this area are grouped under the **Finance** workspace.

## Process Overview { .section}

To configure roles for four access tiers within the general ledger functional area, you will first prepare a spreadsheet with the list of forms of the functional area, and mark the category of each form to understand what this form is used for—configuration, data entry, processing, or reporting. Then you will add roles to the list and indicate the restriction level for each role against the form. For this activity, you will use the [GL\_4Tier\_Access](Files/User_Roles_GL_4Tier_Access.xlsx) spreadsheet, which was prepared to these specifications.

**Attention:** The [GL\_4Tier\_Access](Files/User_Roles_GL_4Tier_Access.xlsx) spreadsheet contains a limited set of the forms related to the general ledger functional area and can be used for training purposes only.

With the spreadsheet prepared, you will use the [User Roles](SM_20_10_05.md) \(SM201005\) form to create four roles. You will use the *AA* prefix for the roles to have them at the top of the list, combined with *\_GL* to indicate the functional area.

With the roles created, you will use the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form to set up the access rights to multiple system objects for multiple roles.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator, by using the *gibbs* username and the *123* password.

## Step 1: Creating Roles { .section}

To create the needed roles in the system, do the following:

1.  On the [User Roles](SM_20_10_05.md) \(SM201005\) form, add a new record.
2.  In the **Role Name** box, type `AA_GL_Configurator`.
3.  In the **Role Description** box, type `Role to access GL configuration settings`.
4.  On the form toolbar, click **Save**.
5.  By repeating the actions performed in the previous instructions, add three more roles with the information from the following table.

    |Name|Description|
    |----|-----------|
    |`AA_GL_Manager`|`Role for working with GL entities and viewing settings`|
    |`AA_GL_Clerk`|`Role for entering and editing records`|
    |`AA_GL_Auditor`|`Role for viewing records and reports`|


## Step 2: Granting Access to All Forms of a Workspace { .section}

To specify the access rights to multiple roles, do the following:

1.  Open the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form.
2.  In the left pane of the form, select the **Finance** node.
3.  In the right pane, locate the four roles you have created. Notice that the roles have the *Revoked* access rights for all forms within the workspace, as all newly created roles do.
4.  In the right pane, for the *AA\_GL\_Manager* role, in the **Access Rights** column, select the *Granted* option. This role is planned to have the highest access level to most forms. To save time, you will grant access to all the forms of the workspace at once.
5.  On the form toolbar, click **Save**.

## Step 3: Modifying Access to a Form { .section}

To modify the roles’ restriction levels for a form, do the following:

1.  While remaining on the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form, in the left pane, expand the **Finance** node to access the list of the forms, and select the first form, [Account by Period](GL_40_20_00.md) \(GL402000\), in the list.
2.  In the right pane, for the *AA\_GL\_Auditor* role, in the **Access Rights** column, select *View Only*. \(According to the [GL\_4Tier\_Access](Files/User_Roles_GL_4Tier_Access.xlsx) spreadsheet, this is the restriction level this role should have for this form.\)
3.  Verify that the other three roles have the restriction levels planned in the spreadsheet, which are the following:
    -   *AA\_GL\_Clerk*: *Revoked*
    -   *AA\_GL\_Configurator*: *Revoked*
    -   *AA\_GL\_Manager*: *Delete*
4.  On the form toolbar, click **Save**.
5.  By performing similar actions, modify the access rights for the rest of the forms according to the [GL\_4Tier\_Access](Files/User_Roles_GL_4Tier_Access.xlsx) spreadsheet.

You have created and configured roles for four access tiers within the general ledger functional area.

**Parent topic:**[Configuring User Roles](../UserGuide/User_Roles_Mapref.md)

