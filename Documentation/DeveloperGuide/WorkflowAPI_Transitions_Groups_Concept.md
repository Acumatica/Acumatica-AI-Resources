# Transitions: Transition Groups {#_fdfe1b7f-8cf7-494d-b6a8-3beeeae924aa .concept}

You can group transitions by their source workflow states. In this case, you can structure your code and do not have to specify the source workflow state for the transition in the From parameter. You can group the transitions by calling the AddGroupFrom method in the lambda expression of the WithTransitions method and adding the transitions in the same lambda expression. An example is shown in the following code.

```language-csharp
.WithTransitions(transitions => 
{
  transitions.AddGroupFrom<State.open>(transitionGroup => {
    transitionGroup.Add(transition => transition
      .To<State.hold>()
      .IsTriggeredOn(graph => graph.putOnHold)
      .WithFieldAssignments(fields => fields.Add<hold>(true)));
    transitionGroup.Add(transition => transition
      .To<State.confirmed>()
      .IsTriggeredOn(graph => graph.confirmShipmentAction)); 
  });
})
```

**Parent topic:**[Implementing Transitions](../DeveloperGuide/WorkflowAPI_Transitions_Mapref.md)

