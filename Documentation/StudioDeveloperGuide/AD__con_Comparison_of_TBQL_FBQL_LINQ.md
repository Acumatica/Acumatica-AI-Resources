# Comparison of Fluent BQL, Traditional BQL, and LINQ {#_b5126e1e-70d9-408d-bcf9-e625a38a052e .concept}

In this topic, you can learn the main differences between the queries defined with fluent business query language \(BQL\), traditional BQL, and language-integrated query \(LINQ\).

|Characteristic|Fluent BQL|Traditional BQL|LINQ|
|--------------|----------|---------------|----|
|The queries can be used to define data views in graphs.|Yes|Yes|No|
|The queries can be defined in code.|Yes|Yes|Yes|
|The queries can be defined in DAC field attributes.|Yes|Yes|No|
|DACs are used to define database tables in the queries.|Yes|Yes|Yes|
|The queries can be used for dynamic query building.|Yes|Yes|Yes|
|The queries can be parsed and modified by the direct use of reflection—that is, by `Type.GetGenericArguments()`.|No|Yes|No|
|Clauses \(such as Join, Where, Aggregate, OrderBy, and On\) can be used separately of the query.|No, but you can pass fluent BQL expressions to traditional BQL clauses|Yes|No|
|The query language includes numbered classes \(such as Select2 and Select6\).|No|Yes|No|
|Each subsequent element of the query is passed as a generic parameter of the previous one.|No|Yes|No|
|To create a query, a developer needs to select a suitable command overload.|No|Yes|No|
|IntelliSense can offer continuations that are relevant for the current query state.|Yes|No|Yes|
|The queries use strongly typed expressions, which makes compile-time type checks possible.|Yes|No|Yes|
|The queries can contain explicit brackets in conditions.|Yes|No; the Where clause can be used instead|Yes|
|You can specify particular columns of the tables to be selected.|Yes; you have to use PXFieldScope|Yes; you have to use PXFieldScope|Yes|
|The query is not executed until it is iterated over.|Yes|Yes|Yes|

**Parent topic:**[Querying Data in Acumatica Framework](../StudioDeveloperGuide/AD__mng_Querying_Data.md)

