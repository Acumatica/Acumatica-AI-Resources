# Extension of Scan Components: To Implement Additional Entity Validation {#_b846cfaa-87e5-4435-8a61-fd35de9468c2 .task}

This activity will walk you through the implementation of additional entity validation.

## Story { .section}

Suppose that you need to forbid the receipt of items whose country of origin is Antarctica on the [Receive and Put Away](../UserGuide/PO_30_20_20.md) \(PO302020\) form.

## Process Overview { .section}

You will override the DecorateScanState method by using the PXOverride attribute, and in this method, you will intercept the Validation method. You need to add a validation method after all the already existing ones. Therefore, you will intercept the Validation method by using the ByAppend strategy.

## System Preparation { .section}

Before you begin performing the step of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Enable the following features on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, where they are in the *Inventory and Order Management* group of features:
    -   *Multiple Warehouse Locations*
    -   *Warehouse Management*
    -   *Receiving*

## Step: Implementing Additional Entity Validation { .section}

To implement additional entity validation, do the following:

1.  In the `PhoneRepairShop_Code` Visual Studio project, add a reference to the `PX.BarcodeProcessing.dll` file.
2.  Create the `BoycottAntarcticaItems` class, and make it `public`.
3.  Add the `using` directives shown in the following code to the file.

    ```
    using System;
    using PX.Data;
    using PX.BarcodeProcessing;
    using PX.Common;
    using PX.Objects.PO.WMS;
    ```

4.  Make the class an extension of the PX.Objects.PO.WMS.ReceivePutAway class.

    ```
    public class BoycottAntarcticaItems : ReceivePutAway.ScanExtension 
    {
    }
    ```

5.  Override the DecorateScanState method.

    ```
    public class BoycottAntarcticaItems : ReceivePutAway.ScanExtension
    {
        /// Overrides <seealso cref="ReceivePutAway.ScanExtension.DecorateScanState(ScanState{ReceivePutAway})"/>
        [PXOverride]
        public virtual ScanState<ReceivePutAway> DecorateScanState(
            ScanState<ReceivePutAway> original,
            Func<ScanState<ReceivePutAway>, ScanState<ReceivePutAway>> base_DecorateScanState)
        {
            return base_DecorateScanState(original);
        }
    }
    ```

6.  Patch the logic of the component by using the interceptor functionality.

    ```
    public class BoycottAntarcticaItems : ReceivePutAway.ScanExtension
    {
        /// Overrides <seealso cref="ReceivePutAway.ScanExtension.DecorateScanState(ScanState{ReceivePutAway})"/>
        [PXOverride]
        public virtual ScanState<ReceivePutAway> DecorateScanState(
            ScanState<ReceivePutAway> original,
            Func<ScanState<ReceivePutAway>, 
                ScanState<ReceivePutAway>> base_DecorateScanState)
        {
            var state = base_DecorateScanState(original);
    
            if (state is ReceivePutAway.InventoryItemState itemState && 
                itemState.ModeCode == ReceivePutAway.ReceiveMode.Value)
            {
                itemState
                    .Intercept.Validate.ByAppend((basis, item) =>
                    {
                        (var xref, var inventory) = item; 
                    if (inventory.CountryOfOrigin == "AQ")
                            return Validation.Fail(Msg.CannotReceiveItem, 
                                inventory.InventoryCD);
    
                        return Validation.Ok;
                    });
            }
    
            return state;
        }
    
        [PXLocalizable]
        public abstract class Msg 
        {
            public const string CannotReceiveItem = 
                "The {0} item cannot be received.";
        }
    }
    ```

7.  Optional: Extract the exact patching logic to a separate virtual method of the extension so that you can suppress this patch in the future.

    ```
    public class BoycottAntarcticaItems : ReceivePutAway.ScanExtension
    {
        /// Overrides <seealso cref="ReceivePutAway.ScanExtension.DecorateScanState(ScanState{ReceivePutAway})"/>
        [PXOverride]
        public virtual ScanState<ReceivePutAway> DecorateScanState(
            ScanState<ReceivePutAway> original,
            Func<ScanState<ReceivePutAway>, 
                ScanState<ReceivePutAway>> base_DecorateScanState)
        {
            var state = base_DecorateScanState(original);
    
            if (state is ReceivePutAway.InventoryItemState itemState 
                && itemState.ModeCode == ReceivePutAway.ReceiveMode.Value)
                PatchInventoryItemStateInReceiveMode(itemState); 
    
            return state;
        }
    
        protected virtual void PatchInventoryItemStateInReceiveMode(
            ReceivePutAway.InventoryItemState itemState)
        {
            itemState
                .Intercept.Validate.ByAppend((basis, item) =>
                {
                    (var xref, var inventory) = item;
                    if (inventory.CountryOfOrigin == "AQ")
                        return Validation.Fail(Msg.CannotReceiveItem, 
                            inventory.InventoryCD);
    
                    return Validation.Ok;
                });
        }
    
        [PXLocalizable]
        public abstract class Msg
        {
            public const string CannotReceiveItem = 
                "The {0} item cannot be received.";
        }
    }
    ```

8.  Fix or suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error that is displayed by Acuminator.
9.  Build the project, and test the custom behavior on the [Receive and Put Away](../UserGuide/PO_30_20_20.md) \(PO302020\) form.

**Parent topic:**[Extending Scan Components](../DeveloperGuide/WMSEngine_ExtendedComponent_Mapref.md)

