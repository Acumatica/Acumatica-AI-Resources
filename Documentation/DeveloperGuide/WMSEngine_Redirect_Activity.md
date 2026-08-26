# Scan Mode Redirects: To Define the List of Redirects {#_58f03e49-7db5-4c77-bd8b-9e32d018021d .task}

This activity will walk you through the process of defining the list of mode redirects.

## Story { .section}

Suppose that you are creating a custom scan mode for a barcode-driven form. You need to define the default set of redirects for the form. You also need to define the redirect class for the custom mode so that redirects to this mode can be performed from other barcode-driven forms.

## Process Overview { .section}

You will use the AllWMSRedirects.CreateFor&lt;TScanBasis&gt;\(\) method to specify the default set of mode redirects for the form.

You will also define the redirect class. In this class, you will specify the Code property and the DisplayName property.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Create a barcode scan class by performing the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.
3.  Create the scan mode and define its required properties by performing the [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md) prerequisite activity.

## Step 1: Defining the Default Set of Mode Redirects { .section}

To define the default list of redirects, in the `CountMode` class, add the following code.

```
public sealed class CountMode : ScanMode
{
    ...
  
    protected override IEnumerable<ScanRedirect<INScanCount>> CreateRedirects()
    {
        return AllWMSRedirects.CreateFor<INScanCount>();
    }
  
    ...
}
```

## Step 2: Adding the Redirect Class for the Mode { .section}

Add the redirect class as follows:

1.  In the `INScanCount` class, define the redirect class, as shown in the following code.

    ```
    public class INScanCount : WMSBase
    {
        ...
    
        public new sealed class RedirectFrom<TForeignBasis> : 
            WMSBase.RedirectFrom<TForeignBasis> 
            where TForeignBasis : PXGraphExtension, IBarcodeDrivenStateMachine
        {
        }
    }
    ```

2.  Define the localizable message for the name of the mode redirect, as shown in the following code.

    ```
    public new sealed class RedirectFrom<TForeignBasis> : 
        WMSBase.RedirectFrom<TForeignBasis> 
        where TForeignBasis : PXGraphExtension, IBarcodeDrivenStateMachine
    {
        [PXLocalizable]
        public abstract class Msg 
        {
            public const string DisplayName = "PI Count";
        }
    } 
    ```

3.  Define the redirect identifier and the display name of the button that is generated for this redirect, as shown below.

    ```
    public class INScanCount : WMSBase
    {
        ...
      
        public new sealed class RedirectFrom<TForeignBasis> : 
            WMSBase.RedirectFrom<TForeignBasis>
            where TForeignBasis : PXGraphExtension, IBarcodeDrivenStateMachine
        {
            public override string Code => "COUNT";
            public override string DisplayName => Msg.DisplayName; 
     
            ...
        } 
    }
    ```

4.  Specify whether it is possible to scan the redirect code as follows.

    ```
    public new sealed class RedirectFrom<TForeignBasis> : 
        WMSBase.RedirectFrom<TForeignBasis> 
        where TForeignBasis : PXGraphExtension, IBarcodeDrivenStateMachine
    {
        ... 
        public override bool IsPossible => 
            PXAccess.FeatureInstalled<PX.Objects.CS.FeaturesSet.wMSInventory>();  
        ...
    } 
    ```


**Parent topic:**[Defining the Set of Scan Mode Redirects](../DeveloperGuide/WMSEngine_Redirect_Mapref.md)

