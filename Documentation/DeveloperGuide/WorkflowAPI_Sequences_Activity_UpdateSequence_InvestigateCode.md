# Step 1: Investigating the Source Code {#_676bb462-71bf-4c18-9093-17f70ee1bd81 .concept}

To begin customizing the predefined workflow, you need to investigate how the composite workflow state is defined in it. In [Step 2: Adding a Workflow Extension](WorkflowAPI_CustomizingExistingWorkflow_Activity_AddNewAction_AddWorkflowExtension.md) of the [Workflow Customization: To Add an Action to an Existing Workflow](WorkflowAPI_CustomizingExistingWorkflow_Activity_AddAction.md) activity, you learned that the workflow for the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form is defined in the `SOInvoiceEntry_Workflow` class and that the states of the workflow are defined in the ARDocStatus class.

You will investigate the source code of the `SOInvoiceEntry_Workflow` class by doing the following:

1.  In Visual Studio, in the *SmartFix\_T270* website project, go to `App_Data/CodeRepository/PX.Objects/SO/Workflow`, and open the `SOInvoiceEntry_Workflow.cs` file.
2.  In the `SOInvoiceEntry_Workflow` class, locate the `AddSequence<State.HoldToBalance>` method call. This call defines the `HoldToBalance` composite workflow state. Notice the order in which the nested workflow states are defined, and locate the `creditHold` workflow state. After the `creditHold` workflow state, you can see the `pendingPrint` workflow state, which will be the next state for the new `Postponed` state of the workflow.
3.  Go to the definition of the ARDocStatus class, and note how the workflow states are defined.
4.  For the purpose of adding a new status value, learn the name of the field that holds the status value on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form by using the [Element Inspector](../UserGuide/AU_ElementInspector.md). This field is `ARInvoice.Status`.

**Parent topic:**[Composite Workflow States: To Update a Composite State](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence.md)

