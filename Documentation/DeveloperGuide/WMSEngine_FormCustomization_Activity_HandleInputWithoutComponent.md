# Customization of a Barcode-Driven Form: To Handle Input Without Component Usage {#_a11ebecd-9f4c-43d5-88dc-71c38da69a5a .task}

This activity will walk you through the implementation of input handling without component usage.

## Story { .section}

Suppose that you want to add the ability to append text to the note of the document that the user is currently working with on a barcode-driven form. Also, you want to make this ability generic for any barcode-driven form.

## Process Overview { .section}

You will create a generic extension for the barcode-driven engine and implement custom logic in it.

## System Preparation { .section}

Before you begin performing the step of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Enable the following features on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, where they are in the *Inventory and Order Management* group of features:
    -   *Multiple Warehouse Locations*
    -   *Warehouse Management*
    -   *Fulfillment*

## Step: Handling Input Without Component Usage { .section}

To modify the barcode-driven engine to be able to append a text to a note, do the following:

1.  In the `PhoneRepairShop_Code` Visual Studio project, add a reference to the `PX.BarcodeProcessing.dll` file.
2.  Create the `WMSNoteAppender` class.
3.  Add the `using` directives shown in the following code to the file of the class.

    ```
    using System;
    using PX.Data;
    using PX.BarcodeProcessing;
    using PX.Common;
    using PX.Objects.IN;
    using PX.Objects.IN.WMS;
    ```

4.  Create a generic extension for the barcode-driven engine.

    ```
    public abstract class WMSNoteAppender<TScanBasis, TScanGraph> : 
            PXGraphExtension<TScanBasis, TScanGraph>
        where TScanBasis : BarcodeDrivenStateMachine<TScanBasis, TScanGraph>
        where TScanGraph : PXGraph, new()
        {
            protected TScanBasis Basis => Base1; 
        }
    ```

5.  Add additional type parameter that will represent the note owner entity.

    ```
    public abstract class WMSNoteAppender<TDocument, TScanBasis, TScanGraph> : 
        PXGraphExtension<TScanBasis, TScanGraph>
    where TDocument : PXBqlTable, IBqlTable, new() 
    where TScanBasis : BarcodeDrivenStateMachine<TScanBasis, TScanGraph>
    where TScanGraph : PXGraph, new()
    {
        protected TScanBasis Basis => Base1;
    }
    ```

6.  Override the ProcessCustomScan method by using the PXOverride attribute.

    ```
    public abstract class WMSNoteAppender<TDocument, TScanBasis, TScanGraph> : 
        PXGraphExtension<TScanBasis, TScanGraph>
    where TDocument : class, IBqlTable, new()
    where TScanBasis : BarcodeDrivenStateMachine<TScanBasis, TScanGraph>
    where TScanGraph : PXGraph, new()
    {
        protected TScanBasis Basis => Base1;
    
        /// Overrides <seealso cref="BarcodeDrivenStateMachine{TSelf, TGraph}.ProcessCustomScan(string)"/>
        [PXOverride]
        public virtual bool? ProcessCustomScan(
            string barcode,
            Func<string, bool?> base_ProcessCustomScan) 
        {
            return base_ProcessCustomScan(barcode);
        }
    }
    ```

7.  Add the logic of the handler.

    ```
    public abstract class WMSNoteAppender<TDocument, TScanBasis, TScanGraph> : 
        PXGraphExtension<TScanBasis, TScanGraph>
    where TDocument : class, IBqlTable, new()
    where TScanBasis : BarcodeDrivenStateMachine<TScanBasis, TScanGraph>
    where TScanGraph : PXGraph, new()
    {
        protected TScanBasis Basis => Base1;
    
        public const string NotePrefix = "note:"; 
    
        /// Overrides <seealso cref="BarcodeDrivenStateMachine{TSelf, TGraph}.ProcessCustomScan(string)"/>
        [PXOverride]
        public virtual bool? ProcessCustomScan(string barcode, 
            Func<string, bool?> base_ProcessCustomScan)
        {
            if (barcode.StartsWith(NotePrefix))
            {
                string value = barcode.Substring(NotePrefix.Length).Trim();
    
                if (!string.IsNullOrEmpty(value))
                {
                    PXCache<TDocument> docCache = Basis.Graph.Caches<TDocument>();
                    // Use an abstract function to get the entity.
                    var document = GetNoteOwnerEntity(); 
    
                    if (document != null && docCache.Fields.Contains("NoteID"))
                    {
                        string existingValue = PXNoteAttribute.GetNote(docCache, document);
                        string newLine = 
                            $"[{Basis.Graph.Accessinfo.UserName}@{DateTime.Now.ToShortDateString()}]: {value}";
    
                        PXNoteAttribute.SetNote(docCache, document,
                            string.IsNullOrEmpty(existingValue)
                                ? newLine
                                : existingValue + Environment.NewLine + newLine);
    
                        Basis.SaveChanges();
                        Basis.ReportInfo(Msg.Success); 
    
                        return true; 
                    }
                    else
                    {
                        Basis.ReportError(Msg.Fail);
    
                        return false; 
                    }
                }
            }
    
            return base_ProcessCustomScan(barcode);
        }
    
        protected abstract TDocument GetNoteOwnerEntity(); 
    
        [PXLocalizable]
        public abstract class Msg 
        {
            public const string Success = "Your note was successfully added.";
            public const string Fail = "The system was not able to add your note.";
        }
    }
    ```

    The ProcessCustomScan method will be called before the current ScanState processor attempts to process a barcode only if none of ScanCommand processors and none of ScanRedirect processors are able to handle the scanned barcode.

    The return value of the ProcessCustomScan method has the `bool?` type. If the method returns `null`, the scanned barcode will be passed to the current ScanState processor. Otherwise, the returned value of the ProcessCustomScan method would show whether the custom scan handler succeeded or failed.

    You use the *note:text to append* pattern to recognize the wish of a user to append text to the note of the current entity.

8.  Add the end extension for the specific barcode scan class.

    ```
    public class ItemNoteAttacher : WMSNoteAppender<InventoryItem, 
        InventoryItemLookup, InventoryItemLookup.Host>
    {
        protected override InventoryItem GetNoteOwnerEntity() => 
            Basis.InventoryItem.Select(); // decide how to get the underlying entity
    }
    ```

9.  Fix or suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) errors that are displayed by Acuminator.
10. Build the project and test the custom functionality.

**Parent topic:**[Customizing a Barcode-Driven Form](../DeveloperGuide/WMSEngine_FormCustomization_Mapref.md)

