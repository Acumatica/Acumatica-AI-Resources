# Step 3: Grouping Transitions and Adding Conditions to Transitions {#_d61d52fd-b8f6-4210-908b-8911b693992a .task}

In this step, you will group transitions and add a condition to each transition.

To specify the conditions you defined in [Step 1: Adding a Condition](WorkflowAPI_Transitions_Activity_GroupTransitions_AddConditionPack.md) of this activity, do the following:

1.  In the lambda expression provided for the WithTransitions method, define a group of transitions, as the following code shows.

    ```language-csharp
                        .WithTransitions(transitions =>
                        {
                            transitions.AddGroupFrom<States.onHold>(transitionGroup =>
                            {
                            });
                        })
    ```

    In the code above, you have defined a group of transitions whose initial workflow state is `OnHold`.

2.  Move the definition of the transition that you added in [Transitions: To Implement a Transition Triggered by an Action](WorkflowAPI_Transitions_Activity_RemoveHold.md) inside the group, and remove the call of the From method because it is no longer necessary. The resulting code is shown below.

    ```language-csharp
                            transitions.AddGroupFrom<States.onHold>(transitionGroup =>
                            {
                                transitionGroup.Add(transition => 
                                    transition.To<States.readyForAssignment>()
                                    .IsTriggeredOn(graph => graph.ReleaseFromHold)
                                );
                            });
    ```

3.  After the IsTriggeredOn method call, add the When method call, and specify the `RequiresPrepayment` condition with the logical NOT operator, as the following code shows.

    ```language-csharp
                                    transition.To<States.readyForAssignment>()
                                    .IsTriggeredOn(graph => graph.ReleaseFromHold)
                                    .When(!conditions.RequiresPrepayment));
    ```

4.  After this transition, add the new transition from the `OnHold` state to the PendingPayment state, as the following code shows. Specify the `RequiresPrepayment` condition.

    ```language-csharp
                                transitionGroup.Add(transition => 
                                    transition.To<States.pendingPayment>()
                                    .IsTriggeredOn(graph => graph.ReleaseFromHold)
                                    .When(conditions.RequiresPrepayment));
    ```

5.  Save your changes.

The full code of the section should look as follows.

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
                                .When(conditions.RequiresPrepayment));
                        });
                    }))
```

**Parent topic:**[Transitions: To Implement a Group of Transitions](../DeveloperGuide/WorkflowAPI_Transitions_Activity_GroupTransitions.md)

