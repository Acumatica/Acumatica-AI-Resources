# Fallback to the LINQ to Objects Mode {#_f0785138-5659-413b-9908-814a4891f85b .concept}

With LINQ, you may not be able to filter records by using custom C\# functions. For example, suppose that your C\# function filters records by a regular expression, which cannot be converted to standard SQL functions. If the system cannot convert a custom C\# function in a LINQ statement to an SQL query tree, the system falls back to LINQ to Objects mode—that is, the system executes the data query in memory, which can lead to degradation of the application's performance.

The following code shows an example of a situation when the system falls back to LINQ to Objects mode. In this example, the system selects from the database all records from the `CRCase` table, and then, in memory, orders the retrieved records by the `Date` column and selects the records that satisfy the condition specified by using the `MyHelpers.IsHighPriority` function.

```
// MyHelpers.IsHighPriority is a custom function.
var results = graph
    .Select<CRCase>()
    .OrderByDescending(c => c.Date)
    .Where(c => MyHelpers.IsHighPriority(c));

foreach (CRCase case in results)
{
    ...
}
```

**Note:** If the system falls back to LINQ to Objects, only the results of the base PXSelectBase query are merged with PXCache as described in [Merge of the Records with PXCache](AD__con_Merge_of_Records_with_PXCache.md). The Merge and ReadOnly methods do not affect the merge of records with PXCache for the queries that caused fallback.

The LINQ fallback is supported in Acumatica Framework for compatibility with previous versions. The system writes to the trace log about all situations in which the system falls back to LINQ to Objects mode. Therefore, we strongly recommend that you investigate the trace log for such issues and fix the issues in one of the following ways:

-   Remove the custom C\# functions that cause fallback so that the full query is executed in the database.
-   Append the AsEnumerable\(\) method to the part of the query that can be converted to SQL, and add after it the conditions that include custom C\# functions. In this case, the system does not waste resources trying to build the SQL query tree for the whole query. Instead, the system builds the SQL query tree for the part of the query that has AsEnumerable\(\) appended and performs the corresponding request to the database, while the custom C\# conditions of the query are processed in memory. For example, the code example above can be modified as follows.

    ```
    // MyHelpers.IsHighPriority is a custom function.
    var results = graph
        .Select<CRCase>()
        .OrderByDescending(c => c.Date).AsEnumerable()
        .Where(c => MyHelpers.IsHighPriority(c));
    
    foreach (CRCase case in results)
    {
        ...
    }
    ```

    **Note:** The system executes the following SQL query for the code above, where `[list of columns]` is the list of columns of the `CRCase` table.

    ```
    SELECT [list of columns] FROM CRCase
        ORDER BY CRCase.Date DESC
    ```


**Parent topic:**[Creating LINQ Queries](../StudioDeveloperGuide/AD__mng_LINQ.md)

