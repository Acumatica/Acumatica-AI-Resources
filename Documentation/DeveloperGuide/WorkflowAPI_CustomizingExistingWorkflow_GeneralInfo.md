# Workflow Customization: General Information {#_1916104f-2406-4f70-a26a-ef862e03e058 .concept}

By using Workflow API, you can not only create your own workflows but also customize workflows defined in the source code of Acumatica ERP. Workflow API provides a set of methods to update and remove workflows and elements of a workflow, such as states and transitions.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Customize an existing workflow
-   Add a new action to the workflow
-   Define a new category in the workflow

## Applicable Scenarios { .section}

You customize an existing workflow when you need to modify a workflow defined for an Acumatica ERP form.

## Customization of Existing Workflows { .section}

You use the Add methods to add actions, states, transitions, and other elements of the screen configuration to the workflow. For each of these Add methods, Workflow API provides the Update method for updating the element and the Delete method for deleting the element from the workflow.

To define a new screen configuration and workflow, you use the AddScreenConfigurationFor and AddDefaultFlow methods to add a workflow to a form. Similarly, for the AddScreenConfigurationFor and AddDefaultFlow methods, Workflow API provides the UpdateScreenConfigurationFor and UpdateDefaultFlow methods, which allow you to update the existing screen configuration and the existing default workflow, respectively. To access the elements of the screen configuration, you use the same methods as the methods that you use while adding the workflow, such as WithFlowStates, WithActions, and WithTransitions.

An example of an updated workflow is shown in the following code.

```language-csharp
context.UpdateScreenConfigurationFor(screen =>
{
  return screen
    .UpdateDefaultFlow(InjectApprovalWorkflow)
    .WithActions(actions =>
    {
      actions.Add(approve);
      actions.Add(reject);
      actions.Update(
        graph => graph.putOnHold,
          action => action.WithFieldAssignments(fields =>
          {
            fields.Add<ARRegister.approved>(field => field.SetFromValue(false));
            fields.Add<ARRegister.rejected>(field => field.SetFromValue(false));
          }));
      actions.Update(
        graph => graph.releaseFromCreditHold,
        action => (BoundedTo<ARInvoiceEntry, ARInvoice>.
          ActionDefinition.ConfiguratorAction)action
          .InFolder(approvalCategory, reject));
    });
});
```

**Parent topic:**[Customizing a Predefined Workflow](../DeveloperGuide/WorkflowAPI_CustomizingExistingWorkflow_Mapref.md)

