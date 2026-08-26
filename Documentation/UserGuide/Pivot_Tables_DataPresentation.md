# Pivot Tables: Data Presentation {#_4660247f-1a50-462c-9c94-fd39c7a52276 .concept}

Because pivot tables can contain a lot of data, users who analyze their data need the data to be presented in a meaningful way. On the [Pivot Tables](SM_20_80_10.md) \(SM208010\) form or in the **Settings** dialog box when creating or modifying a pivot table, you can flexibly configure the format of the fields to be displayed in a pivot table.

## Format of Field Values in Pivot Tables {#_b7f4f8c6-a1ee-4e44-9f50-6a7f1fd03726 .section}

If you want to change the format of the fields to be displayed in a pivot table, you can specify the required format in the **Format** box of the **Properties** pane on the [Pivot Tables](SM_20_80_10.md) \(SM208010\) form. \(This pane contains the display properties for any field that is selected in the **Filters**, **Columns**, **Rows**, or **Values** pane.\) In this box, you can type one of the standard formats defined for the [format function in .Net](https://docs.microsoft.com/en-us/dotnet/standard/base-types/formatting-types). In the following table, you can find examples of format definitions for numbers and the corresponding output.

|Format Definition|Output Example|
|-----------------|--------------|
|`0`|8972|
|`0.0`|8972.2|
|`0.00`|8972.23|
|`#,##0.00`|8,972.23|
|`$#,##0.00`|$8,972.23|

## Number or Percentage of the Total { .section}

On the [Pivot Tables](SM_20_80_10.md) \(SM208010\) form, you can specify how the system should display numeric values by using the options in the **Show Value As** drop-down box of the **Properties** pane. The following options are available:

-   *Number*
-   *% of Grand Total*
-   *% of Column Total*
-   *% of Row Total*
-   *% of Total by Column Group*
-   *% of Total by Row Group*

The **Values** pane of this form contains a list of fields from the selected generic inquiry whose values are displayed in cells of the pivot table. You can add the same field to this pane multiple times and specify different display options for each entry.

For example, suppose that you want to analyze activities that your employees have with customers—that is, review the number of phone calls, sent emails, and completed work items for each customer. Also, you would like to know this activity type's percentage of the grand total of all activities that employees have with customers. For each activity type shown in a column, you add two values: a value that is the count of the activities of the type, displayed as a number; and the same value displayed as a percentage of the grand total of all activities for all customers.

## Format Options for Date Fields { .section}

For date fields, on the **Properties** pane of the [Pivot Tables](SM_20_80_10.md) \(SM208010\) form, you can use extended format settings to do the following:

-   *Round data with the specified accuracy*: You can select the accuracy of calculating data gathered by date. For example, suppose that for each sales manager, you want to analyze sales amounts aggregated by quarter years. Suppose that sales amounts are collected daily, which means that the date field in the generic inquiry with the required data contains the day, the month, and the year \(such as *04/11/2025*\). To aggregate the sales amounts by quarter in the pivot table, in the **Round To** box of the [Pivot Tables](SM_20_80_10.md) form, you select *Quarters*, and the date will contain only the year and the quarter \(such as *2025 Q4*\) in the pivot table.
-   *Aggregate data by a particular date part*: You can select the part of a date field by which you want to aggregate data in a pivot table. For example, suppose that you want to analyze the seasonal demand of T-shirts for the past five years. To do this, you can build a pivot table that displays sales amounts aggregated by month. Suppose that the date field in the generic inquiry with sales amounts for T-shirts contains the month and the year \(such as *July 2025*\). To make the system aggregate data by month and display only months in the pivot table, in the **Date Part** box, you select *Month*.
-   *Display hierarchical column or row headers*: If you want to configure the dates in columns or rows for a pivot table to meet your needs, you can set up a hierarchical structure of the parts of the dates. For example, suppose that you want to analyze the number of shipped laptops by month for the past three years. Suppose that the date in the generic inquiry contains the day, the month, and the year \(such as *04/11/2025*\). In the pivot table, you can display a one-level column that will contain the following date values: *Jan 2025*, *Feb 2025*, and so on through *Dec 2025*. Alternatively, you can configure the system so that it displays two levels of column headers: In the first level, the system displays the years, and under each year, the system displays the months. To configure the system in this way, you add two copies of the date field to the **Columns** pane of the [Pivot Tables](SM_20_80_10.md) form. For the first copy, in the **Round To** box, you select *Years*; for the second copy, in the **Date Part** box, you select *Month*.

**Tip:** The value in the **Format** field on the **Properties** pane is case sensitive. Use lowercase letters for the day and year and uppercase letters for the month: *dd/MM/yyyy*.

## Format Options for Fields with Segmented Keys { .section}

For fields for which segmented keys have been configured to have multiple segments, on the **Properties** pane of the [Pivot Tables](SM_20_80_10.md) \(SM208010\) form, you can use format settings to do the following:

-   *Aggregate data by segments*: You can select the segment by which the system will aggregate data in a pivot table. For example, suppose that your company sells fruit and vegetables to restaurants. Suppose that the item class values consist of the following segments: the item category \(*FR* or *VEG*\), the item type \(*APL*, *ORG*, *CBR*, or *PTO*\), and the country of origin \(such as *ES*, *CN*, or *MA*\). If you want to use a pivot table to analyze the numbers of items of each type shipped to each customer, in the **Segment** box, for the *Class ID* field, you select the segment that corresponds to the item type. With these settings, the system will aggregate sales data by the item type \(such as apples, designated by *APL*\).
-   *Display hierarchical column or row headers*: If you want to analyze data by using a combination of two segments of a field value, you can set up a hierarchical structure of the segments. Suppose that in the example described in the previous list item, you also want to add to the pivot table the country of origin for each item type. To do this, you add to the **Columns** pane two copies of the *Class ID* field. For the first copy, in the **Segment** box, you select the segment used for the item category; for the second copy, in the **Segment** box, you select the segment used for the country of origin.

**Parent topic:**[Managing Pivot Tables](../UserGuide/Pivot_Tables_Mapref.md)

