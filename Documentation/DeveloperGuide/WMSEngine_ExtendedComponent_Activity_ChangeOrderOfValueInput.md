# Extension of Scan Components: To Change the Order of Value Input {#_186f7370-d71e-40bf-99c4-6cf90cdcc60a .task}

This activity will walk you through changing the order of value input.

## Story { .section}

Suppose that you need to alter the default order of value input of the Pick mode of the [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) \(SO302020\) form from the one listed in the first column of the following table to the one listed in the second column.

|Initial Order|Target Order|
|-------------|------------|
|-   The reference number of the shipment
-   The location from which the item is picked
-   The item being picked
-   The lot or serial number of the item
-   The expiration date of the item

|-   The reference number of the shipment
-   The item being picked
-   The lot or serial number of the item
-   The expiration date of the item
-   The location from which the item is picked

|

## Process Overview { .section}

You will change the transition map for the Pick scan mode. To do this, you will create a scan extension for the PX.Objects.SO.WMS.PickPackShip class, override its DecorateScanMode method by using the PXOverride attribute, and intercept the CreateTransitions method in this method.

## System Preparation { .section}

Before you begin performing the step of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Enable the following features on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, where they are in the *Inventory and Order Management* group of features:
    -   *Multiple Warehouse Locations*
    -   *Warehouse Management*
    -   *Fulfillment*

## Step: Changing the Order of Value Input { .section}

To change the order of value input, do the following:

1.  In the `PhoneRepairShop_Code` Visual Studio project, add a reference to the `PX.BarcodeProcessing.dll` file.
2.  Create the `LocationGoesLastInPickMode` class, and make it `public`.
3.  Add the `using` directives shown in the following code to the file.

    ```
    using System;
    using PX.Data;
    using PX.BarcodeProcessing;
    using PX.Objects.SO.WMS;
    using PX.Objects.IN.WMS;
    ```

4.  Make the class an extension of the PX.Objects.SO.WMS.PickPackShip class.

    ```
    using WMSBase = WarehouseManagementSystem<PickPackShip, PickPackShip.Host>;
    
    public class LocationGoesLastInPickMode : PickPackShip.ScanExtension 
    {
    }
    ```

5.  Override the DecorateScanMode method.

    ```
    public class LocationGoesLastInPickMode : PickPackShip.ScanExtension
    {
        /// Overrides <seealso cref="PickPackShip.ScanExtension.DecorateScanMode(ScanMode{PickPackShip})"/>
        [PXOverride]
        public virtual ScanMode<PickPackShip> DecorateScanMode(
            ScanMode<PickPackShip> original,
            Func<ScanMode<PickPackShip>, ScanMode<PickPackShip>> base_DecorateScanMode)
        {
            return base_DecorateScanMode(original);
        }
    }
    ```

6.  Search for the mode, and patch its CreateTransitions method via interception functionality.

    ```
    public class LocationGoesLastInPickMode : PickPackShip.ScanExtension
    {
        /// Overrides <seealso cref="PickPackShip.ScanExtension.DecorateScanMode(ScanMode{PickPackShip})"/>
        [PXOverride]
        public virtual ScanMode<PickPackShip> DecorateScanMode(
            ScanMode<PickPackShip> original,
            Func<ScanMode<PickPackShip>, ScanMode<PickPackShip>> base_DecorateScanMode)
        {
            var mode = base_DecorateScanMode(original);
      
            if (mode is PickPackShip.PickMode pickMode)
            {
                pickMode
                    // Replaces the previous implementation with a new one.
                    .Intercept.CreateTransitions.ByReplace(basis =>
                    {
                        // Creates a list of sequential transitions.
                        return basis.StateFlow(flow => flow
                            .From<PickPackShip.PickMode.ShipmentState>()
                            .NextTo<WMSBase.InventoryItemState>()
                            .NextTo<WMSBase.LotSerialState>()
                            .NextTo<WMSBase.ExpireDateState>()
                            .NextTo<WMSBase.LocationState>());
                    });
            }
      
            return mode;
        }
    }
    ```

7.  Optional: Extract the exact patching logic to a separate virtual method of the extension so that you can suppress this patch in the future.

    ```
    public class LocationGoesLastInPickMode : PickPackShip.ScanExtension
    {
        /// Overrides <seealso cref="PickPackShip.ScanExtension.DecorateScanMode(ScanMode{PickPackShip})"/>
        [PXOverride]
        public virtual ScanMode<PickPackShip> DecorateScanMode(
            ScanMode<PickPackShip> original,
            Func<ScanMode<PickPackShip>, ScanMode<PickPackShip>> base_DecorateScanMode)
        {
            var mode = base_DecorateScanMode(original);
     
            if (mode is PickPackShip.PickMode pickMode)
                PatchPickMode(pickMode); 
     
            return mode;
        }
      
        protected virtual void PatchPickMode(PickPackShip.PickMode pickMode)
        {
            pickMode
                .Intercept.CreateTransitions.ByReplace(basis =>
                {
                    return basis.StateFlow(flow => flow
                        .From<PickPackShip.PickMode.ShipmentState>()
                        .NextTo<WMSBase.InventoryItemState>()
                        .NextTo<WMSBase.LotSerialState>()
                        .NextTo<WMSBase.ExpireDateState>()
                        .NextTo<WMSBase.LocationState>());
                });
        }
    }
    ```

8.  Fix or suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error that is displayed by Acuminator.
9.  Build the project, and test the new order of input on the [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) \(SO302020\) form.

**Parent topic:**[Extending Scan Components](../DeveloperGuide/WMSEngine_ExtendedComponent_Mapref.md)

