# Customization Update to 2026 R1: Multiple Implementations of a Generic Graph Extension in One Graph {#_6968e7a8-c21b-4fc0-ac98-9a3127a5ae59 .concept}

In Acumatica ERP, you can reuse business logic by using generic graph extensions. Acumatica ERP 2026 R1 lets you go a step further: Now you can implement the same generic graph extension in a graph multiple times.

Suppose that in the custom `RSSVOrderEntry` graph, you need multiple implementations of the SalesPriceGraph generic graph extension, each with a different mapping of the Detail mapped cache extension. In one implementation class, you need to map Detail to the `RSSVOrderActual` data access class \(DAC\). In another implementation class, you map it to the `RSSVOrderDetail` DAC. The sections below show how you can do this.

## Changes to the Generic Graph Extensions { .section}

A definition of reusable business logic with generic graph extensions typically includes the following parts:

-   The generic graph extension itself, which is a PXGraphExtension class
-   One or more mapped cache extensions, which are PXMappedExtension classes
-   One or more mapping classes, which are `IBqlMapping` implementations

To support multiple implementations of generic graph extensions in one graph, Acumatica ERP 2026 R1 introduces the following changes:

-   Generic graph extensions now can include multiple base DACs as their type parameters.
-   Mapped cache extensions and mapping classes are nested within the generic graph extension.

The following code shows an example of a generic graph extension. Notice that the code includes simplified versions of the generic graph extension, which have fewer type parameters.

```language-csharp
// A generic graph extension
public abstract partial class SalesPriceGraph<
    TGraph, TDocument, TDetailOpt, TPriceClassSourceOpt> : 
    PXGraphExtension<TGraph>
        where TGraph : PXGraph
        where TDocument : class, IBqlTable, new()
        where TDetailOpt : class, IBqlTable
        where TPriceClassSourceOpt : class, IBqlTable
{
    // Mapped cache extensions
    public class Document : PXMappedCacheExtension
    public class Detail : PXMappedCacheExtension
    public class PriceClassSource : PXMappedCacheExtension

    // Mapping classes
    protected class DocumentMapping : IBqlMapping
    protected class DetailMapping : IBqlMapping
    protected class PriceClassSourceMapping : IBqlMapping
}

// Simplified versions of the generic graph extension
public abstract class SalesPriceGraph<TGraph, TPrimary> : 
    SalesPriceGraph<TGraph, TPrimary, IBqlTable, IBqlTable>
    where TGraph : PXGraph
    where TPrimary : class, IBqlTable, new()
{ }

public abstract class SalesPriceGraph<TGraph, TDocument, TDetail> : 
    SalesPriceGraph<TGraph, TDocument, TDetail, IBqlTable>
    where TGraph : PXGraph
    where TDocument : class, IBqlTable, new()
    where TDetail : class, IBqlTable, new()
{ }
```

## Multiple Implementations in One Graph { .section}

To connect the generic graph extension to a base graph, in the base graph, you define an implementation class that inherits the generic graph extension. Starting in Version 2026 R1, you can define multiple implementation classes in one graph as follows \(shown in the code below\):

-   In the `SalesPrice` implementation class, you map the Detail mapped cache extension to the `RSSVOrderActual` DAC.
-   In the `SalesPriceActual` implementation class, you map the Detail mapped cache extension to the `RSSVOrderDetail` DAC.

```language-csharp
public abstract class SalesPriceWithoutDetail<TDetail> : 
    SalesPriceGraph<RSSVOrderEntry, RSSVOrder, TDetail>
    where TDetail : class, IBqlTable, new()
{
    #region Initialization

    protected override DocumentMapping GetDocumentMapping()
    {
        return new DocumentMapping(typeof(RSSVOrder))
        {
            BAccountID = typeof(RSSVOrder.customerID),
            DocumentDate = typeof(RSSVOrder.docDate),
        };
    }

    protected override PriceClassSourceMapping GetPriceClassSourceMapping()
    {
        return new PriceClassSourceMapping(typeof(Location))
        {
            PriceClassID = typeof(Location.cPriceClassID)
        };
    }
    #endregion

    protected override void RecalculateMarkup(PXCache sender, Detail row) { }
}

public class SalesPrice : SalesPriceWithoutDetail<RSSVOrderDetail>
{
    public static bool IsActive() => true;

    protected override DetailMapping GetDetailMapping()
    {
        return new DetailMapping(typeof(RSSVOrderDetail))
        {
            LocationID = typeof(RSSVOrderDetail.customerLocationID),
            CuryLineAmount = typeof(RSSVOrderDetail.curyExtPrice),
            Descr = typeof(RSSVOrderDetail.tranDesc),
            Quantity = typeof(RSSVOrderDetail.estimatedQty)
        };
    }
}

public class SalesPriceActual : SalesPriceWithoutDetail<RSSVOrderActual>
{
    public static bool IsActive() => true;

    protected override DetailMapping GetDetailMapping()
    {
        return new DetailMapping(typeof(RSSVOrderActual))
        {
            LocationID = typeof(RSSVOrderActual.customerLocationID),
            CuryLineAmount = typeof(RSSVOrderActual.curyExtPrice),
            Descr = typeof(RSSVOrderActual.description),
            Quantity = typeof(RSSVOrderActual.actualQty),
            CuryUnitCost = typeof(RSSVOrderActual.curyStdCost),
            CuryUnitPrice = typeof(RSSVOrderActual.curyUnitPrice),
        };
    }
}

```

**Parent topic:**[Updating Customization Projects to Acumatica ERP 2026 R1](../DeveloperGuide/CodeCustomization_CustomizationUpdate_Mapref.md)

