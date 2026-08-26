# Barcode Scan States: To Create the Input State {#_d827922f-1a4f-4137-af58-9989b3614de2 .task}

This activity will walk you through the creation of the input scan state.

## Story { .section}

Suppose that you are implementing a scan mode for a custom barcode-driven form. The barcode scan class of this form uses the WarehouseManagementSystem&lt;TSelf,TGraph&gt; base scan class.

For this scan mode, you need to define the input scan state, which handles the reference number of a document.

## Process Overview { .section}

Because you need the input state to belong to a certain mode, you will nest the input state in the `CountMode` scan mode class.

The base barcode scan class already has a blank class for creating a state that handles the reference number of a document. Therefore, you can skip the implementation of particular properties and methods. You will not implement the following members:

-   Code: It will use the default implementation of WMSBase.RefNbrState&lt;INPIHeader&gt;, which is *RNBR*.
-   IsStateActive\(\): It will use the default implementation of the EntityState&lt;TBasis, TEntity&gt; class, which returns `true`.
-   IsStateSkippable\(\): It will use the default implementation of the WMSBase.RefNbrState&lt;INPIHeader&gt; class, which is `"Basis.RefNbr != null && Basis.Header.ProcessingSucceeded != true"`.
-   SetNextState\(\): It will use the default implementation, which moves the system to the next state based on the transition map.

In the Validate\(\) method, you will reuse the method introduced in [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md).

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Create a barcode scan class by performing the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.
3.  Create the scan mode and define its required properties by performing the [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md) prerequisite activity.
4.  Create the set of scan states by performing the [Barcode Scan States: To Create the Set of Scan States](WMSEngine_ScanState_Activity_CreateSetOfStates.md) prerequisite activity.

## Step 1: Defining the Required Members { .section}

To create the input state, do the following:

1.  In the `CountMode` class, create the `RefNbrState` class, as follows.

    ```
    public class INScanCount : WMSBase
    {
        ...
        public sealed class CountMode : ScanMode
        {
            ...
      
            public sealed class RefNbrState : WMSBase.RefNbrState<INPIHeader> 
            {
                
            }
        }
    }
    ```

2.  In the `RefNbrState` class, define the required `StatePrompt` member, as follows.

    ```
     public sealed class RefNbrState : WMSBase.RefNbrState<INPIHeader> 
     {
         protected override string StatePrompt => Msg.Prompt;
    
         [PXLocalizable]
         public abstract class Msg 
         {
             public const string Prompt = "Scan a reference number of the PI count.";
         }
    }
    ```


## Step 2: Implementing the Cycle-Processing Members { .section}

Implement the cycle-processing members of the state as follows:

1.  In the `RefNbrState` class, define how a barcode should be transformed into an entity it represents as follows.

    ```
    public sealed class RefNbrState : WMSBase.RefNbrState<INPIHeader>
    {
        ...             
        protected override INPIHeader GetByBarcode(string barcode) => 
            INPIHeader.PK.Find(Basis, barcode);    
        ...
    }
    ```

2.  Define the response that is displayed to a user if the state cannot find an entity, as follows.

    ```
    public sealed class RefNbrState : WMSBase.RefNbrState<INPIHeader>
    {
        ...             
        protected override void ReportMissing(string barcode) => 
            Basis.ReportError(Msg.Missing, barcode);
        ...
        [PXLocalizable]
        public abstract class Msg 
        {
            ...
            public const string Missing = "The {0} PI count was not found.";
        }
    }
    ```

3.  Provide the entity validation, as shown in the following code.

    ```
    public sealed class RefNbrState : WMSBase.RefNbrState<INPIHeader>
    {
        ...             
        protected override Validation Validate(INPIHeader entity) => 
            Basis.IsDocumentStatusEditable(entity.Status) 
            ? Validation.Ok
            : Validation.Fail(Msg.InvalidStatus, 
                Basis.SightOf<INPIHeader.status>(entity));
        ...
        [PXLocalizable]
        public abstract class Msg 
        {
            ...
            public const string InvalidStatus = 
                "Document has the {0} status, cannot be used for count.";
        }
    }
    ```

4.  Implement the Apply\(\) and ClearState\(\) methods as follows.

    ```
    public sealed class RefNbrState : WMSBase.RefNbrState<INPIHeader>
    {
        ...             
        protected override void Apply(INPIHeader entity)
        {
            Basis.RefNbr = entity.PIID;
            Basis.SiteID = entity.SiteID;
            Basis.NoteID = entity.NoteID;
            Basis.DocumentView.Current = entity;
        }
        protected override void ClearState() 
        {
            Basis.RefNbr = null;
            Basis.SiteID = null;
            Basis.NoteID = null;
            Basis.DocumentView.Current = null;
        }
        ...
    }
    ```

5.  Define the response that is displayed to the user if the entity was successfully found, validated, and applied to the state of the barcode-driven form, as follows.

    ```
    public sealed class RefNbrState : WMSBase.RefNbrState<INPIHeader>
    {
        ...             
        protected override void ReportSuccess(INPIHeader entity) => 
            Basis.ReportInfo(Msg.Ready, entity.PIID); 
        ...
        [PXLocalizable]
        public abstract class Msg 
        {
            ...
            public const string Ready = 
                "The {0} PI count has been loaded and is ready for processing.";
        }
    }
    ```


**Parent topic:**[Implementing Barcode Scan States](../DeveloperGuide/WMSEngine_ScanState_Mapref.md)

