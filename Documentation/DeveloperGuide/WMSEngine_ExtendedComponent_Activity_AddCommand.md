# Extension of Scan Components: To Add a New Scan Command for an Existing Form {#_9558f37f-1dd2-4bbb-bcae-a005ce42139b .task}

This activity will walk you through the implementation of a new scan command for an existing Acumatica ERP form.

## Story { .section}

Suppose that you need to add the ability to cancel physical inventory count on the [Scan and Count](../UserGuide/IN_30_50_20.md) \(IN305020\) form.

## Process Overview { .section}

You will add an additional scan command component. For details about the implementation of scan commands, see [Barcode Scan Commands: General Information](WMSEngine_Command_GeneralInfo.md). You will then override the DecorateScanMode method by using the PXOverride attribute, and in this method, you will intercept the CreateCommands method. You will use the ByAppend override strategy, which does not affect the original component.

## System Preparation { .section}

Before you begin performing the step of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Enable the following features on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, where they are in the *Inventory and Order Management* group of features:
    -   *Multiple Warehouse Locations*
    -   *Warehouse Management*
    -   *Fulfillment*
    -   *Inventory Operations*

## Step: Adding a Scan Command { .section}

To a scan command, do the following:

1.  In the `PhoneRepairShop_Code` Visual Studio project, add a reference to the `PX.BarcodeProcessing.dll` file.
2.  Create the `CancelPIAbility` class, and make it `public`.
3.  Add the `using` directives shown in the following code to the file.

    ```
    using System;
    using PX.Data;
    using PX.BarcodeProcessing;
    using PX.Common;
    using PX.Objects.IN;
    using PX.Objects.IN.WMS;
    ```

4.  Make the class an extension of the PX.Objects.IN.WMS.INScanCount scan mode class.

    ```
    public class CancelPIAbility : INScanCount.ScanExtension 
    {
    }
    ```

5.  Define a ScanCommand component, and implement its members.

    ```
    public class CancelPIAbility : INScanCount.ScanExtension
    {
        public sealed class CancelPICommand : INScanCount.ScanCommand
        {
            // The code to be scanned to execute the command
            public override string Code => "CANCEL*PI";
            // The name of the PXAction instance that is created for the command
            public override string ButtonName => "ScanCancelPI";
            // The display name of the button for the PXAction instance that is created for the command
            public override string DisplayName => Msg.DisplayName;
            // The Boolean value that indicates when the command can be executed
            protected override bool IsEnabled => Basis.DocumentIsEditable;
    
            // The logic that is executed for the command
            protected override bool Process() 
            {
                var countReview = PXGraph.CreateInstance<INPIReview>();
                countReview.PIHeader.Current = countReview.PIHeader.Search<INPIHeader.pIID>(Basis.Document.PIID);
                countReview.cancelPI.Press();
    
                // Clear the screen
                Basis.CurrentMode.Reset(fullReset: true);
                // Inform the user
                Basis.ReportInfo(Msg.Success); 
    
                return true; 
            }
    
            [PXLocalizable]
            public abstract class Msg
            {
                public const string DisplayName = "Cancel Count";
                public const string Success = "Physical inventory count has been canceled.";
            }
        }
    }
    ```

6.  In the `CancelPIAbility` class, override the DecorateScanMode method.

    ```
    public class CancelPIAbility : INScanCount.ScanExtension
    {
        /// Overrides <seealso cref="INScanCount.ScanExtension.DecorateScanMode(ScanMode{INScanCount})"/>
        [PXOverride]
        public virtual ScanMode<INScanCount> DecorateScanMode(
            ScanMode<INScanCount> original, 
            Func<ScanMode<INScanCount>, ScanMode<INScanCount>> base_DecorateScanMode)
        {
            return base_DecorateScanMode(original);
        }
      
        ...
    }
    ```

7.  Search for the mode you are looking for, and patch its `CreateCommands` method via the interception functionality.

    ```
    public class CancelPIAbility : INScanCount.ScanExtension
    {
        /// Overrides <seealso cref="INScanCount.ScanExtension.DecorateScanMode(ScanMode{INScanCount})"/>
        [PXOverride]
        public virtual ScanMode<INScanCount> DecorateScanMode(
            ScanMode<INScanCount> original,
            Func<ScanMode<INScanCount>, ScanMode<INScanCount>> base_DecorateScanMode)
        {
            var mode = base_DecorateScanMode(original);
    
            if (mode is INScanCount.CountMode countMode)
            {
                countMode
                    .Intercept.CreateCommands.ByAppend(() =>
                    {
                        // Though you have only one new command to append, you must wrap it in an array.
                        return new[] { new CancelPICommand() }; 
                });
            }
    
            return mode;
        }
      
        ...
    }
    ```

8.  Optional: Extract the exact patching logic to a separate virtual method of the extension so that you can suppress this patch in the future.

    ```
    public class CancelPIAbility : INScanCount.ScanExtension
    {
        /// Overrides <seealso cref="INScanCount.ScanExtension.DecorateScanMode(ScanMode{INScanCount})"/>
        [PXOverride]
        public virtual ScanMode<INScanCount> DecorateScanMode(
            ScanMode<INScanCount> original,
            Func<ScanMode<INScanCount>, ScanMode<INScanCount>> base_DecorateScanMode)
        {
            var mode = base_DecorateScanMode(original); 
            if (mode is INScanCount.CountMode countMode)
                PatchCountMode(countMode);  
            return mode;
        }
      
        protected virtual void PatchCountMode(INScanCount.CountMode countMode)
        {
            countMode
                .Intercept.CreateCommands.ByAppend(() =>
                {
                    return new[] { new CancelPICommand() };
                });
        }
      
        ...
    }
    ```

9.  Fix or suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error that is displayed by Acuminator.
10. Build the project, and test the new command on the [Scan and Count](../UserGuide/IN_30_50_20.md) \(IN305020\) form.

**Parent topic:**[Extending Scan Components](../DeveloperGuide/WMSEngine_ExtendedComponent_Mapref.md)

