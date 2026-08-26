# To Sort Multiple Generic Graph Extensions {#_28785249-a875-492f-bca9-82da9cd5c0b4 .task}

To add multiple generic graph extensions to a graph, you need to define the order in which the extensions are applied.

To define this order, add a class that inherits from the PX.Data.SortExtensionsBy class and implement the sorting of the generic class extensions, as the following code shows.

```language-csharp
public class ExtensionSort
	: SortExtensionsBy<ExtensionOrderFor<QuoteMaint>
		.FilledWith<
			MultiCurrency,
			SalesPrice,
			Discount,
			SalesTax
		>>
{ }
```

**Parent topic:**[Reusing Business Logic with Generic Graph Extensions](../StudioDeveloperGuide/CodeCustomization_GenericExtension_Mapref.md)

