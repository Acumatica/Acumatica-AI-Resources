# To Implement Reusable Business Logic {#_0ff30b0e-e5a6-4211-ac29-85d996824d9d .task}

You can define your own generic graph extensions when:

-   You need to use the same business logic in multiple parts of your Acumatica ERP application or Acumatica Framework–based application.
-   This logic is not included in the source code of Acumatica ERP.

This topic provides detailed instructions. To view a list of predefined generic graph extensions, see [Generic Graph Extensions: Classes Declared in Acumatica ERP](CodeCustomization_GenericExtension_PredefinedExtensions.md).

## To Create a Generic Graph Extension { .section}

1.  In the code of your application, define a class that inherits from the PXGraphExtension&lt;TGraph&gt; class. The following code shows a declaration of a generic graph extension.

    ```language-csharp
    public abstract class MultiCurrencyGraph<TGraph, TPrimary> : 
      PXGraphExtension<TGraph>
        where TGraph : PXGraph
        where TPrimary : class, IBqlTable, new()
    {
    }
    ```

2.  In the generic graph extension, define the mapped cache extensions, which inherit from the PXMappedCacheExtension `abstract` class. For details, see [Mapped Cache Extension](CodeCustomization_GenericExtension_GeneralInfo.md#_efcb1dec-e793-4a88-b333-e647c6ff2b5e).

    ```language-csharp
    //Mapped cache extension
    public class Document : PXMappedCacheExtension
    {
      //BAccountID field
      public abstract class bAccountID : PX.Data.BQL.BqlInt.Field<bAccountID> { }
      {
      }
      protected Int32? _BAccountID;
    
      public virtual Int32? BAccountID
      {
        get
        {
          return _BAccountID;
        }
        set
        {
          _BAccountID = value;
        }
      }
    
      //CuryID field
      public abstract class curyID : PX.Data.BQL.BqlString.Field<curyID> { }
      {
      }
      protected String _CuryID;
    
      public virtual String CuryID
      {
        get
        {
          return _CuryID;
        }
        set
        {
          _CuryID = value;
        }
      }
    
      ...
    }
    ```

3.  For each mapped cache extension, declare the `protected` mapping class, as shown in the following code. For details, see [Mapping Class](CodeCustomization_GenericExtension_GeneralInfo.md#_07af458f-a094-4b51-8859-a8204ccb196e).

    ```language-csharp
    //A mapping class
    protected class DocumentMapping : IBqlMapping
    {
      public Type Extension => typeof(Document);
      protected Type _table;
      public Type Table => _table;
    
      public DocumentMapping(Type table)
      {
        _table = table;
      }
      public Type BAccountID = typeof(Document.bAccountID);
      public Type CuryInfoID = typeof(Document.curyInfoID);
      public Type CuryID = typeof(Document.curyID);
      public Type DocumentDate = typeof(Document.documentDate);
    }
    ```

4.  For each mapping class, declare the `protected abstract` method that returns the mapping class, as shown in the following code.

    ```language-csharp
    protected abstract DocumentMapping GetDocumentMapping();
    ```

5.  Define the views that use the mapped cache extensions, as the following code shows. To define each view, you use the PXSelectExtension&lt;Table&gt; : PXSelectBase&lt;Table&gt; class, where Table is a mapped cache extension.

    ```language-csharp
    //A view that uses the mapped cache extension
    public PXSelectExtension<Document> Documents;
    ```

    **Tip:** In the generic graph extension, you can define standard views as well as views that use the mapped cache extensions.

6.  Define the reusable event handlers, as the following code shows.

    ```language-csharp
    protected virtual void _(
      Events.FieldUpdated2<Document.documentDate, Document> e)
    {
      if (e.Row == null) return;
      CurrencyInfoAttribute.SetEffectiveDate<Document.documentDate>(
        Documents.Cache, 
        new PXFieldUpdatedEventArgs(e.Row, e.OldValue, e.ExternalCall));            
    }
    ```

7.  Implement any other business logic that you want to reuse, such as filters and actions.

Once you’ve defined the generic graph extension, you can insert reusable business logic in any part of your application, as described in [To Insert Reusable Business Logic That Has Already Been Declared](BL__how_Insert_Reusable_Business_Logic.md#).

**Parent topic:**[Reusing Business Logic with Generic Graph Extensions](../StudioDeveloperGuide/CodeCustomization_GenericExtension_Mapref.md)

