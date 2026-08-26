# Step 2: Extending the ARDocStatus class {#_de34cbf0-2d59-4800-a4e1-b828947c0d3d .concept}

Before you add the `Postponed` state to the workflow, you need to add a string constant and class to the extension of the ARDocStatus class. You also need to add a corresponding value to the field that holds the record's status on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. Do the following:

1.  In the `SOInvoiceRepairOrder_Workflow.cs` file, extend the ARDocStatus class by adding the following code.

    ```language-csharp
        public class ARDocStatus_Postponed : ARDocStatus
        {
            public const string Postponed = "O";
            public class postponed : BqlType<IBqlString, string>.Constant<postponed>
            {
                public postponed()
                    : base("O")
                {
                }
            }
        }
    ```

2.  Add a combo box value to the **Status** box on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form by calling the WithFieldStates method in the lambda expression for the UpdateScreenConfigurationFor method, as the following code shows.

    ```language-csharp
                    .WithFieldStates(fs =>
                    {
                        fs.Add<ARInvoice.status>(state =>
                            state.SetComboValue(ARDocStatus_Postponed
                              .Postponed, "Postponed"));
                    })
    ```

3.  Save your changes.

**Parent topic:**[Composite Workflow States: To Update a Composite State](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence.md)

