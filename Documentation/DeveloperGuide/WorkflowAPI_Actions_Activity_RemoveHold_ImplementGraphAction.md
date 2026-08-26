# Step 1: Implementing the Action in the Graph {#_dd29ff26-6883-4059-80f6-4fd05af2f86e .concept}

In this step, you will add the `ReleaseFromHold` action to the `RSSVWorkOrderEntry` graph.

To define the action in the graph, do the following:

1.  Add the `using System.Collections;` directive to the `RSSVWorkOrderEntry.cs` file \(if it has not been added yet\). Then, add the `Actions` region.
2.  In the `Actions` region, add the following code.

    ```language-csharp
            #region Actions
            public PXAction<RSSVWorkOrder> ReleaseFromHold = null!;
            [PXButton(), PXUIField(DisplayName = "Remove Hold",
              MapEnableRights = PXCacheRights.Select,
              MapViewRights = PXCacheRights.Select)]
            protected virtual IEnumerable releaseFromHold(PXAdapter adapter)
               => adapter.Get();
            #endregion
    ```

    In the code above, you have added a field of the PXAction&lt;&gt; type and the method that implements the action. The method is empty because the business logic behind the action will be described in the code of the workflow.

    The action method is decorated with the [PXButton](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=1a7069c4-95d5-456b-41ec-5b19371358db) attribute, where you specify the display name of the action and the cache access rights.

3.  Save your changes.

**Parent topic:**[Workflow Actions: To Implement a Simple Action](../DeveloperGuide/WorkflowAPI_Actions_Activity_RemoveHold.md)

