# Step 2: Defining the Set of States of the Workflow {#_080c1dd4-3765-4095-be96-8fb4f59c8bca .task}

In this step, you will define the set of states for the workflow of a repair work order. The workflow state is determined by one of the fields of the record, which is usually the `Status` field. Therefore, you need to define the set of states that corresponds to the set of statuses that a repair work order can have.

According to the customization description, which is available in [Business Process Overview](WorkflowAPI_CustomizationStory_BusinessProcess.md), a repair work order can have the following statuses:

-   *On Hold* \(the `WorkOrderStatusConstants.OnHold` constant\)
-   *Ready for Assignment* \(the `WorkOrderStatusConstants.ReadyForAssignment` constant\)
-   *Pending Payment* \(the `WorkOrderStatusConstants.PendingPayment` constant\)
-   *Assigned* \(the `WorkOrderStatusConstants.Assigned` constant\)
-   *Completed* \(the `WorkOrderStatusConstants.Completed` constant\)
-   *Paid* \(the `WorkOrderStatusConstants.Paid` constant\)

To create the set of workflow states, do the following:

1.  In the `Constants.cs` file, make sure that the constants for the **Status** box are defined as shown in the following code. These values will be used to indicate the states of the workflow.

    ```language-csharp
        //Constants for the statuses of repair work orders
        public static class WorkOrderStatusConstants
        {
            public const string OnHold = "OH";
            public const string PendingPayment = "PP";
            public const string ReadyForAssignment = "RA";
            public const string Assigned = "AS";
            public const string Completed = "CM";
            public const string Paid = "PD";
        }
    ```

2.  In the `RSSVWorkOrderEntry_Workflow` class, define the `Constants` region and the public static class inside it, as the following code shows.

    ```language-csharp
            #region Constants
            public static class States
            {
            }
            #endregion
    ```

3.  In the `States` class, define the constant string values that correspond to the repair work order statuses, as the following code shows.

    ```language-csharp
                public const string OnHold = WorkOrderStatusConstants.OnHold;
                public const string ReadyForAssignment =
                  WorkOrderStatusConstants.ReadyForAssignment;
                public const string PendingPayment =
                  WorkOrderStatusConstants.PendingPayment;
                public const string Assigned = WorkOrderStatusConstants.Assigned;
                public const string Completed = WorkOrderStatusConstants.Completed;
                public const string Paid = WorkOrderStatusConstants.Paid;
    ```

4.  In the `States` class, define the classes for each state of the workflow, as the following code shows.

    ```language-csharp
                public class onHold : PX.Data.BQL.BqlString.Constant<onHold>
                {
                    public onHold() : base(OnHold) { }
                }
    
                public class readyForAssignment :
                  PX.Data.BQL.BqlString.Constant<readyForAssignment>
                {
                    public readyForAssignment() : base(ReadyForAssignment) { }
                }
    
                public class pendingPayment :
                  PX.Data.BQL.BqlString.Constant<pendingPayment>
                {
                    public pendingPayment() : base(PendingPayment) { }
                }
    
                public class assigned : PX.Data.BQL.BqlString.Constant<assigned>
                {
                    public assigned() : base(Assigned) { }
                }
    
                public class completed : PX.Data.BQL.BqlString.Constant<completed>
                {
                    public completed() : base(Completed) { }
                }
    
                public class paid : PX.Data.BQL.BqlString.Constant<paid>
                {
                    public paid() : base(Paid) { }
                }
    ```

5.  Save your changes.

**Parent topic:**[Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](../DeveloperGuide/WorkflowAPI_ScreenConfig_Activity_CreateNew.md)

