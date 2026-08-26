# Data Aggregation: General Information {#_677c7f97-69dc-4349-8302-55823ef54817 .concept}

You can group data on a form by adding an aggregation clause to the query that’s used to retrieve data for the form.

## Learning Objectives { .section}

In this chapter, you will learn how to add an aggregation clause and function to display aggregated data.

## Applicable Scenarios { .section}

You group or aggregate data in the following cases:

-   You need to display the maximum or minimum value for a group of records.
-   You need to display the sum of values for a group of records.
-   You need to display the average value for a group of records.
-   You need to display the number of records in a group.

## Data Aggregation { .section}

To group or aggregate records, you append the `AggregateTo<>` clause to the statement that’s defining a query. You can specify the grouping condition and the aggregation function by using the GroupBy clause and the appropriate aggregation function. To calculate a value for each group, you can use any of the following aggregation functions: Min, Max, Sum, Avg, and Count.

For details on the use of aggregation functions, see [To Select Records by Using Fluent BQL](AD__how_Select_Records_in_Fluent_BQL.md) or [To Group and Aggregate Records in Traditional BQL](AD__how_BQL_Group_and_Aggregate.md). You can find equivalents between aggregation functions in fluent BQL and those in traditional BQL in [Fluent BQL and Traditional BQL Equivalents](AD__con_FluentBQL_and_BQL_Equivalents.md).

**Parent topic:**[Aggregating Data](../StudioDeveloperGuide/CodeCustomization_DataAggregation_Mapref.md)

