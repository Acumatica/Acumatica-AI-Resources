# Extension of Scan Components: To Add an Alternate Way to Search for Entities {#_dbeb994f-7f90-4d61-9221-fc4129492f3d .task}

This activity will walk you through the implementation of an alternate way to search for entities.

## Story { .section}

Suppose that on the [Receive and Put Away](../UserGuide/PO_30_20_20.md) \(PO302020\) form, you need to be able to search purchase receipts by their date because you have only one unreleased purchase receipt per day.

## Process Overview { .section}

You will override the DecorateScanState method by using the PXOverride attribute, and in this method, you will intercept the HandleAbsence method by using the ByAppend strategy. You will not override the GetByBarcode method, but instead will override the HandleAbsence method because it contains the logic of entity searching if the entity has not been found by the GetByBarcode method.

## System Preparation { .section}

Before you begin performing the step of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Enable the following features on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, where they are in the *Inventory and Order Management* group of features:
    -   *Multiple Warehouse Locations*
    -   *Warehouse Management*
    -   *Receiving*

## Step: Adding an Alternate Way to Search for Entities { .section}

To add another way to search for entities, do the following:

1.  In the `PhoneRepairShop_Code` Visual Studio project, add a reference to the `PX.BarcodeProcessing.dll` file.
2.  Create the `SearchReceiptsByDate` class, and make it `public`.
3.  Add the `using` directives shown in the following code to the file.

    ```
    using System;
    using PX.Data;
    using PX.BarcodeProcessing;
    using PX.Objects.PO.WMS;
    using PX.Objects.PO;
    using PX.Data.BQL.Fluent;
    using PX.Objects.AP;
    using PX.Data.BQL;
    ```

4.  Make the class an extension of the PX.Objects.PO.WMS.ReceivePutAway class.

    ```
    public class SearchReceiptsByDate : ReceivePutAway.ScanExtension 
    {
    }
    ```

5.  Override the DecorateScanState method.

    ```
    public class SearchReceiptsByDate : ReceivePutAway.ScanExtension
    {
        /// Overrides <seealso cref="ReceivePutAway.ScanExtension.DecorateScanState(ScanState{ReceivePutAway})"/>
        [PXOverride]
        public virtual ScanState<ReceivePutAway> DecorateScanState(
            ScanState<ReceivePutAway> original,
            Func<ScanState<ReceivePutAway>, 
                ScanState<ReceivePutAway>> base_DecorateScanState)
        {
            return base_DecorateScanState(original);
        }
    }
    ```

6.  Search for the receipt input state of the receive mode.

    ```
    public class SearchReceiptsByDate : ReceivePutAway.ScanExtension
    {
        /// Overrides <seealso cref="ReceivePutAway.ScanExtension.DecorateScanState(ScanState{ReceivePutAway})"/>
        [PXOverride]
        public virtual ScanState<ReceivePutAway> DecorateScanState(
            ScanState<ReceivePutAway> original,
            Func<ScanState<ReceivePutAway>, 
                ScanState<ReceivePutAway>> base_DecorateScanState)
        {
            var state = base_DecorateScanState(original);
      
            if (state is ReceivePutAway.ReceiveMode.ReceiptState receiptState)
            {
            }
     
            return state;
        }
    }
    ```

7.  Patch the logic of the component by using the interceptor functionality.

    ```
    public class SearchReceiptsByDate : ReceivePutAway.ScanExtension
    {
        /// Overrides <seealso cref="ReceivePutAway.ScanExtension.DecorateScanState(ScanState{ReceivePutAway})"/>
        [PXOverride]
        public virtual ScanState<ReceivePutAway> DecoracteScanState(
            ScanState<ReceivePutAway> original,
            Func<ScanState<ReceivePutAway>,
                ScanState<ReceivePutAway>> base_DecoracteScanState)
        {
            var state = base_DecoracteScanState(original);
    
            if (state is ReceivePutAway.ReceiveMode.ReceiptState receiptState)
            {
                receiptState
                    .Intercept.HandleAbsence.ByAppend((basis, barcode) =>
                    {
                        if (DateTime.TryParse(barcode.Trim(), out var date))
                        {
                            POReceipt receiptByDate =
                                SelectFrom<POReceipt>.
                                LeftJoin<Vendor>.On<POReceipt.vendorID.
                                    IsEqual<Vendor.bAccountID>>.SingleTableOnly.
                                Where<
                                    // The date parameter
                                    POReceipt.receiptDate.IsEqual<@P.AsDateTime>.
                                    // Other conditions are for narrowing the scope
                                    And<POReceipt.released.IsEqual<False>>.
                                    And<POReceipt.hold.IsEqual<False>>.
                                    And<POReceipt.receiptType.IsEqual<POReceiptType.poreceipt>>.
                                    And<
                                        Vendor.bAccountID.IsNull.
                                        Or<Match<Vendor, AccessInfo.userName.FromCurrent>>>>.
                                View.ReadOnly.Select(basis, date); 
    
                        if (receiptByDate != null)
                                return AbsenceHandling.ReplaceWith(receiptByDate);
                        }
    
                        return AbsenceHandling.Skipped; 
                });
            }
    
            return state;
        }
    }
    ```

8.  Optional: Extract the exact patching logic to a separate virtual method of the extension for being able to suppress this patch in the future.

    ```
    public class SearchReceiptsByDate : ReceivePutAway.ScanExtension
    {
        /// Overrides <seealso cref="ReceivePutAway.ScanExtension.DecorateScanState(ScanState{ReceivePutAway})"/>
        [PXOverride]
        public virtual ScanState<ReceivePutAway> DecorateScanState(
            ScanState<ReceivePutAway> original,
            Func<ScanState<ReceivePutAway>, 
                ScanState<ReceivePutAway>> base_DecorateScanState)
        {
            var state = base_DecorateScanState(original);
    
            if (state is ReceivePutAway.ReceiveMode.ReceiptState receiptState)
                PatchReceiptStateInReceiveMode(receiptState); 
    
            return state;
        }
    
        protected virtual void PatchReceiptStateInReceiveMode(
            ReceivePutAway.ReceiveMode.ReceiptState receiptState)
        {
            receiptState
                .Intercept.HandleAbsence.ByAppend((basis, barcode) =>
                {
                    if (DateTime.TryParse(barcode.Trim(), out var date))
                    {
                        POReceipt receiptByDate =
                            SelectFrom<POReceipt>.
                            LeftJoin<Vendor>.On<POReceipt.vendorID.
                                IsEqual<Vendor.bAccountID>>.SingleTableOnly.
                            Where<
                                POReceipt.receiptDate.IsEqual<@P.AsDateTime>.
                                And<POReceipt.receiptType.
                                    IsEqual<POReceiptType.poreceipt>>.
                                And<
                                    Vendor.bAccountID.IsNull.
                                    Or<Match<Vendor, AccessInfo.userName.FromCurrent>>>>.
                            View.ReadOnly.Select(basis, date);
    
                        if (receiptByDate != null)
                            return AbsenceHandling.ReplaceWith(receiptByDate);
                    }
    
                    return AbsenceHandling.Skipped;
            });
        }
    }
    ```

9.  Fix or suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error that is displayed by Acuminator.
10. Build the project, and test the custom behavior on the [Receive and Put Away](../UserGuide/PO_30_20_20.md) \(PO302020\) form.

**Parent topic:**[Extending Scan Components](../DeveloperGuide/WMSEngine_ExtendedComponent_Mapref.md)

