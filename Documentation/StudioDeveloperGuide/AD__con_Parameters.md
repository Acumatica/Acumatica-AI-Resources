# Parameters in Traditional BQL Statements {#_546dcc53-3648-4c09-a940-afb5692cdfdf .concept}

If you need to specify values in a business query language \(BQL\) statement, you use BQL parameters, which are replaced with the needed values in the translation to SQL. For details, how BQL statements with parameters are translated to SQL, see [Translation of a BQL Command with Parameters to an SQL Query Tree](AD__con_BQL_Translation_to_SQL.md#_ff6436a7-d8a9-43c8-9201-d5ea9afbe2d5).

In this topic, you can find the description of the BQL parameters and the difference between them.

## Current and Current2 { .section}

The Current parameter, as well as the Current2 parameter, inserts the field value of the Current object from the PXCache object in the SQL query. If the Current object from the PXCache object is `null`, the Current parameter retrieves the default value of the field, while the Current2 parameter does not retrieve the default value and inserts `null`.

By using the Current or Current2 parameter in the declaration of a data view, you can refer to another view to relate these data views to each other. A typical example is referencing the current master record on master-detail forms. For details on how the Current and Current2 parameters are used, see [To Relate Data Views to One Another](AD__how_BQL_Parameters.md#_def33638-9099-460b-b2d8-b93f75871625).

## Required { .section}

The Required parameter inserts a specific value into the SQL query.

By using the Required parameters, you can pass values to the SQL query, as described in [To Pass a Field Value to the SQL Query](AD__how_BQL_Parameters.md#_6e19063a-c756-4b7d-88a0-7d0100a187d9) and [To Pass Multiple Field Values to the SQL Query](AD__how_BQL_Parameters.md#_cc3c4e58-b049-4351-b3c6-ebd9e62a350d).

## Optional and Optional2 { .section}

The Optional parameter works similarly to Current \(as well as the Optional2 parameter works similarly to Current2\) if you do not specify an explicit value for this parameter during BQL statement execution. However, you can also pass an explicit value of the parameter to the SQL query.

By using the Optional or Optional2 parameters, you can pass the external presentations of the values to the SQL query, as described in [To Provide External Presentation of the Field Value to the SQL Query](AD__how_BQL_Parameters.md#_4473b629-e9a7-4f41-9041-c0442303d2be).

When a DAC includes more than one key field, you may need to use Optional&lt;&gt; in the primary data view of the graph. In this case, the primary data view typically filters the data records by all of the key fields except the last one. For example, you can select documents with the same document type as the current data record has and navigate through these documents with different document numbers. In the following example, the `Document` DAC has two key fields, `DocType` and `DocNbr`.

```
public PXSelect<Document,
        Where<Document.docType, Equal<**Optional&lt;Document.docType&gt;**>>> Receipts;
```

Optional&lt;&gt; could be replaced with Current&lt;&gt; in the code above unless you need to execute the `Receipts` data view in code to select a document with specific document type and number.

**Note:** If a data view contains the Optional&lt;&gt; and Required&lt;&gt; parameters, you should provide values for all Optional&lt;&gt; parameters that go before the Required&lt;&gt; parameters. For example, if you have the following operands in the query, the number of parameters is:

-   `<Required<A>>.... <Optional<B>>... <Required<C>>`: Always 3 parameters
-   `<Required<A>>.... <Optional<B>>... <Required<C>>.... <Optional<D>>`: At least 3 parameters
-   `<Required<A>>....<Required<B>>.... <Optional<C>>`: At least 2 parameters

## Argument { .section}

The Argument parameter passes values from UI controls to the SQL query.

By using the Argument parameters, you can pass values to the data view delegates. For more information on how to use the Argument parameter, see [To Pass a Value from a UI Control to a Data View](AD__how_BQL_Parameters.md#_1f3bef64-92a7-469f-9fd2-89f0910565fe).

**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

