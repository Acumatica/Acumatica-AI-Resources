# Tailoring the Self-Service Portal: To Configure a Workspace {#_70fd916a-d94a-44dd-bb64-d9b376096a80 .task}

In the following implementation activity, you will configure a workspace in the Acumatica Self-Service Portal.

## Story { .section}

Suppose that you are Kimberly Gibbs, system administrator who also manages workspaces, at the SweetLife Fruits &amp; Jams company. Your colleague David Chubb has received a request from a customer, the Storehut chain of supermarkets in New York, about the customization of SweetLife's Self-Service Portal.

You need to create a workspace for Storehut's purchase managers in SweetLife's Self-Service Portal to give the managers the ability to monitor detailed information about their orders.

## Configuration Overview { .section}

For the purposes of this activity, the following tasks have been performed:

-   The Acumatica ERP application instance with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded and the Self-Service Portal application instance have been deployed in the same database.

    **Tip:** This deployment is outside of the scope of this training.

-   In the *U100\_SSP\_Admin\_2026 R1* dataset, on the [User Roles](SM_20_10_05.md) \(SM201005\) form of Acumatica ERP, the *Portal Admin* role has been assigned to the *gibbs* user account. The user account is associated with Kimberly Gibbs, the system administrator in the SweetLife Fruits &amp; Jams company. The role provides full administrative privileges in the Self-Service Portal.

## Process Overview { .section}

In this activity, you will do the following:

1.  Create the **Order Management** workspace
2.  Rename the workspace
3.  Rearrange menu items on the main menu panel
4.  Add form links to the workspace
5.  Add a tile to the workspace
6.  Create a new category in the workspace
7.  Add links to the new category
8.  Rearrange links in the workspace category
9.  Delete a link from the workspace
10. Verify that the workspace has been correctly configured
11. Delete the workspace

## System Preparation { .section}

Before you start configuring a workspace in the Self-Service Portal, do the following:

1.  Launch the Acumatica ERP website with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded.
2.  Sign in to the system as system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
3.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS10000\) form, make sure that the following features have been enabled:
    -   *Customer Portal*
    -   *B2B Ordering*
    -   *Case Management on Portal*
    -   *Financials on Portal*
4.  Make sure that you have performed the following prerequisite activities:
    1.  [Configuring the Self-Service Portal: To License the Self-Service Portal Instance](config_SSP_Admin_To_License_SSP_Instance.md)
    2.  [Configuring the Self-Service Portal: To Specify the General Settings of the Self-Service Portal](config_SSP_Admin_To_Specify_General_Settings_of_Instance.md)
    3.  [Managing Access to the Self-Service Portal: To Create User Roles for a Customer’s Employees](config_SSP_Admin_Managing_Access_to_SSP_Create_Roles_for_Customer_Employees.md)
    4.  [Managing Access to the Self-Service Portal: To Create User Types for User Accounts](config_SSP_Admin_Managing_Access_to_SSP_To_Create_User_Type_SSP.md)
    5.  [Managing Access to the Self-Service Portal: To Create User Accounts for Contacts](config_SSP_Admin_Access_to_SSP_Add_User_Account_for_Contact.md)
    6.  [Configuring Case Management in the Self-Service Portal: Implementation Activity](config_SSP_Admin_Configuring_Case_Management_in_SSP_Implem_Activity.md)
    7.  [Tailoring the Self-Service Portal: To Create a Generic Inquiry](config_SSP_Admin_Tailoring_SSP_To_Create_a_Generic_Inquiry.md)
    8.  [Tailoring the Self-Service Portal: To Create and Design a Dashboard](config_SSP_Admin_Tailoring_SSP_To_Configure_Dashboard.md)
5.  Launch the Self-Service Portal website with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded.
6.  Sign in to the system as system administrator by using the *gibbs* username and the *123* password.

## Step 1: Creating a Workspace { .section}

To create a workspace, do the following:

1.  In the Self-Service Portal, switch to Menu Editing mode as follows:
    1.  On the main menu panel \(in the lower left corner of the screen\), click the **Open Configuration Menu** \(![](Images/Main_Menu_Dots.png)\) button.
    2.  Click **Edit Menu**.
2.  On the top toolbar \(in the upper left corner of the screen\), click **Add Workspace**.
3.  In the **Workspace Parameters** dialog box, which opens, specify the following settings:

    1.  In the **Icon** box, select *powerbi*; this icon will be displayed in the title of the workspace.

        **Tip:** You can begin typing the name of the icon into the box to quickly find the icon.

    2.  In the **Area** box, select *Operations*. This is the functional area for which the workspace will be displayed.
    3.  In the **Title** box, type `Order Management`.
    4.  Click **OK** to save your changes and close the dialog box.
    The empty **Order Management** workspace has been created. In Menu Editing mode, you can see the title of the newly created workspace on the main menu panel.

    **Important:** An empty workspace that does not have any links to the forms, reports, or dashboards, is not displayed on the main menu panel in view mode.

4.  In the lower left corner of the screen, click **Exit Menu Editing** to save your changes and stop working in Menu Editing mode.

## Step 2: Renaming the Workspace { .section}

Suppose that the customer has requested to rename the **Order Management** workspace to **Order Manager**.

To rename the workspace, do the following:

1.  Switch to Menu Editing mode.
2.  On the main menu panel, point at the **Order Management** workspace title.
3.  Click **Edit Workspace Parameters** \(the Edit button right of the workspace title\).
4.  In the **Workspace Parameters** dialog box, which opens, do the following:
    1.  In the **Title** box, type `Order Manager`.

        **Tip:** You can change the icon and area of a workspace by selecting a new value in the corresponding box.

    2.  Click **OK** to save your changes. The dialog box is closed. The workspace has been renamed.

## Step 3: Rearranging Workspace Menu Items on the Main Menu Panel { .section}

To place the **Order Manager** menu item before the **Orders** menu item, do the following:

1.  While you are still in Menu Editing mode, on the main menu panel, drag the **Order Manager** menu item before the **Orders** menu item.
2.  In the lower left corner of the screen, click **Exit Menu Editing** to save your changes.

## Step 4: Adding Links to the Workspace { .section}

To add links to the **Order Manager** workspace, do the following:

1.  Switch to Menu Editing mode.
2.  On the main menu panel, click the **Order Manager** title of the workspace.
3.  On the top toolbar, click **Add Menu Item**.
4.  In the **Select Forms** dialog box, which opens, select the check boxes left of the following form and dashboard names to add the links to the workspace:

    **Tip:** You can begin typing the name into the Search box to quickly find the form.

    -   Case Activities
    -   Catalog
    -   Company Profile
    -   Contract
    -   Contact
    -   My Documents
    -   User Profile
5.  Click **Add &amp; Close** to save your changes and close the dialog box.
6.  In the upper right corner of the workspace title bar, click the **Pin to Main Menu Panel** \(![](../Shared/Images/Workspace_Pin.png)\) button to add the new workspace to the main menu panel.
7.  In the lower left corner of the screen, click **Exit Menu Editing** to save your changes.

    Notice that the **Order Manager** workspace is now displayed on the main menu panel. The links to the forms that you have added are grouped in categories. You can move any link to a different category, which you will be doing further in this activity.


## Step 5: Adding a Tile to the Workspace { .section}

Suppose that you need to add the **My Orders** tile to the **Order Manager** workspace. This tile opens the My Orders \(SP700003\) form.

To add the **My Orders** tile to the workspace, do the following:

1.  Switch to Menu Editing mode.
2.  On the main menu panel, click the **Order Manager** title to open the workspace.
3.  On the top toolbar, click **Add Tile**.
4.  In the **Tile Parameters** dialog box, which opens, do the following:
    1.  In the **Icon** box, select the *visibility* icon that will be displayed in the tile.
    2.  In the **Title** box, type `My Orders`.
    3.  In the **Form** box, select *SP700003 - My Orders* \(the form that opens if a user clicks the tile\).

        **Tip:** You can begin typing the name of the form into the box to quickly find the form.

    4.  Click **OK** to save your changes and close the dialog box.

        The tile is added to the workspace.

5.  In the lower left corner of the screen, click **Exit Menu Editing** to save your changes.

You have configured a workspace. Notice that the links to the forms and the dashboard are grouped into the predefined categories. You can create new categories and add links to these categories, which you will be doing in the following steps.

## Step 6: Creating a Category in the Workspace { .section}

In a workspace, forms, reports, and dashboards are grouped into categories, to make it easier for users to find the needed links. You can create categories, add the links \(to forms, reports, and dashboards\) to these categories, and move the links to different categories.

In this step, you will create the **Contacts** category in the Self-Service Portal.

To create the category, do the following:

1.  Switch to Menu Editing mode.
2.  Add the **Contacts** category to the workspace as follows:
    1.  On the top toolbar \(in the upper right corner of the screen\), click **Menu Settings** to open the Categories menu.
    2.  On the menu title bar, click **Add Category**.
    3.  In the **Category Parameters** dialog box, which opens, do the following:

        1.  In the **Title** box, type `Contacts`.
        2.  Click **OK** to save your changes. The dialog box is closed.
        **Important:** Any category you add is available for all workspaces. If you delete a category on the Categories menu, the category will be deleted from all workspaces where it has been added.

    4.  In the upper right corner of the screen, click **Menu Settings** to close Menu Editing mode.

## Step 7: Adding Links to the Workspace Category { .section}

In this step, you will add the *Contact*, *User Profile*, and *Company Profile* links to the **Contacts** category, which you have created in the previous step.

To add the links to the **Contacts** category in the Self-Service Portal, do the following:

1.  While you are still in Menu Editing mode, select the **Order Manager** workspace.
2.  Point at the *Contact* link and click the **Edit Link Parameters** button.
3.  In the **Item Parameters** dialog box, which opens, do the following:
    1.  In the **Category** box, select *Contacts*.
    2.  Click **OK** to save your changes. The dialog box is closed.

        The *Contact* link has been added to the **Contacts** category.

        **Tip:** If you have multiple links in a category, you can rearrange the links within the category by dragging them.

4.  Drag the *User Profile* link to the **Contacts** category.
5.  Drag the *Company Profile* link to the **Contacts** category.
6.  In the lower left corner of the screen, click **Exit Menu Editing** to save your changes. The **Order Manager** workspace opens in the view mode.

    The *Contact*, *User Profile*, and *Company Profile* links are now displayed under the **Contacts** category. Notice that the **Profiles** category is no longer displayed in the workspace because no other links from this category remain in the workspace.


## Step 8: Rearranging Links in the Workspace Category { .section}

Suppose that you need to arrange the links in the **Contacts** category to be displayed in alphabetical order.

To rearrange the links in the category, do the following:

1.  Switch to Menu Editing mode.
2.  Drag the *Company Profile* link before the *Contact* link.

## Step 9: Deleting a Link from the Workspace { .section}

Suppose that your customer no longer needs the *Contract* link in the **Order Manager** workspace.

To delete the link from the workspace in the Self-Service Portal, do the following:

1.  While you are still in Menu Editing mode, in the **Other** category, point at the *Contract* link.
2.  Click **Delete Link**.
3.  In the dialog box that opens, click **OK** to delete the *Contract* link. The dialog box is closed; the link has been deleted. Notice that the **Other** category is no longer displayed in the workspace because no other links from this category remain in the workspace.
4.  In the lower left corner of the screen, click **Exit Menu Editing** to save your changes.
5.  Sign out of the Self-Service Portal.

## Step 10: Verifying That the Workspace Has Been Correctly Configured { .section}

To make sure that customers can use the newly created **Order Manager** workspace, do the following:

1.  Sign in to the Self-Service Portal as customer Tonya Lawrence by using the *tonya@storehut.example.com* username and the *123* password.
2.  On the main menu panel, click **Order Manager** to open the **Order Manager** workspace.
3.  Make sure that the workspace items that you have added in the previous steps are displayed in the workspace.
4.  In the **Dashboards** category, click *Case Activities* to view the dashboard.
5.  Sign out of the Self-Service Portal.

## Step 11: Deleting the Workspace { .section}

Suppose that the customer no longer needs the **Order Manager** workspace. To delete the workspace, do the following:

1.  Sign in to the Self-Service Portal as system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  Switch to Menu Editing mode.
3.  On the main menu panel, point at the **Order Manager** workspace title.
4.  Click **Delete Workspace**.

    **Tip:** If you delete a workspace, its tiles and links to forms, reports, and dashboards are deleted. However, all included forms, reports, and dashboards remain in the system. The categories that you have created also remain the system; you can delete them by using the Categories menu.

5.  In the dialog box that opens, click **OK** to delete the workspace. The system closes the dialog box and deletes the workspace.

**Parent topic:**[Tailoring the Self-Service Portal](../UserGuide/config_SSP_Admin_Tailoring_SSP_Mapref.md)

