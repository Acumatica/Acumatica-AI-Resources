# To Configure a Filter on a Report Form {#_72b4cd73-143b-4810-aea6-5da6b26989e1 .task}

When you generate a report, you can configure an ad hoc filter for the report data, as described in this topic. For details on filter clauses, see [Managing Advanced Filters](../Shared/../UserGuide/GI_Reusable_Filters_Mapref.md).

## To Configure an Ad Hoc Filter on a Report Form { .section}

1.  Open the report form, and then click the **Additional Sort and Filter** tab.
2.  In the **Additional Filtering Conditions** table, click **Add Row** to create a filter clause. \(An ad hoc filter may consist of one filter clause, represented by one row, or multiple filter clauses, represented by multiple rows.\)
3.  In the **Property** column, select the entity type associated with the report from the list.
4.  In the **Condition** column, select the logical operation that will be applied to the value of the selected property.
5.  In the **Value** column, type the value for the logical condition used to filter the data.
6.  If the logical operation you selected in the **Condition** column requires the second value, type it in the **Second Value** column.
7.  Repeat Steps 2-6 for each filter clause in this ad hoc filter.
8.  If you want to join any of the filter clauses, do the following:
    -   In the leftmost **Brackets** column of the first clause that should be joined, select the opening bracket or brackets. \(The number of opening brackets in the first clause depends on the number of nested clauses.\)
    -   In the **Operator** column of the same clause, select the logical operator that will be used to join the clauses.
    -   In the rightmost **Brackets** column of the last clause that should be joint, select the closing bracket or brackets. \(The number of closing brackets in the first clause depends on the number of nested clauses and should be equal to the number of opening brackets in the first clause that is joint.\)
9.  To apply the filter, be sure the other settings on the report form have the values you need, and click **Run Report**.

**Parent topic:**[Reports](../InterfaceGuide/Report_Processing_Options.md)

