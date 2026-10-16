# Data Views: Creating and Configuring Pivot Tables

You can create multiple *Pivot Table* views based on the same generic inquiry. Once you’ve created a pivot table, you can modify its configuration.

## Creating Pivot Table Views

To create a new pivot view, you open the desired generic inquiry form and click **Create View** in the view list drop-down menu. The **Create View** dialog box opens, as shown below.


In the dialog box:

1.  In the **Type** box, select *Pivot Table*.
2.  Enter a name for the new view.

    Optionally:

    -   \(If you have the *Administrator* user role\): Select the **Shared** check box to make this view available to other users.
    -   Select the **My Default View** check box if you want the system to open this view by default.
    -   \(If you have the *Administrator* user role and the view is shared\): Select the **Default View for All Users** check box to open this view by default for all users.
    -   In the **Default Filter** drop-down list select a filter to be applied when you open the view.
3.  Click **Create**. The **View Settings** dialog box opens \(described in the next section\).

Once you’ve applied your settings, you’ll see the new pivot view in the view list drop-down menu of the inquiry form, as shown below.


## Configuration of the Pivot Table Layout

Configuring the layout of a pivot table in Acumatica ERP is similar to this process in Microsoft Excel. You use multiple panes of the **View Settings** dialog box to configure a pivot table:

-   The **Fields** pane lists all the fields that have been added to the related inquiry on the **Results Grid** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, regardless of their visibility settings. You move fields between the panes by dragging them.
-   When you click a field in the **Rows**, **Columns**, or **Values** pane \(Item 1 below\), the system displays its properties in the **Properties** pane \(Item 2\).
-   By using the settings in the **Properties** pane, you define how the data of the field is to be presented in the table.


**Parent topic:**[Managing Inquiry Result Data Views](../UserGuide/Pivot_Tables_Mapref.md)

