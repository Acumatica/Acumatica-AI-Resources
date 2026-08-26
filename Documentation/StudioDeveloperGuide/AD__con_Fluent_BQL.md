# Fluent Business Query Language {#_ddc12506-3658-4f0a-b735-93bb0e035fd2 .concept}

Fluent business query language \(BQL\), which is described in this topic, is a dialect of BQL that is more similar to SQL than traditional BQL is. You can find all classes that can be used in fluent BQL in the PX.Data.BQL and PX.Data.BQL.Fluent namespaces.

## Fluent BQL Structure { .section}

Fluent BQL uses nesting of generic classes. That is, each section of a fluent BQL query does not depend on the other sections and can appear in only specific places of the query. The order of the sections is shown in the following code.

```
SelectFrom<>.[Joins].Where<>.AggregateTo<>.OrderBy<>
```

SelectFrom&lt;&gt; is the only mandatory part of the query. You can add to the query any number of Join sections and the Where&lt;&gt;, AggregateTo&lt;&gt;, and OrderBy&lt;&gt; sections of the query, depending on whether you need the corresponding clauses of the query.

The query defined with fluent BQL as described above is equivalent to the Select command in traditional BQL. To compose a query for different purposes \(such as to define a data view or to define a Search command in an attribute constructor\), you need to prepend additional elements to the query or append them to the query, as described in [Search and Select Commands and Data Views in Fluent BQL](AD__con_View_Select_Search_in_Fluent_BQL.md). You can find the equivalents of traditional BQL in fluent BQL in [Fluent BQL and Traditional BQL Equivalents](AD__con_FluentBQL_and_BQL_Equivalents.md).

## SelectFrom&lt;&gt; Section { .section}

In the SelectFrom&lt;&gt; section of the query, you use the SelectFrom&lt;&gt; class, which uses a data access class \(DAC\) as the type parameter. For details on DACs, see [Data Access Classes in Fluent BQL](AD__con_DACs_in_FBQL.md).

## Join Sections { .section}

Each Join section of the fluent BQL query consists of the following components:

-   The join type \(InnerJoin&lt;&gt;, LeftJoin&lt;&gt;, RightJoin&lt;&gt;, FullJoin&lt;&gt;, CrossJoin&lt;&gt;\) with the joined DAC as the type parameter.
-   The joining condition \(On&lt;&gt;\). This condition is not specified for CrossJoin&lt;&gt;.
-   The single table modifier \(SingleTableOnly\). This optional part of each Join section forces optimization if a DAC used in the query has the [PXProjection](https://help.acumatica.com/(W(3))/Main?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01) attribute.

The following code fragments show the Join sections with different types of joins.

```
.InnerJoin<TBqlTable>.On<TJoinCondition>.SingleTableOnly

.LeftJoin<TBqlTable>.On<TJoinCondition>.SingleTableOnly

.RightJoin<TBqlTable>.On<TJoinCondition>.SingleTableOnly

.FullJoin<TBqlTable>.On<TJoinCondition>.SingleTableOnly

.CrossJoin<TBqlTable>.SingleTableOnly
```

Fluent BQL queries can contain any number of Join sections.

## Where&lt;&gt; Section and On&lt;&gt; Subsection { .section}

Conditions in the query are defined in the Where&lt;&gt; section and the On&lt;&gt; subsections of the Join sections. The conditions can contain the following nested components:

-   Comparisons, such as `Table.field.IsEqual<TOperand>`
-   And&lt;&gt; subsections
-   Or&lt;&gt; subsections
-   Brackets&lt;&gt; subsections

The following code fragments show examples of an On&lt;&gt; subsection and a Where&lt;&gt; section.

```
.On<PMTask.projectID.IsEqual<PMProject.contractID>.
  And<
    PMTask.approverID.IsEqual<EPActivityFilter.approverID.FromCurrent>>>

.Where<PMProject.isActive.IsEqual<True>.
  And<PMTask.taskID.IsNotNull.
    Or<PMProject.approverID.IsEqual<
      EPActivityFilter.approverID.FromCurrent>>>>
```

## AggregateTo&lt;&gt; and OrderBy&lt;&gt; Sections { .section}

The AggregateTo&lt;&gt; and OrderBy&lt;&gt; sections of a fluent BQL query accept non-empty arrays of the specific base type as the only generic parameters. To make it easier for developers to write and read of the queries, fluent BQL includes groups of aliases that embed certain array usage. These aliases are pregenerated for arrays with up to 32 elements.

The AggregateTo&lt;&gt; section can also include an optional Having&lt;&gt; subsection. In this subsection, you include conditions that can contain only logical operators, constants, parameters, and aggregated fields \(that is, the fields with .Averaged, .Summarized, .Maximized, .Minimized, or .Grouped appended\).

The following code fragments show examples of AggregateTo&lt;&gt; and OrderBy&lt;&gt; sections.

```
.AggregateTo<Sum<field1>, GroupBy<field2>, Max<field3>, 
  Min<field4>, Avg<field5>, Count<field6>>.
    Having<field5.Averaged.IsGreater<Zero>>

.OrderBy<field1.Asc, field2.Desc, field3.Asc>
```

**Parent topic:**[Creating Fluent BQL Queries](../StudioDeveloperGuide/AD__mng_Fluent_BQL.md)

