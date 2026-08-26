# Barcode Scan Transitions: To Implement Transitions {#_1da7b9a2-c368-4382-bb0a-abc99addb69f .task}

This activity will walk you through the implementation of scan transitions. This activity shows the general approach that can be used for producing a branching structure of transitions.

## Story { .section}

Suppose that you have defined the following scan states for the scan mode of a custom form:

-   `RefNbrState`
-   `LocationState`
-   `InventoryItemState`
-   `LotSerialState`
-   `ConfirmState`

You need to implement transition rules between these states as follows:

1.  From `RefNbrState` to `LocationState`
2.  From `LocationState` to `InventoryItemState`
3.  From `InventoryItemState` to `LotSerialState`

**Tip:** You will not implement the last transition, which is from `LotSerialState` to `ConfirmState`, because it is performed automatically once the system detects that there is a confirmation state and that the last input state is trying to move the barcode-driven engine further.

## Process Overview { .section}

You will use the ScanMode.Transition\(\) helper method to implement the transitions.

## System Preparation { .section}

Before you begin performing the step of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Create a barcode scan class by performing the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.
3.  Create the scan mode and define its required properties by performing the [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md) prerequisite activity.
4.  Create the set of scan states by performing the [Barcode Scan States: To Create the Set of Scan States](WMSEngine_ScanState_Activity_CreateSetOfStates.md) prerequisite activity.

## Step: Defining Transition Rules { .section}

Define scan transition rules as follows.

```
public sealed class CountMode : ScanMode
{
    ...
  
    protected override IEnumerable<ScanTransition<INScanCount>> CreateTransitions()
    {
        yield return Transition(t => t.From<RefNbrState>().To<LocationState>());
        yield return Transition(t => t.From<LocationState>().To<InventoryItemState>());
        yield return Transition(t => t.From<InventoryItemState>().To<LotSerialState>());
    }
  
    ...
}
```

**Parent topic:**[Implementing Barcode Scan Transitions](../DeveloperGuide/WMSEngine_ScanTransition_Mapref.md)

