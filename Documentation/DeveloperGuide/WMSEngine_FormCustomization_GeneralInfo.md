# Customization of a Barcode-Driven Form: General Information {#_e4fe09c5-56c7-4ff5-9873-20adb1d7dd9b .concept}

The barcode-driven engine uses a component-based system to make its customization easier.

## Learning Objectives { .section}

In this chapter, you will learn how to customize a barcode-driven form.

## Applicable Scenarios { .section}

You customize a barcode-driven form when you need to modify the behavior of this form.

## Customization Approach { .section}

When you customize a barcode-driven form, you do the following:

1.  Find the barcode scan class you want to customize, and create an extension for it by using the ScanExtension component of the chosen class. For details about ScanExtension, see [Extension of Scan Components: Scan Extensions](WMSEngine_ExtendedComponent_ScanExtension.md).
2.  Decide which part of the logic of the form you want to change. Depending on the part you need to change, use the recommendations in the following topics:
    -   If you need to customize the logic of the barcode scan class, see [Customization of a Barcode-Driven Form: Barcode Scan Class](WMSEngine_FormCustomization_WMSClass.md)
    -   If you need to customize a scan component, see [Extension of Scan Components: Customization of Components](WMSEngine_ExtendedComponent_CustomizedComponents.md)

## Namespaces { .section}

When you are customizing a barcode-driven form, you may need to import the following namespaces.

```
using System;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
  
using PX.Common;
using PX.Data;
using PX.Data.BQL;
using PX.Data.BQL.Fluent;
using PX.BarcodeProcessing;
  
using PX.Objects.IN;
using PX.Objects.IN.WMS;
// XX is the name of the module in which the target class is located
using PX.Objects.XX; 
using PX.Objects.XX.WMS;
```

## Generic Extensions { .section}

If you want to create a generic extension for a barcode-driven form, you use the following template. For details on generic extensions, see [Generic Graph Extensions: General Information](../StudioDeveloperGuide/CodeCustomization_GenericExtension_GeneralInfo.md).

```language-csharp
public abstract class SomeGenericWMSExtension<TScanBasis, TScanGraph> : 
    PXGraphExtension<TScanBasis, TScanGraph>
    where TScanBasis : WarehouseManagementSystem<TScanBasis, TScanGraph> 
    where TScanGraph : PXGraph, new()
{
    // Is necessary for consistency
    protected TScanBasis Basis => Base1;
  
    // Gets an instance of this extension within its components
    public static SomeGenericWMSExtension<TScanBasis, TScanGraph> 
        GetSelf(TScanBasis basis) => 
            basis.Get<SomeGenericWMSExtension<TScanBasis, TScanGraph>>();

    // Adds customization logic
    /// Overrides <seealso cref="BarcodeDrivenStateMachine{TSelf, TGraph}.DecorateScanState"/>
    [PXOverride]
    public virtual ScanState<TScanBasis> DecorateScanState(
        ScanState<TScanBasis> original, 
        Func<ScanState<TScanBasis>, ScanState<TScanBasis>> base_DecorateScanState)
    {
        ...
    }
}
```

**Parent topic:**[Customizing a Barcode-Driven Form](../DeveloperGuide/WMSEngine_FormCustomization_Mapref.md)

