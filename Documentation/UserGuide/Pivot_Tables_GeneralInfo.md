# Data Views: General Information

In Acumatica ERP, you can display the results of a generic inquiry by using different data representations. Each representation organizes the same underlying inquiry data for a particular type of review or analysis.

## Learning Objectives

In this chapter, you’ll learn how to do the following:

-   Distinguish between the table, pivot table, and grouped table data representations

-   Select the data representation that is appropriate for a particular data-analysis scenario

-   Create and configure pivot table and grouped table data views for a generic inquiry

-   Manage personal, shared, and default data views


## Applicable Scenarios

You may find the information in this chapter useful when you’re responsible for the customization of Acumatica ERP in your company. This includes developing and modifying generic inquiries and data views to give the users information they need to do their jobs effectively.

## Data Representations and Data Views

A data representation determines how generic inquiry results are organized and presented. Acumatica ERP supports the Table, Pivot Table, and Grouped Table representations.

A data view is a particular configuration of a data representation. For example, you can create multiple Pivot Table views based on the same generic inquiry, with each view summarizing the inquiry results in a different way.

## Types of Data Representations

Acumatica ERP supports the following data representations.

-   **Table:** Displays the records returned by the generic inquiry as rows and columns. This is the standard representation of inquiry results. It is useful when users need to review individual records, search for particular values, apply sorting and filters, or navigate to related records.

-   **Pivot Table:** Summarizes and reorganizes inquiry results for multidimensional analysis. Users can arrange fields into rows, columns, filters, and values and apply aggregate functions to calculate totals, averages, counts, and other summarized values. For example, a pivot table can compare sales amounts by financial period and customer class.

-   **Grouped Table:** Organizes inquiry results into an expandable hierarchy. Records can be arranged into multiple nested groups, with individual records displayed in the Details section. Each group can have its own columns, sorting, subtotals, calculated values, and presentation settings. This representation is useful when users need to review summarized information and the underlying detailed records in the same view.


**Attention:** The Grouped Table representation is available only if the *Grouped Table Views in Generic Inquiries* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Data Source

Every data view is based on one generic inquiry. The view uses the inquiry results as its data source, so you can analyze the same data using different representations without creating a separate inquiry for each view.

The inquiry’s parameters and filters apply when its results are displayed in any representation.

If a data view must include information that is currently provided by multiple generic inquiries, you need to do the following:

1.  Create one generic inquiry that includes all the required data.

2.  Create the data view based on that inquiry.


## Access Rights to Data Views

A user who has access to a generic inquiry form can create personal pivot table and grouped table views for that inquiry.

Only users with the *Administrator* role can create shared views. A shared view is available to all users who have access to the underlying generic inquiry.

## Creating Data Views

Every generic inquiry form has a predefined *Table* view. You cannot create additional *Table* views. However, you can create multiple *Pivot Table* and *Grouped Table* views based on the same generic inquiry. For details, see [Data Views: Creating and Configuring Pivot Tables](Pivot_Tables_Creating.md) and [Data Views: Creating and Configuring Grouped Tables](Grouped_Tables_Creating.md).

## Switching Between Data Views

You can switch between the data views available on a generic inquiry form.

By default, the form displays the predefined *Table* view unless another view has been specified as the default. The available views are listed in the View List menu. When you select a view, the menu caption changes to the name of that view, as shown below.


Icons in the View List menu indicate the state of each view:

-   A star identifies a favorite view. Favorite views appear at the top of the menu.

-   A check mark identifies a default view. The system selects this view when the inquiry form is opened.

-   The shared icon identifies a view that is available to other users.


## Managing Existing Views

You can configure the predefined *Table* view, sort and group its records, and apply filters, as described in the [Modifying Inquiry Results](GI_Modifying_Inquiry_Results_Mapref.md), [Applying Sorting and Grouping](GI_Sorting_and_Grouping_Mapref.md), and [Managing Advanced Filters](GI_Reusable_Filters_Mapref.md) sections.

To manage an existing *Pivot Table* or *Grouped Table* view, open the View List menu and point to the view name. The system displays the buttons for managing the view.


You can use the buttons as follows:

-   **Favorites** Adds the view to your favorite views or removes it from the list.

-   **Settings:** Opens the View Settings dialog box, where you can change the representation-specific configuration.

-   **Edit:** Opens the Edit View dialog box, where you can rename the view, select its default filter, make it the default view, and \(if you have the required access rights\) share it with other users.

-   **Delete:** Deletes the view and its configuration.


Changes to the shared view are visible to all users of that view. User-specific preferences, such as supported column display settings, apply only to the user who changes them.

## Filtering Data in Views

You can use the filters defined for the generic inquiry with any of its data views. You can create personal filters or apply shared filters available for the inquiry.

When you create or edit a custom data view, you can select the filter that the system applies by default by using the **Default Filter** box in the Create View or Edit View dialog box.

**Parent topic:**[Managing Inquiry Result Data Views](../UserGuide/Pivot_Tables_Mapref.md)

