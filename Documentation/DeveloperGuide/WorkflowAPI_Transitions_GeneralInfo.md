# Transitions: General Information {#_78a13a6f-76d3-46fe-8038-b803a8f42af7 .concept}

In a workflow, all workflow states are linked with transitions. Transitions define the changes during the lifecycle of a record.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Define a simple transition
-   Define a transition group
-   Define conditions
-   Define transitions that are triggered depending on a condition

## Applicable Scenarios { .section}

You implement a transition when you need to implement a change of workflow state.

## Definition of a Transition { .section}

To implement a transition, you define the following parts of the screen configuration:

-   The source workflow state for the transition
-   The target workflow state for the transition
-   The action or workflow event that triggers the transition
-   The conditions that are checked before the transition is applied \(optional\)
-   The transition itself

After you have defined all the entities required for a transition \(which are the source workflow state, the target workflow state, and the entity that triggers the transition\), you can add the transition definition to the workflow. You do this by calling the WithTransitions method in the lambda expression specified for the AddDefaultFlow method and providing the set of transitions in the parameter. You define each transition by calling the Add method. In the Add method, you specify a lambda expression in which you specify the following transition parameters:

-   From: The source workflow state for the transition
-   To: The target workflow state for the transition
-   IsTriggeredOn: The trigger of the transition

## Configuration of a Transition { .section}

While configuring a transition, you can do the following:

-   Add, update, or delete a transition by calling the Add, Update, or Delete method.
-   Specify the condition on which a transition is performed by calling the When method. For an example of this implementation, see [Transitions: To Implement a Group of Transitions](WorkflowAPI_Transitions_Activity_GroupTransitions.md).
-   Define the order in which the system checks a transition by specifying whether the transition should be placed before or after another transition. You do this by calling the PlaceBefore or PlaceAfter method. By default, transitions are executed based on their order of declaration in code.
-   Specify the field assignments that are executed if the current transition matches all criteria and is applied to the current record. You do this by calling the WithFieldAssignments method.
-   Specify that the system should not save the current record to the database when the transition is performed. You do this by calling the DoesNotPersist method. By default, the system always saves the current record to the database when the transition is performed.

**Parent topic:**[Implementing Transitions](../DeveloperGuide/WorkflowAPI_Transitions_Mapref.md)

