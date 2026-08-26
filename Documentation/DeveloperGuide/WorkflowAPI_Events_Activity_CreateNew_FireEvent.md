# Step 5: Firing the Event {#_4d4b6510-b562-4cff-ba4c-87e55b3290fd .task}

As you learned in [Step 3: Exploring the Acumatica ERP Source Code](WorkflowAPI_Events_Activity_CreateNew_ExploreCode.md) of this activity, you need to override the `UpdateBalances` method to fire the event that triggers the transition from the `PendingPayment` workflow state to the `ReadyForAssignment` workflow state. However, you should first calculate the prepaid percentage value based on the values of the **Balance** and **Amount** boxes of an invoice on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. These values, which are available in an `ARRegister` record, have been calculated in the base `UpdateBalances` method.

**Tip:** You can work with the fields of the ARRegister record instead of selecting the corresponding ARInvoice record because ARRegister is the base class for the ARInvoice data access class \(DAC\) and contains the same essential fields.

The `ARRegister` record has been modified in the base method and its field values have been updated in PXCache. But the values passed as the parameter to the overridden method have not been updated. Thus, in the overridden method, you should use the cached values. To get the cached values, you need to use the `Locate(Object)` method of [PXCache&lt;TNode&gt;](https://help.acumatica.com/(W(9))/Help?ScreenId=ShowWiki&pageid=ec41a150-d69a-dbac-b18b-24b07c6d2d64).

## Firing the Workflow Event { .section}

To fire the workflow event that triggers the transition between workflow states, add the following code to the `ARReleaseProcess_Extension` class of the `PhoneRepairShop_Code` project.

```language-csharp
        public delegate void UpdateBalancesDelegate(ARAdjust adj,
            ARRegister adjddoc, ARTran adjdtran);
        /// Overrides <seealso cref="ARReleaseProcess.UpdateBalances(ARAdjust, ARRegister, ARTran)"/>
        [PXOverride]
        public virtual void UpdateBalances(ARAdjust adj,
            ARRegister adjddoc, ARTran adjdtran,
            UpdateBalancesDelegate base_UpdateBalances)
        {
            base_UpdateBalances(adj, adjddoc, adjdtran);

            ARRegister ardoc = adjddoc;
            ARRegister cached = (ARRegister)Base.ARDocument.Cache.Locate(ardoc);
            if (cached != null)
            {
                ardoc = cached;
            }

            RSSVWorkOrder order = SelectFrom<RSSVWorkOrder>.
                Where<RSSVWorkOrder.invoiceNbr.
                IsEqual<ARRegister.refNbr.FromCurrent>>
                .View.SelectSingleBound(Base, new[] { ardoc });

            if (order != null &&
                order.Status == WorkOrderStatusConstants.PendingPayment)
            {
                var payment = SelectFrom<ARPayment>.
                    Where<ARPayment.docType.
                        IsEqual<ARAdjust.adjgDocType.FromCurrent>.
                        And<ARPayment.refNbr.
                        IsEqual<ARAdjust.adjgRefNbr.FromCurrent>>>
                    .View.SelectSingleBound(Base, new[] { ardoc });

                if (payment != null)
                {
                    var paidPercent = (ardoc.CuryOrigDocAmt - ardoc.CuryDocBal) * 100
                        / ardoc.CuryOrigDocAmt;
                    var paymentExt = PXCache<ARRegister>.
                        GetExtension<ARRegisterExt>(payment);
                    if (paidPercent >= paymentExt.UsrPrepaymentPercent)
                    {
                        RSSVWorkOrder.WorkflowEvents
                          .Select(e => e.InvoiceGotPrepaid)
                          .FireOn(Base, ardoc);
                        // No need to call the Persist method.
                    }
                }
            }
        }
```

In the code above, first you have called the base method, and then you have obtained the cached values of the invoice record. You have selected the repair work order with the same invoice number as the invoice passed as a parameter. Then you have selected the prepayment and its extension \(which contains the prepayment percent\) and calculated the prepaid percentage for the invoice. If the prepaid percentage is greater than the required percentage, you have fired the `InvoiceGotPrepaid` event.

**Attention:** You should select both SO and AR payments and SO and AR invoices by using the ARPayment and ARInvoice DACs, respectively. To avoid selecting a document of the wrong type, when you select payments or invoices, you should check not only the refNbr of the document but also its docType.

At the end of the method, there is no need to call the `Persist` method, because it is called at the end of the release process.

**Parent topic:**[Workflow Events: To Create a Workflow Event](../DeveloperGuide/WorkflowAPI_Events_Activity_CreateNew.md)

