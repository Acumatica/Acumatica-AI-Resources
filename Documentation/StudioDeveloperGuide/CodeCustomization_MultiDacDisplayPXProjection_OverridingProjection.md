# Use of PXProjection: Overriding a Projection of an Existing DAC {#_0e1a22b8-f586-4d87-92c7-438f04e286c9 .concept}

You override the [PXProjection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01) attribute of an existing DAC when you need a DAC to behave as if it were declared with a different projection query—without modifying the original projection query of the DAC.

At runtime, each graph maintains a `PXCache` instance for the DAC. The cache uses an interceptor to determine which BQL command is executed. If you need different projection behavior in a specific graph, you override this interceptor.

You implement the override at the graph level by:

-   Replacing the interceptor instance stored in the PXCache. For projection DACs, this instance is a PXProjectionAttribute object responsible for supplying the effective BQL command.
-   Adjusting the necessary field mappings through CacheAttached handlers.

## Implementing the Override of a Projection { .section}

To override the PXProjectionAttribute attribute of an existing DAC, you perform the following general steps:

1.  Find all the graphs that are currently using the projection.
2.  Declare a graph extension for each graph.

    **Tip:** If you plan to use the same overriding logic for all the graphs that are currently using the projection, we recommend that you declare a generic graph extension instead of declaring a graph extension separately for each graph. This helps you avoid code duplication. For details, see the *Declaring a Generic Graph Extension* section.

3.  Place the overriding logic inside the Initialize method of each graph extension. This logic must:
    -   Preserve existing Interceptor.Child object, to avoid breaking any nested behavior.
    -   Replace the `Interceptor` object with a new PXProjectionAttribute that defines the new projection query.
    -   Update BqlSelect to use the new interceptor.
4.  Declare the cacheAttached event handler to adjust the mapping of the fields of the projection DAC.

The following section shows you how you can implement the override of a projection for an existing DAC by using the steps described above.

## Overriding the Projection of the MyProjection DAC { .section}

Suppose that you have the following DAC called `MyProjection` with a PXProjectionAttribute attribute declared on it.

```language-csharp
[PXProjection(typeof(Select<...Old Projection Query...>))]
public class MyProjection: PXBqlTable
{
      #region DocID
      public abstract class docID: PX.Data.BQL.BqlInt.Field<docID> { }

      [PXDBInt(IsKey = true, BqlField = typeof(SomeDAC.docID))]
      public virtual int? DocID { get; set; }
      #endregion
      ...
}
```

Further suppose that you want to override the projection query in the `MyProjection` DAC and change the mapping of its single `DocID` field. After you successfully implement the override, the `MyProjection` DAC should essentially behave as if it was originally declared, as shown below.

```language-csharp
[PXProjection(typeof(Select<...New Projection Query...>))]
public class MyProjection: PXBqlTable
{
  #region DocID
  public abstract class docID: PX.Data.BQL.BqlInt.Field<docID> { }

  [PXDBInt(IsKey = true, BqlField = typeof(AnotherDAC.uniqueID))]
  public virtual int? DocID { get; set; }
  #endregion
  ...
}
```

Notice that the `DocID` field's mapping has been changed from `SomeDAC.docID` field to `AnotherDAC.uniqueID` field.

To implement the required changes, you must first find all the graphs that are using the `MyProjection` DAC. Suppose that the `MyProjection` DAC is used only in one graph named `MyGraph`, as shown below.

```language-csharp
public class MyGraph : PXGraph<MyGraph>
{
   public PXSelect<MyProjection> MyView;
}
```

To override the PXProjectionAttribute attribute, you need to declare a graph extension \(`MyGraphProjectionOverrideExt` in this example\) for the `MyGraph` graph. You must place the overriding logic inside the `Initialize` method. You change the mapping of a projection DAC field by declaring the cacheAttached event handler for the field with a new set of attributes. The following code shows the graph extension for `MyGraph` that overrides the PXProjectionAttribute of the `MyProjection` DAC and changes the mapping of its `DocID` field.

```language-csharp
public class MyGraphProjectionOverrideExt : PXGraphExtension<MyGraph>
{
   // Overriding the projection query by directly modifying the PXCache graph cache
   // that corresponds to the MyProjection DAC
   public override void Initialize()
   {
      var cache = Base.Caches<MyProjection>();
      var child = cache.Interceptor.Child;
      Type newProjectionQueryType = typeof(Select<...New Projection Query...>);
      cache.Interceptor = new PXProjectionAttribute(newProjectionQueryType);
      cache.BqlSelect = cache.Interceptor.GetTableCommand();

      if (child != null)
         cache.Interceptor.Child = child;
   }

   // Overriding the DocID field's mapping.
   [PXCustomize.PXDBAttribute(BqlField = typeof(AnotherDAC.uniqueID))]
   protected virtual void _(Events.CacheAttached<MyProjection.docID> e) { }
}
```

After the initialization of the graph extension completes, the `MyProjection` DAC behaves in `MyGraph` as if it had been declared with the new projection query. The override affects only `MyGraph` because the graph extension is only applied to this graph. If other graphs use the `MyProjection` DAC, they will still use the old projection query.

If you want to apply different overriding logic to each of the other graphs that use the same projection DAC, you need to create a separate graph extension for each of them. However, if you want to apply the same overriding logic to each of the other graphs that use the same projection DAC, you can create a generic graph extension. This approach is described in the next section.

**Tip:** Technically, you can create a single graph extension for the base graph PXGraph \(from which all graphs in Acumatica Framework extend\), as shown below.

```language-csharp
public class MyGraphExtensionForAllGraphs : PXGraphExtension<PXGraph> {}
```

You can then declare your overriding logic in this graph extension—which will be applied to all graphs in the system at runtime. However, using this approach will affect the whole system and will consume additional system resources unnecessarily. In most cases, only a few graphs in the system use a particular projection DAC. If you use this approach, the rest of the graphs will have a redundant graph extension that does nothing. This is why we strongly discourage you from declaring graph extensions that will be applied to all graphs at runtime. You should declare graph extensions for only graphs that actually use the projection DAC you’re overriding.

## Declaring a Generic Graph Extension { .section}

If you want to apply the same overriding logic to other graphs that use the same projection DAC, you need to create the same graph extension \(as shown in the preceding section\) for each of them. However, this requires you to duplicate a lot of code. Instead, we recommend that you declare a generic graph extension that will serve as a base type for your graph extensions, which extend the concrete graphs that use the same projection DAC. You add the overriding logic to this generic graph extension.

Suppose that the `MyProjection` DAC is used in multiple graphs and you want to use the same overriding logic for all these graphs. You can declare a generic graph extension and place the overriding logic in it as follows.

```language-csharp
public abstract class ProjectionOverrideExt<TGraph> : PXGraphExtension<TGraph>
where TGraph : PXGraph, new()
{
   // Overriding the projection query by directly modifying the PXCache graph cache
   // that corresponds to the MyProjection DAC
   public override void Initialize()
   {
      var cache = Base.Caches<MyProjection>();
      var child = cache.Interceptor.Child;
      Type newProjectionQueryType = typeof(Select<...New Projection Query...>);
      cache.Interceptor = new PXProjectionAttribute(newProjectionQueryType);
      cache.BqlSelect = cache.Interceptor.GetTableCommand();

      if (child != null)
         cache.Interceptor.Child = child;
   }

   // Overriding the DocID field's mapping.
   [PXCustomize.PXDBAttribute(BqlField = typeof(AnotherDAC.uniqueID))]
    protected virtual void _(Events.CacheAttached<MyProjection.docID> e) { }
}
```

Notice that the `ProjectionOverrideExt` graph extension is abstract and has a generic `TGraph` parameter. You can easily duplicate the overriding logic for all the graphs that use the `MyProjection` DAC by creating derived graph extensions that substitute `TGraph` with the concrete graph type, as shown below.

```language-csharp
​public class MyGraphProjectionOverrideExt : ProjectionOverrideExt<MyGraph> { }

public class MyAnotherGraphProjectionOverrideExt : ProjectionOverrideExt<MyAnotherGraph> { }
​
```

**Parent topic:**[Displaying Data from Multiple DACs by Using PXProjection](../StudioDeveloperGuide/CodeCustomization_MultiDacDisplayPXProjection_Mapref.md)

