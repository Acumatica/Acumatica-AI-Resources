# Step 6: Overriding the PerformPersist Method {#_ba1b5e50-098f-4e1e-9a07-d0c236986300 .task}

The `Persist` method of any graph saves changes to the database. The PerformPersist\(IPersistPerformer persister\) method is a targeted override of the Persist method that offers you full control of the persist process without affecting any of the existing logic. We recommend that you use this method to override the persisting logic of a graph instead of overriding the Persist method directly.

In this activity, you are customizing an existing workflow to update another entity. For the changes to be saved to the database, you need to override the PerformPersist\(IPersistPerformer persister\) method of the form where you are customizing the workflow and specify which changes should be saved to the database.

In this step, you will override the PerformPersist\(IPersistPerformer persister\) method of the ARReleaseProcess graph so that the changes to a repair work order that are triggered by the workflow event on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form are saved to the database. Do the following:

1.  In the `PhoneRepairShop_Code` project, create a file named `ARReleaseProcess_Extension.cs` based on a C\# template.
2.  In the `ARReleaseProcess_Extension.cs` file, declare the ARReleaseProcess\_Extension graph extension, as the following code shows.

    ```language-csharp
        public class ARReleaseProcess_Extension : PXGraphExtension<ARReleaseProcess>
        {
        }
    ```

    **Tip:** Add the `using` directives shown in the following code.

    ```language-csharp
    ﻿using System;
    using PX.Data;
    using PX.Data.BQL.Fluent;
    using PX.Objects.AR;
    ```

3.  Use Acuminator to suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error in a comment. In this activity, for simplicity, the extension is always active.
4.  In the `ARReleaseProcess_Extension` class, add the following code.

    ```language-csharp
            public SelectFrom<RSSVWorkOrder>.View WorkOrdersForUpdate = null!;
    
            /// Overrides <seealso cref="ARReleaseProcess.PerformPersist(PXGraph.IPersistPerformer)"/>
            [PXOverride]
            public void PerformPersist(PXGraph.IPersistPerformer persister,
                        Action<PXGraph.IPersistPerformer> base_PerformPersist)
            {
                base_PerformPersist(persister);
                persister.Update<RSSVWorkOrder>();
            }
    ```

    **Attention:** When you override the PerformPersist\(IPersistPerformer persister\), you must call the base version of the method. The only exception to this rule is when you need to suppress the base logic for some reason.

    In the code above, you have declared a view for repair work orders and overridden the PerformPersist method. In the overridden method, you have called the base method and saved your changes to the database by calling the `PXGraph.IPersistPerformer.Update` method.

5.  Save your changes.

**Parent topic:**[Workflow Events: To Use an Existing Event](../DeveloperGuide/WorkflowAPI_Events_Activity_UseExisting.md)

