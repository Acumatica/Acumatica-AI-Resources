# Barcode Scan Mode: To Define the Required Properties {#_365ee72f-d2f0-42fb-bdbb-315158ee5693 .task}

This activity will walk you through the implementation of the required properties of a scan mode.

## Story { .section}

Suppose that you are creating a custom barcode-driven form. You have defined a barcode scan class for this form and created an instance of the descendant of the ScanMode class in the implementation of the CreateScanModes\(\) method. Now you need to define this descendant itself. You also need to define the constants for the values of the required properties of the scan mode and add these properties.

## Process Overview { .section}

You will define the class for the scan mode and define its required properties. For the Code property, you will provide both the `string` and the BQL constant. For the Description property, you will use a localizable message.

## System Preparation { .section}

Before you begin creating a scan mode, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Create a barcode scan class by performing the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.

## Step: Defining the Required Properties of the Scan Mode { .section}

To define the required properties of the scan mode, do the following:

1.  In the `INScanCount` class, define the class for the scan mode, as shown in the following code.

    ```
    public class INScanCount : WMSBase
    {
        ...
    
        public sealed class CountMode : ScanMode
        {
        }
    }
    ```

2.  In the `INScanCount.cs` file, add the `using` directives shown in the following code.

    ```
    using PX.Common;
    using PX.Data.BQL;
    ```

3.  Define the `string` constant and the BQL constant for the scan mode identifier, as shown below.

    ```
    public class INScanCount : WMSBase
    {
        ...
    
        public sealed class CountMode : ScanMode
        {
            public const string Value = "INCO";
            public class value : BqlString.Constant<value> 
            { 
                public value() : base(CountMode.Value) { } 
            }
    
            public override string Code => Value;
        }
    }
    ```

4.  Define the localizable message for the name of the scan mode, as shown in the following code.

    ```
    public class INScanCount : WMSBase
    {
        ...
    
        public sealed class CountMode : ScanMode
        {
            ...
            public override string Description => Msg.Description;
    
            [PXLocalizable]
            new public abstract class Msg 
            {
                public const string Description = "Scan and Count";
            }
        }
    }
    ```


**Parent topic:**[Creating a Barcode Scan Mode](../DeveloperGuide/WMSEngine_ScanMode_Mapref.md)

