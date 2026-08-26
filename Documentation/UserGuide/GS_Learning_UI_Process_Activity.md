# The Acumatica ERP UI: Process Activity {#_be931354-bb7a-49fe-a0f9-5c41bcbbfbad .task}

The following activity will help you identify the basic elements of the Acumatica ERP user interface and use these elements to move through the system.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a new sales manager of the SweetLife Fruits &amp; Jams company. You’ve signed in to your Acumatica ERP instance for the first time and you would like to become familiar with the UI before you start setting up your working environment to meet your preferences.

## Prerequisites { .section}

You should learn how to sign in to Acumatica ERP. You need to be signed in to gain hands-on familiarity with the user interface. For details, see [Acumatica ERP Access: Process Activity](GS_Accessing_Acumatica_ERP_Process_Activity.md).

## Process Overview { .section}

In this activity, once you’ve signed in to Acumatica ERP, you’ll do the following:

1.  Explore the main menu
2.  View the initial list of workspaces
3.  Explore a workspace
4.  Configure the quick menu of a workspace
5.  Add a predefined workspace to the main menu
6.  Remove a workspace from the main menu
7.  Search for the information related to customers in Acumatica ERP
8.  Explore the Help system
9.  Explore the built-in infotips

## System Preparation { .section}

Before you start becoming familiar with the basic elements of Acumatica ERP, make sure that the following tasks have been performed:

-   You have installed an Acumatica ERP instance with the *U100* dataset, or a system administrator has performed this task for you.
-   A system administrator has built the full-text search index for your Acumatica ERP instance. For details, see [Search Indexes: General Information](SA_Building_Search_Indexes_GeneralInfo.md).
-   You have signed in to Acumatica ERP with the following credentials:

    -   **Username**: *chubb*
    -   **Password**: *123*
    For details, see [Acumatica ERP Access: Process Activity](GS_Accessing_Acumatica_ERP_Process_Activity.md).


## Step 1: Exploring the Main Menu and the Ways to Display It { .section}

On the left side of the Acumatica ERP screen, you can see the main menu and its menu items, each of which represents a functional area of the system. Suppose that you’d like to experiment with the ways you can place the main menu on the screen, to see which fits your preferences.

To change the appearance of the main menu in various ways, do the following:

1.  In the lower part of the main menu, click the **Collapse Main Menu Panel** \(![](Images/GS_UI_main_menu_collapse_button.png)\) button to display the compact view of the icons and workspace names.

    With the main menu collapsed, notice that there’s more space for the main area on the screen. This can be a beneficial way to display the main menu if you’re familiar with the icons of the main menu and would rather view a larger working area.

2.  Click the **Expand Main Menu Panel** \(![](Images/GS_UI_main_menu_expand_button.png)\) button to show the expanded main menu again.
3.  Click the **Open Configuration Menu** \(![](Images/GS_UI_main_menu_more_options_button.png)\) button to open the additional configuration menu.
4.  On the configuration menu, click the **Collapse to Top** button. The main menu is displayed as the **Menu** button in the upper-left corner of the screen, where the **SweetLife** logo was previously displayed.
5.  Click the **Menu** button to display the main menu again.
6.  Click the **Open Configuration Menu** button ![](Images/GS_UI_main_menu_more_options_button.png) to open the configuration menu.
7.  On the configuration menu, click the **Expand to Left** button. The expanded main menu is displayed left of the working area again. The **SweetLife** logo is again displayed in the top left of the screen.

Now that you have seen the different ways the main menu can be displayed, you can display it in ways that fit your working style and make changes as needed.

## Step 2: Viewing the Initial List of Workspaces { .section}

To view the initial list of workspaces on the main menu, do the following:

1.  Make sure that the main menu is expanded so that you can see the names of the menu items along with the icons.
2.  View the names of the workspaces that are displayed on the main menu, using the scroll bar on the left as needed to see all of them. By default, in the *U100* dataset, on the main menu, you can see the following menu items:
    -   **Favorites**
    -   **Data Views**
    -   **Time and Expenses**
    -   **Banking**
    -   **Construction**
    -   **Payables**
    -   **Receivables**
    -   **Sales Orders**
    -   **Purchases**
    -   **Inventory**
    -   **More Items**

You can click any of these menu items to view the corresponding workspace and become familiar with its content, as you’ll in the next step. This will give you an idea of which workspaces might be applicable to your job tasks.

## Step 3: Exploring a Workspace { .section}

Suppose that you’d like to explore the menu items that are related to sales orders, which are organized in the **Sales Orders** workspace. These items are usually forms and reports, but they may also be dashboards, pivot tables, and generic inquiries.

To explore the **Sales Orders** workspace, do the following:

1.  On the main menu, click the **Sales Orders** menu item. Over the working area, the **Sales Orders** workspace opens. View the elements of the workspace: the title, the tiles in the workspace, the categories, the links to menu items within the categories, and the workspace view that is currently being displayed. If the quick workspace view is displayed, you can see the **Show All** button on the workspace footer, and if the full workspace view is displayed, you can see the **Show Less** button on the workspace footer.
2.  In the **Transactions** category, click the *Invoices* link to open the form. The list of invoices opens, from which any listed invoice can be opened and a new invoice can be added.
3.  On the main menu, click the **Sales Orders** menu item to return to the **Sales Orders** workspace.
4.  On the workspace footer, click **Show All** to view all the links to menu items within the categories that can be displayed in the workspace.
5.  Click **Show Less** to return to the quick view of the workspace.
6.  On the workspace title bar, click the **Close Workspace** \(![](Images/GS_UI_workspace_titlebar_close_button.png)\) button to close the **Sales Orders** workspace.

You have explored the **Sales Orders** workspace to get an idea of what it contains and how you can open a form listed in it.

## Step 4: Configuring the Quick Menu of a Workspace { .section}

Suppose that your job responsibilities include analyzing sales profitability and you need to regularly use the [Sales Profitability Analysis](AR_40_90_00.md) \(AR409000\) report. The predefined quick view of the **Sales Orders** workspace doesn’t include the link to this report.

To add the link to this report to the quick view of the **Sales Orders** workspace, do the following:

1.  On the main menu, click **Sales Orders** to open the **Sales Orders** workspace.
2.  On the workspace title bar, click the **Configure Quick Menu** \(![](Images/GS_UI_workspace_configure_quick_menu_button.png)\) button. The workspace opens in configuration mode. You can see the **Sales Orders: Configuration** title of the workspace and the check boxes left of the links to menu items—such as forms, reports, and dashboards—that are available in the workspace.
3.  In the **Reports** category, select the check box left of the link to the [Sales Profitability Analysis](AR_40_90_00.md) report.
4.  On the workspace title bar, click the **Exit** button. The **Sales Orders** workspace opens in view mode again. Each time you open this workspace, in the **Reports** category, you’ll see the link to the [Sales Profitability Analysis](AR_40_90_00.md) report.

    **Tip:** Changes you make to the quick view of a workspace affect your user account only. These changes are maintained across user sessions.


You have added the link to the [Sales Profitability Analysis](AR_40_90_00.md) report to the quick view of the **Sales Orders** workspace. Now you don’t need to switch to the full view to open this report.

## Step 5: Adding a Predefined Workspace to the Main Menu { .section}

Suppose that your job responsibilities as sales manager include registering and tracking customer requests and providing feedback to the customers. For example, you often need to quickly open the [Cases](CR_30_60_00.md) \(CR306000\) form to create, check, or update cases. This form and others related to cases are available in the **Support** workspace, which is a predefined workspace in Acumatica ERP but not one that is initially listed among the menu itemson the main menu.

To add the **Support** workspace to the main menu, do the following:

1.  On the main menu, click the **More Items** menu item. Over the working area, the system displays a menu with tiles for each of the workspaces in the system, grouped by their broader functional areas.
2.  Point at the **Support** tile \(under **Operations**\) and click the Pin \(![](Images/GS_UI_pin_button.png)\) button. The **Support** menu item is added \(that is, pinned\) to the main menu.
3.  On the main menu, click the **Support** menu item. Over the working area, the **Support** workspace opens. The links that are related to support are displayed.

You have added the **Support** menu item to the main menu.

## Step 6: Removing a Workspace from the Main Menu { .section}

Suppose that your job responsibilities don’t include working with construction-specific functionality, and you don’t need to see the **Construction** menu item on your main menu. You can remove the **Construction** menu item from the main menu. It will still be available if you click the **More Items** button, and your changes won’t affect other users' view of the main menu.

To remove the **Construction** workspace from the main menu, do the following:

1.  On the main menu, click the **Construction** menu item. The **Construction** workspace opens over the working area.
2.  On the workspace title bar, click the **Unpin from Main Menu Panel** \(![](Images/GS_UI_unpin_button.png)\) button.
3.  On the workspace title bar of the **Construction** workspace, click the **Close Workspace** \(![](Images/GS_UI_workspace_titlebar_close_button.png)\) button to close the workspace.
4.  Refresh the page in your browser and notice that the **Construction** menu item is no longer displayed on the main menu.

You have removed the **Construction** menu item from the main menu.

## Step 7: Exploring the Universal Search Capabilities in Acumatica ERP { .section}

Suppose that you would like to explore all the forms and files in Acumatica ERP that may contain information about customers, as well as the list of Help topics related to customers.

To search for information related to customers, do the following:

1.  In the Search box, located in the top pane of the Acumatica ERP screen, type `customer`. The Search form opens. On the **Menu Items** tab, scan the menu items that have the *customer* keyword in their names. If you point at any of the items' names, the identifier \(ID\) of the item is also shown. \(For example, if in the **Profiles** category, you point at the **Customers** menu item, you can see the *AR3030PL* ID.\)

    **Tip:** In this context, *menu item* refers to any item for which a link can be included in a workspace: a form, a report, a dashboard, a generic inquiry, or a pivot table.

2.  On the **Transactions and Profiles** tab, scan the list of transactions and customer profiles that contain the *customer* keyword.

    **Attention:** If the **Transactions and Profiles** tab doesn’t contain any search results, make sure that the full-text search index for your Acumatica ERP instance has been built. For details, see [Search Indexes: General Information](SA_Building_Search_Indexes_GeneralInfo.md).

3.  On the **Help Topics** tab, scan the list of the Help topics that contain the *customer* keyword.
4.  On the **Files** tab, scan the list of the files that have the *customer* keyword in their names.
5.  In the upper-right corner, click the Close button to close the Search form.

You have explored the types of information that you can find by using the universal search capabilities in Acumatica ERP and the way you perform this search.

## Step 8: Exploring the Built-In Help System { .section}

Suppose that you’ll be creating sales orders. You open an existing sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form to become familiar with the form layout and the information that is included, and you are wondering how to correctly fill in the **Requested On** box of the form.

To locate the information by using the Help menu and the Help system, do the following:

1.  On the main menu, click the **Sales Orders** menu item. The **Sales Orders** workspace opens.
2.  In the **Transactions** category, click *Sales Orders*. The list of sales orders opens.
3.  In the **Order Nbr.** column, click any link. The [Sales Orders](SO_30_10_00.md) \(SO301000\) form opens with the sales order you selected.
4.  In the top pane of the screen, click the **Open Help** button. The Help menu opens, displaying links to Help topics that are related to sales orders.
5.  In the **Form Reference** section of the Help menu, click *Sales Orders \(SO301000\)* to find details about the **Requested On** box of the form. The [Sales Orders](SO_30_10_00.md) Help topic opens in a new tab of the web browser.
6.  In the table of contents of the topic, click the link for the *Summary Area* section of the topic, which corresponds to the part of the form with the box.
7.  In the section, read the description of the **Requested On** element.
8.  Close the web browser tab with the [Sales Orders](SO_30_10_00.md) Help topic.

You have found out the information about the use of the **Requested On** box of the [Sales Orders](SO_30_10_00.md) form.

## Step 9: Exploring the Built-In Infotips { .section}

Suppose that you are still exploring the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. Now you wondering which statuses the sales order can have and what each status means.

To quickly find the information by using the built-in infotip functionality, do the following:

1.  While you are still viewing the sales order on the [Sales Orders](SO_30_10_00.md) form, point at the **Status** box in the Summary area for about 1.5 seconds. The question mark icon appears right of the box.
2.  Click the question mark icon. The system opens the infotip: a pane in the right part of the screen that contains the list of the sales order's statuses and a complete description of them.
3.  In the pane, read the description of the **Status** element.

You have found the information about a sales order's statuses by using the built-in infotips.

## Activity Recap { .section}

In this activity, we have illustrated the following:

1.  Exploring the main menu and a workspace.
2.  Configuring the quick menu of a workspace.
3.  Adding a workspace to the main menu and removing another one.
4.  Searching for the information related to customers in Acumatica ERP.
5.  Exploring the Help system.
6.  Exploring the built-in infotips.

**Parent topic:**[Learning About the Acumatica ERP UI](../UserGuide/GS_Learning_UI_Mapref.md)

