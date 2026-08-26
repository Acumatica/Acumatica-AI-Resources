# Barcode Scan States: To Create the Confirmation State {#_f5872e55-bc01-4005-a854-3fa3eddfca94 .task}

This activity will walk you through the creation of the confirmation scan state.

## Story { .section}

Suppose that you are implementing a scan mode for a custom barcode-driven form. The barcode scan class of this form uses the WarehouseManagementSystem&lt;TSelf,TGraph&gt; base scan class.

For this scan mode, you need to define the confirmation scan state. You need to split the confirmation logic into the following `virtual` methods:

-   `Confirm()`: The entry point method of the scan extension component
-   `CanConfirm()`: A method that is used to extend the validation logic
-   `ConfirmRow()`: The method that contains the main logic of confirmation
-   `FindDetailRow()`: The helper method that can be altered

## Process Overview { .section}

You will create a WMSBase.ConfirmationState class descendant. In this class, you will define a ScanExtension class that will implement the confirmation logic.

In the PerformConfirmation\(\) method, you will then get the ScanExtension object by using the Get&lt;TExtension&gt;\(\) method and call its entry point method.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Create a barcode scan class by performing the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.
3.  Create the scan mode and define its required properties by performing the [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md) prerequisite activity.
4.  Create the set of scan states by performing the [Barcode Scan States: To Create the Set of Scan States](WMSEngine_ScanState_Activity_CreateSetOfStates.md) prerequisite activity.

## Step 1: Defining the Required Member { .section}

To create the confirmation state, do the following:

1.  In the `CountMode` class, create the `ConfirmState` class as follows.

    ```
    public class INScanCount : WMSBase
    {
        ...
        public sealed class CountMode : ScanMode
        {
            ...
      
            public sealed class ConfirmState : WMSBase.ConfirmationState 
            {
                
            }
        }
    }
    ```

2.  Define the required member as follows.

    ```
    public sealed class ConfirmState : WMSBase.ConfirmationState 
    {
        public override string Prompt => 
            Basis.Localize(Msg.Prompt, Basis.SightOf<WMSScanHeader.inventoryID>(), 
                Basis.Qty, Basis.UOM);
    
        [PXLocalizable]
        new public abstract class Msg
        {
            public const string Prompt = "Confirm counting {0} x {1} {2}.";
        }
    }
    ```


## Step 2: Implementing the Confirmation Process { .section}

Implement the confirmation process as follows:

1.  Define a scan state-related extension class inside the scan state and place in the extension class only component related logic, as shown in the following code.

    ```
    public sealed class ConfirmState : WMSBase.ConfirmationState
    {
        ...
        public class Logic : ScanExtension
        { 
            public virtual FlowStatus Confirm()
    	 {
    	     if (!CanConfirm(out var error))
    		   return error;
                    return ConfirmRow();
    	 }
      
            protected virtual bool CanConfirm(out FlowStatus error)
            {
                if (Basis.Document == null)
                {
                    error = FlowStatus.Fail(RefNbrState.Msg.NotSet);
                    return false;
                }
    
                if (Basis.DocumentIsEditable == false)
                {
                    error = FlowStatus.Fail(RefNbrState.Msg.InvalidStatus, 
                        Basis.DocumentView.Cache.GetStateExt<INPIHeader.status>(Basis.Document));
                    return false;
                }
    
                if (Basis.InventoryID == null)
                {
                    error = FlowStatus.Fail(InventoryItemState.Msg.NotSet);
                    return false;
                }
    
                if (Basis.CurrentMode.HasActive<LotSerialState>() && Basis.LotSerialNbr == null)
                {
                    error = FlowStatus.Fail(LotSerialState.Msg.NotSet);
                    return false;
                }
    
                if (Basis.CurrentMode.HasActive<LotSerialState>() &&
                    Basis.SelectedLotSerialClass.LotSerTrack == INLotSerTrack.SerialNumbered &&
                    Basis.BaseQty != 1)
                {
                    error = FlowStatus.Fail(InventoryItemState.Msg.SerialItemNotComplexQty);
                    return false;
                }
    
                error = FlowStatus.Ok;
                return true;
            }
     
            protected virtual FlowStatus ConfirmRow()
            {
                INPIDetail row = FindDetailRow();
    
                decimal? newQty = row?.PhysicalQty ?? 0;
                if (Basis.Remove == true)
                    newQty -= Basis.BaseQty;
                else
                    newQty += Basis.BaseQty;
    
                if (Basis.CurrentMode.HasActive<LotSerialState>() &&
                    Basis.SelectedLotSerialClass.LotSerTrack == INLotSerTrack.SerialNumbered &&
                    newQty.IsNotIn(0, 1))
                {
                    return FlowStatus.Fail(InventoryItemState.Msg.SerialItemNotComplexQty);
                }
    
                if (row == null)
                {
                    row = (INPIDetail)Basis.Details.Cache.CreateInstance();
                    row.PIID = Basis.RefNbr;
                    row.LineNbr = (int)PXLineNbrAttribute.NewLineNbr<INPIDetail.lineNbr>(Basis.Details.Cache, Basis.Document);
                    row.InventoryID = Basis.InventoryID;
                    row.SubItemID = Basis.SubItemID;
                    row.SiteID = Basis.SiteID;
                    row.LocationID = Basis.LocationID;
                    row.LotSerialNbr = Basis.LotSerialNbr;
                    row.PhysicalQty = Basis.BaseQty;
                    row.BookQty = 0;
                    row = Basis.Details.Insert(row);
    
                    Basis.SaveChanges();
    
                    row = Basis.Details.Locate(row) ?? row;
                }
    
                Basis.Details.SetValueExt<INPIDetail.physicalQty>(row, newQty);
                row = Basis.Details.Update(row);
                Basis.SaveChanges();
    
                Basis.DispatchNext(
                    null,
                    Basis.SightOf<WMSScanHeader.inventoryID>(), Basis.Qty, Basis.UOM);
    
                return FlowStatus.Ok;
            }
     
            protected virtual INPIDetail FindDetailRow()
            {
                var findDetailCmd = BqlCommand.CreateInstance(Basis.Details.View.BqlSelect.GetType());
    
                findDetailCmd = findDetailCmd.WhereAnd<Where<
                    INPIDetail.inventoryID.IsEqual<WMSScanHeader.inventoryID.FromCurrent>.
                    And<INPIDetail.siteID.IsEqual<WMSScanHeader.siteID.FromCurrent>>
                >>();
    
                if (Basis.CurrentMode.HasActive<LocationState>() && Basis.LocationID != null)
                    findDetailCmd = findDetailCmd.WhereAnd<Where<INPIDetail.locationID.IsEqual<
                        WMSScanHeader.locationID.FromCurrent>>>();
    
                if (Basis.CurrentMode.HasActive<LotSerialState>() && Basis.LotSerialNbr != null)
                    findDetailCmd = findDetailCmd.WhereAnd<Where<INPIDetail.lotSerialNbr.IsEqual<
                        WMSScanHeader.lotSerialNbr.FromCurrent>>>();
    
                var findDetailView = Basis.Graph.TypedViews.GetView(findDetailCmd, false);
                var findResultSet = (PXResult<INPIDetail>)findDetailView.SelectSingle();
    
                return findResultSet;
            }
        }
     
        ...
    }
    ```

2.  Implement the PerformConfirmation\(\) method as follows.

    ```
    public sealed class ConfirmState : WMSBase.ConfirmationState
    {
        ...
        protected override FlowStatus PerformConfirmation() => 
            Get<Logic>().Confirm();
        ...
    }
    ```

3.  Fix or suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error that is displayed by Acuminator for the `Logic` class.

**Parent topic:**[Implementing Barcode Scan States](../DeveloperGuide/WMSEngine_ScanState_Mapref.md)

