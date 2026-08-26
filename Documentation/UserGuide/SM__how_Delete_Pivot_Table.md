# Pivot Tables: To Delete a Pivot Table {#_10a63808-3994-4bb6-b1dc-256e5c05ce45 .task}

In this activity, you will learn how to delete a pivot table.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you’re a technical specialist in your company who’s working on simple customizations, including the creation and modification of generic inquiry forms and pivot tables. An accountant of your company has asked you to delete the *Items by Item Class* pivot table, which you created while performing [Pivot Tables: To Create a Pivot Table](Pivot_Tables_Activity_CreatingAsTab.md).

## Configuration Overview {#section_pgv_tmv_3rb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The *Inventory and Order Management* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form to provide support for the stock item functionality.
-   On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, multiple item classes have been defined.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, multiple stock items have been defined.
-   The Stock Items \(IN2025PL\) generic inquiry form has been set up as a substitute form that is opened when you click the *Stock Items* link in a workspace or a list of search results. This form displays the list of the stock items that have been created on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

## Process Overview { .section}

In this activity, on the Stock Items \(IN2025PL\) inquiry form, you will delete the *Items by Item Class* pivot table.

## System Preparation { .section}

1.  Launch the Acumatica ERP website, and sign in to a tenant with the *U100* dataset preloaded as system administrator Kimberly Gibbs. You should sign in by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to manage the system configuration and to modify generic inquiries, advanced filters, pivot tables, and dashboards.

2.  Complete the [Pivot Tables: To Create a Pivot Table](Pivot_Tables_Activity_CreatingAsTab.md) activity.

## Step: Deleting the Pivot Table { .section}

To delete the pivot table, do the following:

1.  Open the Stock Items \(IN2025PL\) inquiry form.
2.  Open the View List drop-down menu and hover over the *Items by Item Class* pivot view—the pivot table that should be deleted.
3.  Click **Delete**.
4.  In the dialog box that opens, confirm your action by clicking **OK**.

    The system deletes the pivot table.

    **Attention:** This action doesn’t delete the generic inquiry on which the pivot table is based.


**Parent topic:**[Managing Pivot Tables](../UserGuide/Pivot_Tables_Mapref.md)

