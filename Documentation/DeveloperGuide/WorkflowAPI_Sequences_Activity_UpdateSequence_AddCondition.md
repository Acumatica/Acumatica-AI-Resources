# Step 4: Adding the Skip Condition {#_81fbec2e-aef1-471f-b429-ae412cad4aec .concept}

The `Postponed` workflow state should be skipped if no discount is being applied to the invoice—that is, if the **Document Discounts** box is *0.0* on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. In this step, you will define this condition by doing the following:

1.  On the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, learn the field name of the **Document Discounts** box by using the [Element Inspector](../UserGuide/AU_ElementInspector.md) tool. The field name is `CuryDiscTot`. The field is defined in the `ARInvoice` DAC.
2.  In the `SOInvoiceRepairOrder_Workflow` class, define the condition, as the following code shows.

    ```language-csharp
            #region Conditions
            public class Conditions : Condition.Pack
            {
                public Condition DiscountEmpty => GetOrCreate(condition =>
                  condition.FromBql<ARInvoice.curyDiscTot.IsEqual<decimal0>>());
            }
            #endregion
    ```

3.  Add the necessary using directive, as the following code shows.

    ```language-csharp
    using static PX.Data.WorkflowAPI.BoundedTo<PX.Objects.SO.SOInvoiceEntry,
      PX.Objects.AR.ARInvoice>;
    using PX.Objects.CS;
    ```

4.  Create an instance of the `Conditions` class in the static Configure method, as the following code shows.

    ```language-csharp
                var conditions = context.Conditions.GetPack<Conditions>();
    ```

5.  Save your changes.

**Parent topic:**[Composite Workflow States: To Update a Composite State](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence.md)

