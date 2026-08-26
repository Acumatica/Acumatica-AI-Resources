# The Acumatica ERP UI : To Add Items to Favorites {#_35a9eae5-cdcb-42fd-b178-833b33ae831d .task}

The following activity will help you manage favorites in Acumatica ERP.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a new sales manager of the SweetLife Fruits &amp; Jams company, and you want to use favorites to make frequently used items easy to access. You need to have at hand the predefined dashboard that has real-time information related to customers with the highest overdue balances. You also need to quickly open reports that contain customer-related information.

## Process Overview { .section}

In this activity, you’ll do the following:

1.  Add links to workspace items to your favorites
2.  Remove a link to the workspace item from your favorites

## System Preparation { .section}

Before you start managing favorites in Acumatica ERP, make sure that the following tasks have been performed:

-   You have installed an Acumatica ERP instance with the *U100* dataset, or a system administrator has performed this task for you.
-   You have signed in to Acumatica ERP with the following credentials:

    -   **Username**: *chubb*
    -   **Password**: *123*
    For details, see [Acumatica ERP Access: Process Activity](GS_Accessing_Acumatica_ERP_Process_Activity.md).


## Step 1: Adding Items to Your Favorites { .section}

Suppose that you need to add to your favorites the *Controller* dashboard and the [Customer Summary](AR_65_05_00.md) \(AR650500\) and [Customer History Summary](AR_65_21_00.md) \(AR652100\) reports.

To add links to the workspace items to your favorites, do the following:

1.  On the main menu, click the **More Items** menu item. The system displays over the working area a menu with tiles for each of the workspaces in the system, grouped by their broader functional areas.
2.  Point at the **Dashboards** tile \(under **Other**\) and click the Pin \(![](Images/GS_UI_pin_button.png)\) button. The **Dashboards** menu item is added \(that is, pinned\) to the main menu.
3.  On the main menu, click **Dashboards**.
4.  In the **Dashboards** workspace, which opens, point at the link to the *Controller* workspace item and then click the star icon left of the link. Notice that the star icon is highlighted. You have added the *Controller* dashboard to your favorites.
5.  On the main menu, click **Favorites** to open the **Favorites** workspace. Notice that the *Controller* link is displayed in the **Dashboards** category.
6.  Click *Controller*.
7.  In the *Controller* dashboard, which opens, view the **Remove from Favorites** \(![](Images/GS_favorites_remove_from_favorites_button.png)\) icon right of the title of the dashboard.
8.  Search for the [Customer Summary](AR_65_05_00.md) \(AR650500\) report. To do this, in the Search box, type `customer summary`. On the **Menu Items** tab of the Search form, which opens, in the **Reports** category, click *Customer Summary*.
9.  On the title bar of the [Customer Summary](AR_65_05_00.md) report form, which opens, point at the report title, and click the **Add to Favorites** icon right of the title. You have added this report to your favorites.
10. Search for the [Customer History Summary](AR_65_21_00.md) \(AR652100\) report. To do this, in the Search box, type `customer history summary`. On the **Menu Items** tab of the Search form, which opens, in the **Reports** category, point at the *Customer History Summary* report and click the star icon left of the link. You have added this report to your favorites.
11. Open the **Favorites** workspace. Notice that the following is displayed in the workspace:
    -   The link to the *Controller* dashboard, listed in the **Dashboards** category
    -   The link to the [Customer Summary](AR_65_05_00.md) \(AR650500\) report, listed in the **Receivables** category
    -   The link to the [Customer History Summary](AR_65_21_00.md) \(AR652100\) report, listed in the **Receivables** category

## Step 2: Removing an Item from Your Favorites { .section}

Suppose that you no longer need in your favorites the link to the *Controller* dashboard, which you added to your favorites in the previous step.

To remove the link to the dashboard from your favorites, do the following:

1.  While you are still viewing the **Favorites** workspace, point at the link to the *Controller* dashboard and click the star icon left of the link. Notice that the category remains, and the link is crossed out.
2.  Close the **Favorites** workspace.
3.  Reopen the **Favorites** workspace. Notice that neither the **Dashboards** category nor the link to the *Controller* dashboard is displayed.

## Step 3: Adding Records to Your Favorites in the Recently Viewed Workspace { .section}

Suppose that you are going to discuss the sale of fruit to the Delicious Crispy bakery with Debbie Euston, assistant bakery manager. You need to have the *Debbie Euston* contact at hand.

To add the *Debbie Euston* contact record to the **Favorites** list in the **Recently Viewed** workspace, do the following:

1.  In the Search box, type `contacts`. The Search form opens.
2.  On the **Menu Items** tab, in the **Profiles** category, click *Contacts*. The Contacts \(CR3020PL\) list of records opens.
3.  In the **Contact** column, click the *Debbie Euston* link to open the contact on the [Contacts](CR_30_20_00.md) \(CR302000\) form.
4.  In the top pane of the Acumatica ERP screen, click the Recently Viewed button right of the Search box. The **Recently Viewed** workspace opens. Notice that the system has added a link to the *Debbie Euston* contact at the top of the list of records, because this is the last record that you have opened.
5.  Point at the link to the *Debbie Euston* contact, and click the star icon left of the link. Notice that the star icon is highlighted.

    You have added the *Debbie Euston* contact to your favorite records.

6.  Close the **Recently Viewed** workspace.
7.  Reopen the **Recently Viewed** workspace. Notice that the link to the *Debbie Euston* contact is listed in **Favorite Records**.

## Step 4: Removing a Record from Your Favorites in the Recently Viewed Workspace { .section}

Suppose that you are no longer working with the Delicious Crispy bakery and you do not need the *Debbie Euston* contact among your favorite records anymore.

To remove the *Debbie Euston* contact record from the **Favorite Records** list in the **Recently Viewed** workspace, do the following:

1.  While you are still viewing the **Recently Viewed** workspace, in the **Favorite Records** list, click the highlighted star icon left of the *Debbie Euston* link.
2.  Close the **Recently Viewed** workspace.
3.  Reopen the **Recently Viewed** workspace. Notice that the link to the *Debbie Euston* contact is no longer listed in **Favorite Records**.

**Parent topic:**[Learning About the Acumatica ERP UI](../UserGuide/GS_Learning_UI_Mapref.md)

