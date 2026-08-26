# To Insert Reusable Business Logic That Has Already Been Declared {#_c9249c85-d703-4124-a376-bea0dd56c54e .task}

This topic describes how to insert an already-declared generic graph extension in the application code.

## To Add a Generic Graph Extension to a Graph { .section}

1.  Review the generic graph extension that provides the business logic you want to reuse as follows:
    1.  Identify the mapped cache extensions the generic graph extension works with and their fields. Decide whether the default mapping \(defined by the mapping class of the generic graph extension\) is suitable for the base data access class \(DAC\) you’re going to use.
    2.  Identify the fields of the mapped cache extension that are bound to database columns. Then make sure the database table for the base DAC includes the columns needed to store the data from the mapped cache extension.
2.  In the graph where you want to add reusable business logic, add the public implementation class that derives from the generic graph extension of the needed type. Use the following types in the type parameters of the generic graph extension:

    -   The base graph to which you’re adding reusable logic
    -   The main DAC of the primary data view of the base graph
    In the following code, the `MultiCurrency` class extends the `OpportunityMaint` graph. The `MultiCurrency` class derives from `public abstract class MultiCurrencyGraph<TGraph, TPrimary> : PXGraphExtension<TGraph>`.

    ```language-csharp
    public class MultiCurrency : MultiCurrencyGraph<OpportunityMaint, CROpportunity>
    {
    }
    ```

3.  In the added class, override the `abstract` methods of the generic graph extension as follows:
    -   In the overridden methods that return mapping classes, either use the default mapping of the fields of the mapped cache extension to the fields of the base DAC or adjust the mapping.
    -   In the other overridden methods, implement the required business logic. For details on the implementation of the methods in the generic graph extension declared in Acumatica ERP, see API Reference.
4.  In the added class, adjust the reused business logic by doing any of the following:

    -   Override other methods of the base class.
    -   Add your own views, methods, and event handlers.
    The following code shows a sample implementation of the `MultiCurrency` class, which reuses the multicurrency business logic defined in the MultiCurrencyGraph generic graph extension.

    ```language-csharp
    public class MultiCurrency : MultiCurrencyGraph<OpportunityMaint, CROpportunity>
    {   
      protected override DocumentMapping GetDocumentMapping()
      {
        return new DocumentMapping(typeof(CROpportunity)) 
        {
          DocumentDate =  typeof(CROpportunity.closeDate)
        };
      }  
    
      protected override CurySourceMapping GetCurySourceMapping()
      {
        return new CurySourceMapping(typeof(Customer));
      }
    
      public PXSelect<CRSetup> crCurrency;
      protected PXSelectExtension<CurySource> SourceSetup => 
       new PXSelectExtension<CurySource>(crCurrency);
    
      protected virtual CurySourceMapping GetSourceSetupMapping()
      { 
        return new CurySourceMapping(typeof(CRSetup)) 
        {
          CuryID = typeof(CRSetup.defaultCuryID), 
           CuryRateTypeID = typeof(CRSetup.defaultRateTypeID)
        };        
      }
    
      protected override CurySource CurrentSourceSelect()
      {
        ...
      }
    }
    ```


**Parent topic:**[Reusing Business Logic with Generic Graph Extensions](../StudioDeveloperGuide/CodeCustomization_GenericExtension_Mapref.md)

