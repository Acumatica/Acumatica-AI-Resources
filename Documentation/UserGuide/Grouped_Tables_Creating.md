# Data Views: Creating and Configuring Grouped Tables

You can create multiple *Grouped Table* views based on the same generic inquiry. Once you’ve created a grouped table, you can modify its configuration.

## Creation of a Grouped Table

You can create a grouped table view in multiple ways.

For a quicker approach, create a grouped view directly from the inquiry results form by selecting **Group by This Column** from a column's context menu. The system automatically creates a grouping based on the selected column. After you finish making changes, you can save the grouped view for future use.


Alternatively, you can create a grouped table by using the view list drop-down menu. To do this, open the desired generic inquiry form and click **Create View** in the view list drop-down menu. The **Create View** dialog box opens, as shown below.


In the dialog box:

1.  In the **Type** box, select *Grouped Table*.
2.  Enter a name for the new view.

    Optionally:

    -   \(If you have the *Administrator* user role\): Select the **Shared** check box to make this view available to other users.
    -   Select the **My Default View** check box if you want the system to open this view by default.
    -   \(If you have the *Administrator* user role and the view is shared\): Select the **Default View for All Users** check box to open this view by default for all users.
    -   In the **Default Filter** drop-down list select a filter to be applied when you open the view.
3.  Click **Create**. The **View Settings** dialog box opens \(described in the next section\).

Once you’ve applied your settings, you’ll see the new grouped table view in the View List drop-down menu of the inquiry form.

## Configuring a Grouped Table View

After you create a grouped table view, you use the **View Settings** dialog box to configure how the generic inquiry results are organized and displayed.

You can configure multiple levels of grouping to create hierarchical reports that display summary information alongside detailed records.


For each group, you can specify:

-   The fields used to group records
-   The columns displayed for that level
-   The sort order within the group
-   Whether the group is expanded or collapsed by default
-   Whether the group is displayed only when specified conditions are met

In the **Details** section you can configure what data individual inquiry records should display. By default, it contains all available fields of the inquiry.

For each displayed column, you can choose the data source, customize its appearance, and, where applicable, specify an aggregate function or formula to calculate the displayed value. This flexibility lets you create reports that combine grouped data, subtotals, running totals, and calculated values in a single view.

Additionally, you can configure the **Totals** section to display the inquiry's overall summary values.


Depending on your reporting requirements, for the **Totals** section, you can configure aggregate calculations such as:

-   Sum
-   Average
-   Count
-   Distinct Count
-   Minimum
-   Maximum

After you save the configuration, the new grouped table view becomes available from the **Views** menu alongside the standard table and pivot table views.

**Parent topic:**[Managing Inquiry Result Data Views](../UserGuide/Pivot_Tables_Mapref.md)

