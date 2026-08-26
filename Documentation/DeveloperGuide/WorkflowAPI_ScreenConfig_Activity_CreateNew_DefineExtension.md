# Step 1: Defining the Workflow Class {#_79b8b623-74ee-4bc1-a440-898de05ff0c1 .task}

In this step, you will define the `RSSVWorkOrderEntry_Workflow` class that will contain a workflow for the Repair Work Orders \(RS301000\) form.

The business logic for the Repair Work Orders \(RS301000\) form is defined in the `RSSVWorkOrderEntry` graph, so you need to create the `RSSVWorkOrderEntry_Workflow` class as an extension of the `RSSVWorkOrderEntry` graph.

To define the `RSSVWorkOrderEntry_Workflow` workflow class, do the following:

1.  In the `PhoneRepairShop_Code` project, create the `Workflows` folder.
2.  In the `Workflows` folder, add a new item named `RSSVWorkOrderEntry_Workflow.cs` based on the C\# class template.
3.  In the `RSSVWorkOrderEntry_Workflow.cs` file, define the workflow class, as the following code shows.

    ```language-csharp
    ﻿using PX.Data;
    using PX.Data.WorkflowAPI;
    using static PX.Data.WorkflowAPI.BoundedTo<PhoneRepairShop.RSSVWorkOrderEntry,
      PhoneRepairShop.RSSVWorkOrder>;
    
    namespace PhoneRepairShop
    {
        public class RSSVWorkOrderEntry_Workflow : PXGraphExtension<RSSVWorkOrderEntry>
        {
    
        }
    }
    ```

4.  Use Acuminator to suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error in a comment. In activities of this guide, for simplicity, the graph extension is always active.
5.  Save your changes.

**Parent topic:**[Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](../DeveloperGuide/WorkflowAPI_ScreenConfig_Activity_CreateNew.md)

