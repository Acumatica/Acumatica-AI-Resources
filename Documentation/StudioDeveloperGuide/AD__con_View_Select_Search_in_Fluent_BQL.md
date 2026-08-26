# Search and Select Commands and Data Views in Fluent BQL {#_89612b68-c812-438a-86c4-05b295d450c5 .concept}

You can use fluent business query language \(BQL\) to define data views and specify Select and Search commands.

## Data Views { .section}

You can use any of the following approaches to define a data view:

-   Use the PXViewOf&lt;&gt; class before the fluent BQL query, as shown in the following code example.

    ```
    PXViewOf<Product>.BasedOn<
        SelectFrom<Product>.
            Where<Product.isActive.IsEqual<True>>>.ReadOnly ActiveProducts;
    ```

    The DACs that are specified as type parameters in PXViewOf&lt;&gt; and SelectFrom&lt;&gt; must be the same; this is checked by the compiler. You can omit .BasedOn&lt;&gt; if you want to declare a view that selects all records from one table. You append .ReadOnly to the view definition if you need to define a read-only data view.

-   Append .View to the fluent BQL query, as shown in the following code example.

    ```
    SelectFrom<Product>.
        Where<Product.isActive.IsEqual<True>>.View.ReadOnly ActiveProducts;
    ```

    You append .ReadOnly to the view definition if you need to define a read-only data view.


The data views defined with fluent BQL are equivalent to the corresponding traditional BQL data views. For the full list of equivalents, see [Fluent BQL and Traditional BQL Equivalents](AD__con_FluentBQL_and_BQL_Equivalents.md). Also, the fluent BQL data views have the same static methods as the traditional BQL data views have.

## Select Commands { .section}

The query defined with fluent BQL, as described in [Fluent Business Query Language](AD__con_Fluent_BQL.md), is equivalent to the Select BQL command. For the full list of equivalents, see [Fluent BQL and Traditional BQL Equivalents](AD__con_FluentBQL_and_BQL_Equivalents.md).

## Search Commands { .section}

You can use any of the following approaches to define a Search BQL command:

-   Use the SearchFor&lt;&gt; class before the fluent BQL query, as shown in the following code example.

    ```
    SearchFor<Product.productId>.In<
        SelectFrom<Product>.
            Where<Product.isActive.IsEqual<True>>>
    ```

-   Append .SearchFor&lt;&gt; to the fluent BQL query, as shown in the following code example.

    ```
    SelectFrom<Product>.
        Where<Product.isActive.IsEqual<True>>.SearchFor<Product.productId>
    ```


The Search commands defined with fluent BQL are equivalent to the corresponding traditional BQL commands. For the full list of equivalents, see [Fluent BQL and Traditional BQL Equivalents](AD__con_FluentBQL_and_BQL_Equivalents.md).

## Dynamic Query Building { .section}

Because SearchFor&lt;&gt; and SelectFrom&lt;&gt; are derived from the BqlCommand class, they can be used in dynamic query building through the WhereAnd, AppendJoin, and OrderByNew functions. However, fluent BQL commands \(which are derived from the FbqlCommand class\) are not decomposed by BqlCommand.Decompose\(\) directly. That is, the Decompose function checks whether a command has a FbqlCommand type, retrieves the type of its underlying BqlCommand, and decomposes this underlying BqlCommand command. Therefore, the elements of the array produced by the Decompose function are components of the BqlCommand, and are not components of the passed FbqlCommand.

PXViewOf&lt;TBqlTable&gt; also supports all dynamic query building actions that the traditional BQL PXView supports.

**Parent topic:**[Creating Fluent BQL Queries](../StudioDeveloperGuide/AD__mng_Fluent_BQL.md)

