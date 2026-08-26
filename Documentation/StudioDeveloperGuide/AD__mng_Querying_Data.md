# Querying Data in Acumatica Framework {#_5978bf0a-e65c-47ca-8fec-40aa733ae2b8 .concept}

In Acumatica Framework, you generally use business query language \(BQL\) to query data from the database. BQL statements represent specific SQL queries and are translated into SQL by Acumatica Framework, which helps you to avoid the specifics of the database provider and validate the queries at the time of compilation. Acumatica Framework provides two dialects of BQL: traditional BQL and fluent BQL.

To query data from the database, you can also use language-integrated query \(LINQ\), which is a part of the .NET Framework. In the code of Acumatica Framework-based applications, you can use both the standard query operators \(provided by LINQ libraries\) and the Acumatica Framework-specific operators that are designed to query database data.

This chapter explains the aspects that are common to traditional BQL, fluent BQL, and LINQ and provides a high-level comparison of the approaches for querying data in Acumatica Framework.

-   **[BQL and LINQ](../StudioDeveloperGuide/AD__con_BQL_and_LINQ.md)**  

-   **[Data Access Classes](../StudioDeveloperGuide/AD__con_BQL_DAC.md)**  

-   **[PXView and PXCache of the Data View](../StudioDeveloperGuide/AD__con_PXView_and_PXCache.md)**  

-   **[PXView Type and Views Collection](../StudioDeveloperGuide/BL__con_Views.md)**  

-   **[Query Cache](../StudioDeveloperGuide/BL__con_Query_Cache.md)**  

-   **[Data Query Execution](../StudioDeveloperGuide/AD__con_Query_Execution.md)**  

-   **[Translation of a BQL Command to SQL](../StudioDeveloperGuide/AD__con_BQL_Translation_to_SQL.md)**  

-   **[Merge of the Records with PXCache](../StudioDeveloperGuide/AD__con_Merge_of_Records_with_PXCache.md)**  

-   **[Comparison of Fluent BQL, Traditional BQL, and LINQ](../StudioDeveloperGuide/AD__con_Comparison_of_TBQL_FBQL_LINQ.md)**  

-   **[Fluent BQL and Traditional BQL Equivalents](../StudioDeveloperGuide/AD__con_FluentBQL_and_BQL_Equivalents.md)**  

-   **[To Execute BQL Statements](../StudioDeveloperGuide/AD__how_Execute_BQL_Statement.md)**  

-   **[To Process the Result of the Execution of the BQL Statement](../StudioDeveloperGuide/AD__how_Process_Resultset.md)**  


**Parent topic:**[Accessing Data](../StudioDeveloperGuide/AD__mng.md)

