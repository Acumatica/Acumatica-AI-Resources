# Custom Barcode-Driven Form: General Information {#_860d04a3-a388-46ca-9f83-42074ba65908 .concept}

A user interacts with a barcode-driven form mostly via text commands that the user enters or scans into a special field of the form. The form guides the user through a certain input route by showing different input prompts.

## Learning Objectives { .section}

In this chapter, you will learn how to create a custom barcode-driven form.

## Applicable Scenarios { .section}

You create a custom barcode-driven form when you need to simplify the work with the form to the level of sequential text inputs.

## Creation of a Custom Barcode-Driven Form { .section}

When you create a custom barcode-driven form, you perform the following steps:

1.  Add a barcode scan class and implement its functionality, as demonstrated in [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md).
2.  Create a scan mode and implement its required properties, as illustrated in [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md).
3.  To define the scan mode, do the following:
    1.  Define the list of scan states for the scan mode, as demonstrated in [Barcode Scan States: To Create the Set of Scan States](WMSEngine_ScanState_Activity_CreateSetOfStates.md).
    2.  Define transition rules, as shown in [Barcode Scan Transitions: To Implement Transitions](WMSEngine_ScanTransition_Activity.md).
    3.  Define the list of commands, as illustrated in [Barcode Scan Commands: To Define the List of Commands](WMSEngine_Command_Activity.md).
    4.  Define the list of mode redirects, as shown in [Scan Mode Redirects: To Define the List of Redirects](WMSEngine_Redirect_Activity.md).
    5.  Define the resetting logic of the scan mode, as illustrated in [Reset of Barcode Scan Mode: To Define the Resetting Logic](WMSEngine_ScanMode_Activity_DefineResettingLogic.md).
4.  Implement scan states as follows:
    1.  Create an input state, as shown in [Barcode Scan States: To Create the Input State](WMSEngine_ScanState_Activity_CreateInputState.md).
    2.  Create a confirmation state, as described in [Barcode Scan States: To Create the Confirmation State](WMSEngine_ScanState_Activity_CreateConfirmationState.md).
    3.  Alter the predefined scan states, as shown in [Extension of Scan Components: To Extend Predefined Scan States for a Custom Form](WMSEngine_ExtendedComponent_Activity_NewScanStates.md).
5.  Implement scan commands by doing the following:
    1.  Define custom commands, as described in [Barcode Scan Commands: To Add Quantity Support](WMSEngine_Command_Activity_AddQuantitySupport.md).
    2.  If you want to add logic that handles quantity input, add quantity support command, as specified in [Barcode Scan Commands: To Add Quantity Support](WMSEngine_Command_Activity_AddQuantitySupport.md).
6.  Add an ASPX page, as shown in [Custom Barcode-Driven Form: To Create an ASPX Page](WMSEngine_CustomForm_Activity_CreateASPXPage.md).

## ASPX Page of the Form { .section}

In the ASPX code of the page, you need to include the following required parts:

-   The script that causes focus to be kept on the `Barcode` field's control
-   The script that plays the sound that corresponds to the message type of the barcode-driven engine
-   The PXDataSource control that binds to the host graph of the barcode scan class, but not to the barcode scan class itself

**Parent topic:**[Creating a Custom Barcode-Driven Form](../DeveloperGuide/WMSEngine_CustomForm_Mapref.md)

