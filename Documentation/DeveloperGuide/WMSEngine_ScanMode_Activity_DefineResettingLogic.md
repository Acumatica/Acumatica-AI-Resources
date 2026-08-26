# Reset of Barcode Scan Mode: To Define the Resetting Logic {#_a3665b34-aaa6-4d71-b023-32eab8d16303 .task}

This activity will walk you through the resetting of the scan mode logic.

## Story { .section}

Suppose that you are creating a custom barcode-driven form. You have defined a barcode scan class for this form and implemented the scan mode, including its required properties and its states, which are `LotSerialState`, `InventoryItemState`, `LocationState`, and `RefNbrState`. Now you need to define how the scan mode is cleared.

You want `LotSerialState` and `InventoryItemState` to be cleared with a soft reset every time the cycle ends because neither of these states should store its data in memory between cycles. \(Each cycle demands the entry of the inventory ID and the lot or serial number.\)

`LocationState` should be cleared only on a hard reset—that is, on mode changes and when a user clicks the **Reset** button on the form toolbar—because the user does not enter a location on every cycle. \(The location is stored in memory between cycles. Therefore, the location ID is optional if it was already entered.\)

You don't want to clear the current document's number, even when a user clicks the **Reset** button, because the document defines the flow itself.

## Process Overview { .section}

You will override the ScanMode.ResetMode\(\) method. In the method, you will define the clearing condition for each state of the mode. To define the clearing condition, you will use the `when` pattern instead of the `if` pattern.

## System Preparation { .section}

Before you begin creating a scan mode, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Create a barcode scan class by performing the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.
3.  Define the required properties of the scan mode by performing the [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md) prerequisite activity.
4.  Define the input states of the scan mode by performing the [Barcode Scan States: To Create the Input State](WMSEngine_ScanState_Activity_CreateInputState.md) and [Extension of Scan Components: To Extend Predefined Scan States for a Custom Form](WMSEngine_ExtendedComponent_Activity_NewScanStates.md) prerequisite activities.

## Step: Defining the Resetting Logic { .section}

In the `CountMode` class, define how the mode should be cleared as follows:

```
public sealed class CountMode : ScanMode
{
    ...
  
    protected override void ResetMode(bool fullReset)
    {
        Clear<RefNbrState>(when: fullReset && !Basis.IsWithinReset); 
        Clear<LocationState>(when: fullReset);
        Clear<InventoryItemState>();
        Clear<LotSerialState>();
    }
  
    ...
}
```

**Parent topic:**[Resetting a Barcode Scan Mode](../DeveloperGuide/WMSEngine_ModeReset_Mapref.md)

