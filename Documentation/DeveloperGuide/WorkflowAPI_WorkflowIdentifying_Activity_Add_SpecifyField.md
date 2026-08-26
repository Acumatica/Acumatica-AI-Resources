# Step 2: Specifying the Workflow-Identifying Field in the Workflow {#_ad7ab392-dcd7-47c9-b391-ac1ce98f8912 .task}

In this step, you will extend the screen configuration of the Repair Work Orders \(RS301000\) form and specify the workflow-identifying field in it by calling the FlowTypeIdentifierIs method.

Do the following:

1.  In the extension library, create an extension of the `RSSVWorkOrderEntry_Workflow` class as shown in the following code.

    ```language-csharp
        public class RSSVWorkOrderEntry_Workflow_Extension :
            PXGraphExtension<RSSVWorkOrderEntry_Workflow, RSSVWorkOrderEntry>
        {
        }
    ```

    **Tip:** Use Acuminator to suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error in a comment. In this course, for simplicity, the extension is always active.

2.  In the `RSSVWorkOrderEntry_Workflow_Extension` class, define the set of constant string values and corresponding classes for the value of the `UsrOrderType` field which as the following code shows.

    ```language-csharp
            #region Constants 
            public static class OrderTypes
            {
                public const string Simple = WorkOrderTypeConstants.Simple;
                public const string Standard = WorkOrderTypeConstants.Standard;
                public const string Awaiting = WorkOrderTypeConstants.Awaiting;
    
                public class simple : PX.Data.BQL.BqlString.Constant<simple>
                {
                    public simple() : base(Simple) { }
                }
    
                public class standard : PX.Data.BQL.BqlString.Constant<standard>
                {
                    public standard() : base(Standard) { }
                }
    
                public class awaiting : PX.Data.BQL.BqlString.Constant<awaiting>
                {
                    public awaiting() : base(Awaiting) { }
                }
            }
            #endregion
    ```

3.  In the `RSSVWorkOrderEntry_Workflow_Extension` class, override the Configure method as the following code shows.

    ```language-csharp
            public sealed override void Configure(PXScreenConfiguration config)
            {
                Configure(config.GetScreenConfigurationContext<RSSVWorkOrderEntry,
                                                               RSSVWorkOrder>());
            }
    
            protected static void Configure(WorkflowContext<RSSVWorkOrderEntry,
                                                             RSSVWorkOrder> context)
            {
            }
    ```

4.  In the static `Configure` method, update the screen configuration and specify the workflow-identifying field as the following code shows.

    ```language-csharp
                context.UpdateScreenConfigurationFor(screen => screen
                    .FlowTypeIdentifierIs<RSSVWorkOrder_Extension.usrOrderType>());
    ```

5.  Save your changes.

**Parent topic:**[Workflow-Identifying Fields: To Add a Workflow for a Value of the Workflow-Identifying Field](../DeveloperGuide/WorkflowAPI_WorkflowIdentifying_Add_Activity.md)

