# Data Views: To Create and Configure a Grouped Table View

In this activity, you will learn how to create a grouped table data view and make it the default view for all users.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story

Suppose that you are a technical specialist in your company who works on simple customizations, including the creation and modification of generic inquiry forms and data views. A financial manager of your company has asked you to organize the results of the *Bills and Adjustments* inquiry as follows:

-   The records should be grouped first by vendor and then by post period.
-   For each post period, the total amount and the average total amount should be displayed.

The resulting data view should also be the default view for all users who open the *Bills and Adjustments* generic inquiry form.

## Process Overview

In the activity, on the *Bills and Adjustments* generic inquiry form, you will create the requested grouped table and save it as the default shared data view of this inquiry form.

## System Preparation

Launch the Acumatica ERP website, and sign in to a tenant with the *U100* dataset preloaded as system administrator Kimberly Gibbs. You should sign in by using the *gibbs* username and the *123* password.

**Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to manage the system configuration and to modify generic inquiries, advanced filters, pivot tables, and dashboards.

## Step 1: Creating the Grouped Table

To create the grouped table as a data view, do the following:

1.  Open the *Bills and Adjustments* generic inquiry form.
2.  Open the View List drop-down menu and click **Create View**.
3.  In the **Create View** dialog box, which opens, do the following:

    1.  In the **Type** box, select *Grouped Table*.
    2.  In the **Name** box, type `Grouped by vendor and post period`.
    3.  Select the **Shared** check box.
    4.  Select the **Default View for All Users** check box.
    5.  Click **Create** to add the shared data view.
    The system creates the shared data view and opens the **View Settings** dialog box, where you can configure the grouped table.


## Step 2: Configuring the Grouped Table

In the **View Settings** dialog box, do the following:

1.  To configure the first grouping level by vendor, do the following:

    1.  In the **Groups** pane, click **Add Row**.
    2.  In the **Group Name** box, type `By vendor`.
    3.  In the **Grouping** tab, click **Add Row**.
    4.  In the **Data Source** column for a new row, select *Vendor*.
    5.  Switch to the **Columns** tab and click **Add Row**.
    6.  In the **Data Source** column for a new row, select *Vendor Name*.
    This configuration groups the records by the *Vendor* field and displays the vendor name at this grouping level.

2.  To configure the second grouping level by post period, do the following:

    1.  In the **Groups** pane, click **Add Row**.
    2.  In the **Group Name** box, type `By post period`.
    3.  In the **Grouping** tab, click **Add Row**.
    4.  In the **Data Source** column for a new row, select *Post Period*.
    5.  Switch to the **Columns** tab and click **Add Row**.
    6.  In the **Data Source** column for a new row, select *Post Period*.
    This configuration groups the records by the *Post Period* field and displays the post period at this grouping level.

3.  With the *By post period* group selected in the **Groups** pane, add the aggregated values as follows:

    1.  In the **Columns** tab and click **Add Row**.
    2.  In the **Data Source** column for a new row, select *Total Amount*.
    3.  In the **Caption** column, type `Total Amount by Period`.
    4.  Click **Add Row** to add one more data field.
    5.  In the **Data Source** column for a new row, also select *Total Amount*.
    6.  In the **Caption** column, type `Avg Total Amount by Period`.
    7.  In the **Aggregate** column, select *Avg*.
    The *By post period* group now displays the total amount and average total amount for the records included in each post period.

4.  To specify the grouping order, use the **Move Row Up** and **Move Row Down** buttons in the **Groups** pane to position the *By vendor* group above the *By post period* group, as shown in the following screenshot.


    With this order, the inquiry results are grouped first by vendor and then, within each vendor, by post period.

5.  Click **Save** to save the grouped table configuration and close the dialog box.


The system applies the newly created data view to the *Bills and Adjustments* generic inquiry form. Because the view is shared and has been specified as the default view for all users, the system displays this data view by default when users open the inquiry.

**Parent topic:**[Managing Inquiry Result Data Views](../UserGuide/Pivot_Tables_Mapref.md)

