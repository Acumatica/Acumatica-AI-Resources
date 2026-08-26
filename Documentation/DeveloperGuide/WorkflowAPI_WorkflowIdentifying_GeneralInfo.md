# Workflow-Identifying Fields: General Information {#_32292282-c60a-4feb-b632-4634963caca7 .concept}

You can add multiple workflows for a particular form so that each workflow is applied to all records that have a specific value in a particular field. This field is described as a *workflow-identifying field* because its value determines the workflow to be used.

## Learning Objectives { .section}

In this chapter, you will gain experience creating a workflow that is based on the specific value of a selected field.

## Applicable Scenarios { .section}

You customize a workflow with a workflow-identifying field if you need to make changes to the workflow so that it is better suited for your business processes, and you do not want to create such a workflow from scratch.

## Workflow Types {#section_vv2_1y4_y4b .section}

A form can have the following types of workflows:

-   The default workflow

    The form can have only one default workflow, which is defined with the AddDefaultFlow method. For details, see [Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](WorkflowAPI_ScreenConfig_Activity_CreateNew.md).

-   A set of workflows, which are applied depending on the value of the workflow-identifying field

    **Attention:** If you have not defined a workflow for a value of the workflow-identifying field, the system applies the default workflow for a record if this value is selected for the record.


## Definition of a Workflow-Identifying Field { .section}

You define a workflow-identifying field by specifying it in the screen configuration.

**Tip:** You can define workflow-identifying field of the first and second level. For details on defining a workflow-identifying field of the second level, see [Workflow-Identifying Fields of the Second Level: General Information](WorkflowAPI_Subflows_GeneralInfo.md).

To specify a workflow-identifying field, you call the FlowTypeIdentifierIs method in the lambda expression for the AddScreenConfigurationFor or UpdateScreenConfigurationFor method and specify a string field from the primary DAC of the form as the type parameter. An example is shown in the following code.

```language-csharp
context.AddScreenConfigurationFor(screen =>
{
  return screen
    .StateIdentifierIs<status>()
    .FlowTypeIdentifierIs<SOOrder.behavior>();
});
```

## Definition of a Workflow for the Specific Value of the Workflow-Identifying Field { .section}

To define a workflow for the specific value of the workflow-identifying field, you do the following:

1.  Inside the AddScreenConfigurationFor or UpdateScreenConfigurationFor method, you call the WithFlows method.
2.  In the WithFlows method, you call the Add method.

    As the type parameter of the Add method, you specify the value of the workflow-identifying field.

3.  Inside the Add method, you define workflow states and transitions, as described in [Defining Workflow States](WorkflowAPI_States_Mapref.md) and [Implementing Transitions](WorkflowAPI_Transitions_Mapref.md).

An example of the workflow for the specific value of the workflow-identifying field is shown in the following code.

```language-csharp
context.UpdateScreenConfigurationFor(screen => screen
  .WithFlows(flows =>
  {
    flows.Add<SOBehavior.bL>(flow => flow
      .WithFlowStates(flowStates =>
      {
        ...
      }
      .WithTransitions(transitions => 
      {
        ...
      }));
  }));
```

**Parent topic:**[Defining Workflows with a Workflow Identifying Field](../DeveloperGuide/WorkflowAPI_WorkflowIdentifying_Mapref.md)

