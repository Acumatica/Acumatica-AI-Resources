# Conditions: General Information {#_9770cfd2-3863-4cff-acb6-6abe4d5465af .concept}

A *condition* is a Boolean statement that is checked in a workflow. When the statement is true, a workflow component can change to your specifications.

## Learning Objectives { .section}

In this chapter, you will learn where and how a condition can be applied.

## Applicable Scenarios { .section}

You can use a condition in the following ways:

-   To change Boolean properties of each action, such as its visibility and availability
-   To change Boolean properties of each field, such as its visibility, requirement, and availability
-   To check whether a transition should be performed

## Declaring of Conditions { .section}

You declare conditions in a class that inherits from the Condition.Pack class. In that class, you define a member of the Condition type by calling the GetOrCreate method. As a parameter, you provide a fluent BQL statement that uses the FromBql or FromBqlType method. An example of definition of conditions is shown in the following code.

```language-csharp
public class Conditions : Condition.Pack
{
  public Condition IsOnHold => 
    GetOrCreate(condition => condition.FromBql<hold.IsEqual<True>>());
  public Condition IsCompleted => 
    GetOrCreate(condition => condition.FromBql<completed.IsEqual<True>>());
  public Condition IsOnCreditHold => 
    GetOrCreate(condition => condition.FromBql<creditHold.IsEqual<True>>());
}
```

The Condition.Pack class provides the GetOrCreate method, which registers a condition definition under the name of the class property. Later, you can retrieve the condition through this property by using the GetPack method.

You can combine conditions by using logical AND, OR, and NOT C\# operators to dynamically create and register new conditions.

**Important:** A condition that is declared using the Condition.Pack class is automatically registered in the screen configuration and does not need to be added to it manually.

## Use of Conditions { .section}

You can use conditions in the following ways:

-   To make an action unavailable depending on a condition.

    You should call the IsDisabledWhen method while adding an action to a screen configuration and provide a condition as a parameter. For an example, see [Workflow Actions: To Configure the Conditional Appearance of the Action](WorkflowAPI_Actions_Activity_CreateInvoice.md).

-   To hide a field, make the field unavailable, or make the field required depending on a condition.

    You do this while configuring the state of the field in the screen configuration. For details, see [Field States: General Information](WorkflowAPI_FieldStates_GeneralInfo.md).

-   To hide a dialog box field depending on a condition.

    You call the IsHiddenWhen method while adding this field to a dialog box and provide a condition as a parameter. For details, see [Workflow Dialog Boxes: Configuration of Fields](WorkflowAPI_DialogBox_FieldConfiguration.md).

-   To check whether a transition should be performed.

    To do this, you call the When method while adding the transition in a transition group and provide a condition as a parameter. This way, you can also create multiple transitions with a single initial workflow state if these transitions should be triggered by the same action or event. The transition is performed when the provided condition is true. An example is shown in the following code.

    ```language-csharp
    .WithTransitions(transitions =>
    {
      transitions.AddGroupFrom(initialState, transitionGroup =>
      {
        transitionGroup.Add(transition => transition 
          .To<State.balanced>()
          .IsTriggeredOn(graph => graph.initializeState)
          .When(conditions.IsBalanced)
      }
    }
    ```

    For the full example, see [Transitions: To Implement a Group of Transitions](WorkflowAPI_Transitions_Activity_GroupTransitions.md).


**Parent topic:**[Defining Conditions](../DeveloperGuide/WorkflowAPI_Conditions_Mapref.md)

