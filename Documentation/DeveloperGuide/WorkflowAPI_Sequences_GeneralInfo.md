# Composite Workflow States: General Information {#_e58a243d-e066-4ec9-bc30-48b575212286 .concept}

A composite state of a workflow, which can also be referred to as a *parent workflow state*, is a workflow state that contains an ordered sequence of nested workflow states and the transitions to and from these states. With composite workflow states, you can specify common settings \(actions, fields to be updated, and transitions\) for a group of workflow states only once—in the composite state that includes these workflow states.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Implement a composite state of a workflow
-   Define a transition for a composite state of a workflow
-   Update a composite state in a predefined workflow

## Applicable Scenarios { .section}

You implement a composite state when you have a set of workflow states with common properties and you want to simplify the process of moving an entity though all these states. For example, you may need to implement a composite state in any of the following scenario examples:

-   You need to implement a workflow with a sequence of workflow states and some of these states can be omitted for particular entities depending on conditions.
-   You need to implement a workflow in which a transition to one of the workflow states is possible from multiple workflow states and this transition is triggered by the same action.
-   You need to implement a workflow in which all transitions to one of the workflow states should specify the same value of a field \(such as *True*\), and all transitions from this workflow state should specify another same value of this field \(such as *False*\).

## Use of Composite Workflow States { .section}

For each of the workflow states inside the composite state, you can do the following:

-   Specify whether this workflow state should be skipped by using a skip condition
-   Specify a transition to the next workflow state inside the composite state instead of a transition to a specific workflow state
-   Specify a transition to the workflow state that is the next one after the composite state if this composite state is itself a nested workflow state in another composite state
-   Override the settings inherited from the composite state, if needed

These capabilities make workflow customization much easier. You do not need to explicitly specify target workflow states for transitions. Thus, if you add or remove states in the workflow or change the order of states, you do not need to modify all the affected transitions.

## Implementation of a Composite Workflow State { .section}

You add a composite workflow state inside the AddFlowStates method by using the AddSequence method. You specify the name of the composite workflow state as the type parameter of the method. In the lambda expression provided for the AddSequence method, you can add the workflow states that are a part of the composite state by using the WithStates method. The workflow states in a composite state are declared the same way as they are declared in the AddFlowStates method.

To specify that a workflow state should be skipped in the composite state, you call the IsSkippedWhen method in the workflow state definition. In the parameter of the IsSkippedWhen method, you specify the condition that determines whether the workflow state should be skipped.

The following code shows an example of the declaration of a composite workflow state.

```language-csharp
.WithFlowStates(flowStates =>
{
  flowStates.Add(initialState, flowState => flowState
    .IsInitial(graph => graph.initializeState));
  flowStates.AddSequence<State.HoldToBalance>(seq =>
    seq.WithStates(seqStates =>
    {
      seqStates.Add<State.hold>(flowState =>
      {
        return flowState
          .IsSkippedWhen(conditions.IsNotOnHold)
          .WithActions(actions =>
          {
            ...
          });
      });
      seqStates.Add<State.creditHold>(flowState =>
      {
        return flowState
          .IsSkippedWhen(conditions.IsCreditHoldChecked)
          .WithActions(actions =>
          {
            ...
          });
      });
      seqStates.Add<State.balanced>(flowState =>
      {
        return flowState
          .WithActions(actions =>
      {
        ...
      });
    });
  }));
}
```

In the code above, the `HoldToBalance` composite workflow state is declared. The composite state includes the following workflow states:

-   `hold`, which is skipped when the `IsNotOnHold` condition is *true*
-   `creditHold`, which is skipped when the `IsCreditHoldChecked` condition is *true*
-   `balanced`, which is never skipped

## Declaring of a Transition for a Composite Workflow State { .section}

You can define the following transitions involving a composite workflow state:

-   A transition from any state of a workflow to a composite workflow state.
-   A transition from a composite workflow state to any state of a workflow.

    This transition is inherited by the workflow states included in the composite state.

-   A transition from a specific workflow state of the composite state to any state of the workflow.
-   A transition from a composite workflow state to itself so that the workflow engine can search for the proper workflow state and check conditions again.

    To define this transition, in the Add method for the transition, you specify the target workflow state, which is the same as the source workflow state.

-   A transition from one workflow state included in a composite state to the workflow state defined after it.

    To define this transition, in the Add method for the transition, you call the ToNext method.

-   If a composite workflow state is defined inside a parent composite state, a transition from a workflow state in the child composite state to the next state in the parent composite state.

    To define this state, in the Add method for a transition, you call the ToParentNext method.


**Important:** A composite workflow state cannot be the initial state of a workflow. You must specify a transition from an initial state to the composite state.

The following code shows an example of transitions that include a composite workflow state.

```language-csharp
.WithTransitions(transitions =>
{
  transitions.AddGroupFrom(initialState, transitionGroup =>
  {
    transitionGroup.Add(transition => transition.To<State.HoldToBalance>()
      .IsTriggeredOn(graph => graph.initializeState)); // To composite state
  });
  transitions.AddGroupFrom<State.HoldToBalance>(transitionGroup =>
  {
    transitionGroup.Add(transition => transition
      .To<State.HoldToBalance>()
      .IsTriggeredOn(graph => graph.OnUpdateStatus)
      .When(conditions.IsARInvoice));
    transitionGroup.Add(transition => transition
      .To<State.open>()
      .IsTriggeredOn(graph => graph.OnReleaseDocument)
      .When(conditions.IsOpen));
  }
}
```

In the code above, the following transitions are declared:

-   A transition from the initial workflow state to the `HoldToBalance` composite workflow state
-   A transition from the `HoldToBalance` composite workflow state to itself
-   A transition from the `HoldToBalance` composite workflow state to the `Open` workflow state

## Customization of an Existing Composite State { .section}

You can customize a composite workflow state that has been defined in the source code of Acumatica ERP. To customize a composite state, you use the UpdateSequence method in the WithFlowStates method. In the WithStates method of the UpdateSequence method, you can add, update, or delete a workflow state by using the Add, Update, or Delete methods, respectively. To specify the location of a workflow state in the updated composite state, you use the PlaceAfter method.

The following code shows an example of an updated composite state.

```language-csharp
.WithFlowStates(states =>
{
  states.UpdateSequence<State.HoldToBalance>(seq =>
    seq.WithStates(seqStates =>
    {
      seqStates.Add<State.pendingApproval>(flowState =>
      {
        return flowState
          .IsSkippedWhen(conditions.IsApproved)
          .WithActions(actions =>
          {
            ...
          })
          .PlaceAfter<State.hold>();
      });
    }));
})
.WithTransitions(transitions =>
{
  transitions.AddGroupFrom<State.pendingApproval>(transitionGroup =>
  {
    transitionGroup.Add(transition => transition
      .To<State.HoldToBalance>()
      .IsTriggeredOn(graph => graph.OnUpdateStatus));
    transitionGroup.Add(transition => transition
      .ToNext()
      .IsTriggeredOn(aproveAction)
      .When(conditions.IsApproved));
    transitionGroup.Add(transition => transition
      .To<State.rejected>()
      .IsTriggeredOn(rejectAction)
      .When(conditions.IsRejected));
  });
});
```

In the code above, the `pendingApproval` workflow state has been added to the `HoldToBalance` composite workflow state and placed after the `hold` workflow state. Three transitions have been added from the `pendingApproval` workflow state.

**Parent topic:**[Implementing Composite States](../DeveloperGuide/WorkflowAPI_Sequences_Mapref.md)

