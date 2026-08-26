# Extension of Scan Components: To Extend Predefined Scan States for a Custom Form {#_b21a618c-fe2c-4e69-9dca-f638153eecd8 .task}

This activity will walk you through the process of altering predefined scan states.

## Story { .section}

Suppose that you are creating a scan mode for a custom barcode-driven form. You have inherited the following input states from the base barcode scan class: `LocationState`, `InventoryItemState`, and `LotSerialState`. You need to modify these states to use them in your scan mode as follows:

-   For the `LocationState` scan state, you want to add additional validation that is specific to this current scan mode.
-   For the `InventoryItemState` scan state, you want to add an additional absence handler that is specific to this scan mode.
-   You want the `LotSerialState` to be active only when it is already active and when the lot or serial number is entered on receipt.

## Process Overview { .section}

You will implement the following ways of altering the logic of the predefined components:

-   You will introduce a descendant for the `LocationState` class.
-   You will inject the logic when `InventoryItemState` is created.
-   You will inject the logic when `LotSerialState` is decorated.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Create a barcode scan class by performing the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.
3.  Create the scan mode and define its required properties by performing the [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md) prerequisite activity.
4.  Create the set of scan states by performing the [Barcode Scan States: To Create the Set of Scan States](WMSEngine_ScanState_Activity_CreateSetOfStates.md) prerequisite activity.

## Step 1: Introducing a Descendant { .section}

To alter a scan state by introducing a descendant, do the following:

1.  In the `CountMode` class, define the `LocationState` class, as follows.

    ```
    public class INScanCount : WMSBase
    {
        public sealed class CountMode : ScanMode
        {
            ...  
            public new sealed class LocationState : WMSBase.LocationState
            {
                
            }
            ...
        }
    }
    ```

    You use the same name for the descendant that is used for the predefined class. The code of this activity includes two versions of the `LocationState` class: the original `WMSBase.LocationState` class and the `CountMode`-related `INScanCount.CountMode.LocationState` class. Because the original class and the descendant have the same name, you will not need to change the `CreateStates()` method.

2.  In the `LocationState` class, implement the IsStateSkippable\(\) method so that `LocationState` is skipped if the location is already selected, as shown in the following code.

    ```
    public new sealed class LocationState : WMSBase.LocationState
    {
        protected override bool IsStateSkippable() => Basis.LocationID != null;
    }
    ```

    In `CountMode`, you do not need to ask a user for a location again if the location is already selected. Therefore, you implement the IsStateSkippable\(\) method so that `LocationState` is skipped if the location is already selected.

3.  In the `INScanCount.cs`, add the following `using` directive.

    ```
    using PX.Data.BQL.Fluent;
    ```

4.  In the `LocationState` class, add the Validate\(\) method, as shown in the following code.

    ```
    public new sealed class LocationState : WMSBase.LocationState
    {
        protected override bool IsStateSkippable() => Basis.LocationID != null;
     
        protected override Validation Validate(INLocation location)
        {
            if (Basis.HasFault(location, base.Validate, out Validation fault))
                return fault;
      
            INPIStatusLoc statusLocation =
                SelectFrom<INPIStatusLoc>.
                Where<
                    INPIStatusLoc.pIID.IsEqual<WMSScanHeader.refNbr.FromCurrent>.
                    And<
                        INPIStatusLoc.locationID.IsEqual<@P.AsInt>.
                        Or<INPIStatusLoc.locationID.IsNull>>>.
                View.ReadOnly
                .Select(Basis, location.LocationID);
     
            if (statusLocation == null)
                return Validation.Fail(Msg.NotPresent, location.LocationCD);
      
            return Validation.Ok;
        }
     
        [PXLocalizable]
        public new abstract class Msg : WMSBase.LocationState.Msg
        {
            public const string NotPresent = "The {0} location is not in the list and cannot be added.";
        }
    }
    ```

    In `CountMode`, you need only locations that are present in the physical inventory that the user is currently processing. Therefore, you add additional validation logic in the Validate\(\) method. You execute the base validation first. The custom validation is performed only if the base validation is passed.


## Step 2: Injecting the Logic When the Component Is Created { .section}

To alter a scan state by injecting the logic when the scan state is created, in the `CountMode` class, modify the CreateStates\(\) method as follows.

```
public class INScanCount : WMSBase
{
    public sealed class CountMode : ScanMode
    {
        ...
        protected override IEnumerable<ScanState<INScanCount>> CreateStates()
        {
            yield return new RefNbrState();
            yield return new LocationState();
            yield return new InventoryItemState()
                .Intercept.HandleAbsence.ByAppend((basis, barcode) => 
                {
                    if (basis.TryProcessBy<LocationState>(barcode, 
                        StateSubstitutionRule.KeepPositiveReports | 
                        StateSubstitutionRule.KeepApplication)) 
                        return AbsenceHandling.Done; 
                    return AbsenceHandling.Skipped;                
                });
            yield return new LotSerialState();
            yield return new ConfirmState();
        } 
        ...
    }
}
```

In the CreateStates\(\) method, you intercept the HandleAbsence method. You use the ByAppend interception strategy because you want to register an additional absence handler without affecting the existing ones. In `CountMode`, you need the ability to switch the location even if the current input state is `InventoryItemState`. You also configure the `LocationState` state to try handle the input.

## Step 3: Injecting the Logic When the Component Is Decorated { .section}

To alter a scan state by injecting the logic when the scan state is decorated, in the `CountMode` class, add the DecorateScanState\(\) method as follows.

```
public class INScanCount : WMSBase
{
    ... 
    protected override ScanState<INScanCount> DecorateScanState(
        ScanState<INScanCount> original)
    {
        var state = base.DecorateScanState(original);
  
        if (state is WMSBase.LotSerialState lotSerialState)
            InjectLotSerialDeactivationOnNonEnterableLotSerials(lotSerialState);
  
        return state;
    }
  
    protected virtual void InjectLotSerialDeactivationOnNonEnterableLotSerials(
        WMSBase.LotSerialState lotSerialState)
    {
        lotSerialState
            .Intercept.IsStateActive.ByConjoin(
                basis => basis.LotSerialTrack.IsEnterable);
    } 
    ...
}
```

In this code, you will intercept the IsStateActive method and use the ByConjoin interception strategy.

**Parent topic:**[Extending Scan Components](../DeveloperGuide/WMSEngine_ExtendedComponent_Mapref.md)

