# Barcode Scan States: To Create the Set of Scan States {#_94f20d8a-85d8-46ad-ba89-8f7cd287723c .task}

This activity will walk you through the creation of the set of barcode scan states.

## Story { .section}

Suppose that you are implementing a scan mode for a custom barcode-driven form. The barcode scan class of this form uses the WarehouseManagementSystem&lt;TSelf,TGraph&gt; base scan class.

You need to define two new scan states for this scan mode: one input state and one confirmation state. Three other input states will be inherited from the base scan class.

## Process Overview { .section}

You will create particular instances of the ScanState&lt;TScanState&gt; class in the ScanMode&lt;TScanBasis&gt;.CreateStates\(\) method.

**Tip:** You will define the classes for scan states in the following activities: [Barcode Scan States: To Create the Input State](WMSEngine_ScanState_Activity_CreateInputState.md), [Barcode Scan States: To Create the Confirmation State](WMSEngine_ScanState_Activity_CreateConfirmationState.md), and [Extension of Scan Components: To Extend Predefined Scan States for a Custom Form](WMSEngine_ExtendedComponent_Activity_NewScanStates.md).

## System Preparation { .section}

Before you begin performing the step of this activity, do the following:

1.  Prepare an Acumatica ERP instance as described in the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Create a barcode scan class as described in the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.
3.  Define the required properties of the scan mode as described in the [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md) prerequisite activity.

## Step: Defining the Set of Scan States { .section}

To create the set of scan states, in the scan mode class, add the following code.

```
public sealed class CountMode : ScanMode
{
    ...
  
    protected override IEnumerable<ScanState<INScanCount>> CreateStates()
    {
        yield return new RefNbrState(); // new state introduced in the CountMode
        yield return new LocationState(); // state inherited from WMSBase
        yield return new InventoryItemState(); // state inherited from WMSBase
        yield return new LotSerialState(); // state inherited from WMSBase
        yield return new ConfirmState(); // new state introduced in the CountMode
    } 
  
    ...
}
```

**Parent topic:**[Implementing Barcode Scan States](../DeveloperGuide/WMSEngine_ScanState_Mapref.md)

