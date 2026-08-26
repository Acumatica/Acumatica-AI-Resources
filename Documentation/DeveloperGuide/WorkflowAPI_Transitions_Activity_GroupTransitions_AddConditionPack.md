# Step 1: Adding a Condition {#_0325185c-3d44-4c13-94a5-86170209395b .task}

To implement a transition from the `OnHold` workflow state to the `ReadyForAssignment` or `PendingPayment` workflow state, based on the properties of the current repair work order, you need to define a condition that is true when a repair work order requires prepayment. You will use the logical NOT C\# operator and this condition to define a condition that is true when a repair work order does not require prepayment.

A repair work order requires prepayment when the service specified for the order requires prepayment. The service requires prepayment if the **Prepayment** check box is selected for the service on the Repair Services \(RS201000\) form. This means that to check whether a repair work order requires prepayment, you need to check the value of the `prepayment` property of the `RSSVRepairService` DAC record, which has the same `serviceID` value as the repair work order.

To declare the condition, do the following:

1.  In the `RSSVWorkOrderEntry_Workflow` class, add the `Conditions` region.
2.  In the `Conditions` region, declare a condition class, as the following code shows.

    ```language-csharp
            public class Conditions : Condition.Pack
            {
            }
    ```

3.  In the `Conditions` class, declare a condition that is true when the repair work order requires prepayment, as the following code shows.

    ```language-csharp
                public Condition RequiresPrepayment => GetOrCreate(condition => 
                    condition.FromBql<Where<RSSVRepairService.prepayment
                        .FromSelectorOf<RSSVWorkOrder.serviceID>.IsEqual<True>>>());
    ```

    In the code above, you have created a condition by calling the GetOrCreate method and provided a BQL statement in the lambda expression. In the BQL statement, you have selected the `RSSVRepairService` record by using the `RSSVWorkOrder.serviceID` value and checked whether the `RSSVRepairService.prepayment` value of this record equals *true*.

4.  In the static Configure method, create an instance of the Conditions class, as the following code shows.

    ```language-csharp
                // Create an instance of the Conditions class
                var conditions = context.Conditions.GetPack<Conditions>();
    ```

5.  Save your changes.

**Parent topic:**[Transitions: To Implement a Group of Transitions](../DeveloperGuide/WorkflowAPI_Transitions_Activity_GroupTransitions.md)

