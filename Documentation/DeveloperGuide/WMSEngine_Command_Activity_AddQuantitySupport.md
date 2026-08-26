# Barcode Scan Commands: To Add Quantity Support {#_2fe7108c-3ec4-4c5b-b646-edb5a5fc7498 .task}

This activity will walk you through adding the logic that handles input of a quantity.

## Story { .section}

Suppose that you are creating a custom scan mode for a barcode-driven form. You need to add the logic that handles the input of a quantity in this scan mode. You will use the QtySupport extension defined in the WarehouseManagementSystem&lt;TSelf,TGraph&gt; class. The logic of the QtySupport extension cannot be used until you create an empty descendant for this extension class.

## Process Overview { .section}

In this activity, you will do the following:

1.  Define an empty descendant of the QtySupport extension.
2.  Override the UseQtyCorrection method of the barcode scan class.
3.  Add the QtySupport.SetQtyCommand component in the CreateCommands method.

## System Preparation { .section}

Before you begin performing the step of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Create a barcode scan class by performing the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.
3.  Create the scan mode and define its required properties by performing the [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md) prerequisite activity.
4.  Define the list of commands for the scan mode by performing the [Barcode Scan Commands: To Define the List of Commands](WMSEngine_Command_Activity.md) prerequisite activity.

## Step: Adding the Quantity Support Extension { .section}

To add the quantity support extension, do the following:

1.  In the `INScanCount` class, define an empty descendant of the QtySupport extension, as shown in the following code.

    ```
    public class INScanCount : WMSBase
    {
        ...
        public new class QtySupport : WMSBase.QtySupport { }  
        ...
    }
    ```

2.  Fix or suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error that is displayed by Acuminator for the class.
3.  In the `INScanCount` class, define the `Setup` data view, as shown in the following code.

    ```
    public class INScanCount : WMSBase
    {
        ... 
        public PXSetupOptional<INScanSetup,
            Where<INScanSetup.branchID.IsEqual<
                AccessInfo.branchID.FromCurrent>>> Setup;
        ...
    }
    ```

4.  Override the UseQtyCorrection method, as shown below.

    ```
    public class INScanCount : WMSBase
    {
        ...  
        protected override bool UseQtyCorrection => 
            Setup.Current.UseDefaultQtyInCount != true;  
        ...
    }
    ```

5.  Add the QtySupport.SetQtyCommand component to the command list as follows.

    ```
    public sealed class CountMode : ScanMode
    {
        ... 
        protected override IEnumerable<ScanCommand<INScanCount>> CreateCommands()
        {
            yield return new RemoveCommand();
            yield return new QtySupport.SetQtyCommand(); 
            yield return new ConfirmCommand();
        }  
        ...
    }
    ```


**Parent topic:**[Defining the List of Barcode Scan Commands](../DeveloperGuide/WMSEngine_Command_Mapref.md)

