# Composite Workflow States: To Update a Composite State {#_498d11c5-ae85-415e-9b16-92318ed1e586 .concept}

This activity will walk you through the process of adding a nested workflow state to a composite state of a predefined workflow.

## Story { .section}

Suppose that you need to implement the following behavior on the [Invoices](../Shared/../UserGuide/SO_30_30_00.md) \(SO303000\) form:

-   If a user specifies a discount for an invoice, you want this invoice to be reviewed and the discount to be approved before the user can proceed with processing the invoice. The invoice with the discount on review should have the *Postponed* status. After the discount is approved, the system specifies the business date in the **Cash Discount Date** box.
-   If the user does not specify any discount, the invoice does not obtain the *Postponed* status.

On the [Invoices](../Shared/../UserGuide/SO_30_30_00.md) \(SO303000\) form, the default workflow includes a composite workflow state with multiple nested workflow states. To implement the described behavior, you need to add a new workflow state, `Postponed`, to the composite state after the workflow state that corresponds to the *Credit Hold* status of an invoice.

You also need to specify a skip condition for the new workflow state and add a transition from this workflow state to the next state in the workflow. The skip condition will check for no cash discount being applied to the invoice.

## Process Overview { .section}

In the extension of the predefined workflow for the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, you will implement an action \(and the corresponding button on the form toolbar and command on the More menu\) that will trigger a transition from the new state. You will also add a nested workflow state, specify a condition that the system will use to skip this state, and then add a transition from this state to the next nested workflow state.

## System Preparation { .section}

Make sure that you have done the following:

1.  Prepared an instance with the *PhoneRepairShop* customization project and enabled the workflow validation by performing the following activities:
    1.  [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md)
    2.  [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md)
2.  Prepared the screen configuration and defined the set of workflow states by performing the [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md) activity.
3.  Created an extension of the predefined workflow for the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, as described in the [Workflow Customization: To Add an Action to an Existing Workflow](WorkflowAPI_CustomizingExistingWorkflow_Activity_AddAction.md) prerequisite activity.

-   **[Step 1: Investigating the Source Code](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence_InvestigateCode.md)**  

-   **[Step 2: Extending the ARDocStatus class](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence_ExtendARDocStatus.md)**  

-   **[Step 3: Adding the ApproveDiscount Action](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence_AddAction.md)**  

-   **[Step 4: Adding the Skip Condition](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence_AddCondition.md)**  

-   **[Step 5: Adding the Postponed Workflow State to the Composite State](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence_AddNestedState.md)**  

-   **[Step 6: Adding the Transition](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence_AddTransition.md)**  

-   **[Step 7: Testing the Transition](../DeveloperGuide/WorkflowAPI_Sequences_Activity_UpdateSequence_Test.md)**  


**Parent topic:**[Implementing Composite States](../DeveloperGuide/WorkflowAPI_Sequences_Mapref.md)

