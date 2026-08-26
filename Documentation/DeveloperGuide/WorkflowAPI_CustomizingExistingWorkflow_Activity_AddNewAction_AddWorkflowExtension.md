# Step 2: Adding a Workflow Extension {#_c67a32cf-0dfc-4ae3-9395-7892a1fd3816 .task}

In this step, you will create an extension for the workflow defined for the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. Do the following:

1.  Find the name of the class that defines the workflow for the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. To do this, explore the contents of the `PX.Objects/SO/Workflow` folder of the Acumatica ERP source code. There you can find the class you need to extend: SOInvoiceEntry\_Workflow, which is an extension of the SOInvoiceEntry graph.

    In the code of the SOInvoiceEntry\_Workflow class, notice that the states of the workflow are defined in the ARDocStatus class. You will need this class in the next step.

2.  In the `Workflows` folder of the `PhoneRepairShop_Code` project, create the `SOInvoiceRepairOrder_Workflow.cs` file.
3.  In the `SOInvoiceRepairOrder_Workflow.cs` file, in the `PhoneRepairShop` namespace, define the `SOInvoiceRepairOrder_Workflow` class as the following code shows.

    ```language-csharp
        public class SOInvoiceRepairOrder_Workflow : 
            PXGraphExtension<SOInvoiceEntry_Workflow, SOInvoiceEntry>
        {
            public sealed override void Configure(PXScreenConfiguration config)
            {
                Configure(config.GetScreenConfigurationContext<SOInvoiceEntry,
                                                               ARInvoice>());
            }
    
            protected static void Configure(WorkflowContext<SOInvoiceEntry,
                                                            ARInvoice> context)
            {
            }
        }
    ```

    In the code above, you have defined an extension of the SOInvoiceRepairOrder\_Workflow class. As a second parameter of the extension, you have specified the graph of the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. In the extension, you have overridden the Configure\(PXScreenConfiguration\) method, which initializes the screen configuration, and declared the static Configure\(WorkflowContext\) method where you will update the workflow.

4.  Make sure that you have added the following `using` directives.

    ```language-csharp
    ﻿using PX.Data.WorkflowAPI;
    using PX.Data;
    using PX.Objects.SO;
    using PX.Objects.AR;
    ```

5.  Save your changes.

**Parent topic:**[Workflow Customization: To Add an Action to an Existing Workflow](../DeveloperGuide/WorkflowAPI_CustomizingExistingWorkflow_Activity_AddAction.md)

