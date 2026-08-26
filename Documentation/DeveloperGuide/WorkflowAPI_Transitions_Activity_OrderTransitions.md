# Step 4 \(Optional\): Specifying the Order of Transitions {#_31003b8b-781a-4274-bacf-1a4e20bf1110 .task}

Transitions are checked based on their order of declaration in code. To specify that a transition should be checked before or after another transition, you should call the PlaceBefore or PlaceAfter method,

In [Step 3: Grouping Transitions and Adding Conditions to Transitions](WorkflowAPI_Transitions_Activity_GroupTransitions_AddGroupAndConditions.md), you have defined the following transitions from the `onHold` workflow state:

-   A transition to the `readyForAssignment` workflow state
-   A transition to the `pendingPayment` workflow state

Suppose that you want to make sure that the transition to the `pendingPayment`workflow state is always checked before the transition to the `readyForAssignment` workflow state.

To explicitly specify this order of transitions, call the PlaceBefore method in the definition of the transition from the `onHold` workflow state to the `pendingPayment` workflow state, as the following code shows.

```language-csharp
                    .WithTransitions(transitions =>
                    {
                        transitions.AddGroupFrom<States.onHold>(transitionGroup =>
                        {
                            transitionGroup.Add(transition => 
                                transition.To<States.readyForAssignment>()
                                .IsTriggeredOn(graph => graph.ReleaseFromHold)
                                .When(!conditions.RequiresPrepayment));
                            transitionGroup.Add(transition => 
                                transition.To<States.pendingPayment>()
                                .IsTriggeredOn(graph => graph.ReleaseFromHold)
                                .When(conditions.RequiresPrepayment)
                                .PlaceBefore(transition => 
                                    transition.To<States.readyForAssignment>()));
                        });
                    }))
```

In this code,you have called the PlaceBefore method after calling the When method. Notice that you have passed in a lambda expression as a parameter to the PlaceBefore method, and within it, you have specified `transition.To<States.readyForAssignment>()` as the transition before which you want the transition being defined to be checked.

**Parent topic:**[Transitions: To Implement a Group of Transitions](../DeveloperGuide/WorkflowAPI_Transitions_Activity_GroupTransitions.md)

