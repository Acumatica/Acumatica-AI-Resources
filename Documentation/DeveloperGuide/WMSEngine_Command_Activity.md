# Barcode Scan Commands: To Define the List of Commands {#_3ebb228f-ae89-489d-8890-d7095e04b73c .task}

This activity will walk you through the process of defining the list of commands that are available in a scan mode.

## Story { .section}

Suppose that you are creating a custom scan mode for a barcode-driven form. You need to define two new scan commands for this scan mode. One command, `RemoveCommand`, will be inherited from the base barcode scan class, which is the `WMSBase` class. The other, `ConfirmCommand`, will be introduced in this scan mode. In this activity, you will define the list of commands.

**Tip:** You will define the `ConfirmCommand` class in [Barcode Scan Commands: To Implement a Custom Command](WMSEngine_Command_Activity_DefineCustomCommand.md).

## Process Overview { .section}

You will create particular instances of scan commands in the `ScanMode<TScanBasis>.CreateCommands()` method.

## System Preparation { .section}

Before you begin performing the step of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Create a barcode scan class by performing the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.
3.  Create the scan mode and define its required properties by performing the [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md) prerequisite activity.

## Step: Defining the List of Commands { .section}

To define the list of commands, in the scan mode class, add the following code.

```
public sealed class CountMode : ScanMode
{
    ...
  
    protected override IEnumerable<ScanCommand<INScanCount>> CreateCommands()
    {
        yield return new RemoveCommand(); 
        yield return new ConfirmCommand(); 
    }
  
    ...
}
```

**Parent topic:**[Defining the List of Barcode Scan Commands](../DeveloperGuide/WMSEngine_Command_Mapref.md)

