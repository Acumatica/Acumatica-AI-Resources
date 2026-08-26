# Screen Configuration: To Prepare a Screen Configuration with a Predefined Workflow {#_d61d0345-381a-473e-8843-cdb00312f720 .task}

Most data entry forms of Acumatica ERP have at least one *predefined* workflow—that is, a workflow that is implemented in the original code of Acumatica ERP.

The following activity will walk you through the process of performing the initial steps for customizing a predefined workflow.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Locate a class where the predefined workflow is implemented
-   Create a graph extension where a customized workflow can be implemented
-   Override the Configure method

## Story { .section}

Suppose that you need to define a workflow for the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, which has a predefined workflow—that is, a workflow that has been implemented by Acumatica developers.

## Process Overview { .section}

To extend the predefined workflow of the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, in the source code of Acumatica ERP, you will first find the class where the workflow is defined. You will then create an extension of this class and prepare the method where you can later customize the workflow.

## System Preparation { .section}

As a prerequisite activity, perform the activities of the [Preparing an Instance for Workflow Customization](WorkflowAPI_PrepareInstance_Mapref.md) chapter to configure your instance.

Make sure you have enabled the workflow validation as described in [Test Instance for Workflow Customization: To Turn On Workflow Validation](WorkflowAPI_PrepareInstance_Activity_EnableValidation.md).

## Step 1: Locating the Class that Defines the Workflow { .section}

To locate the class where the workflow is defined, you should look into the `PX.Objects/<area>` folder in the source code of Acumatica ERP, where `<area>` is the code of the functional area of the form for which the workflow is defined. In most cases, workflows of this functional area are located in the `Workflows` folder of this location. Sometimes all workflow classes are located at the same level as the graph classes—that is, in the `PX.Objects/<area>` folder.

To locate the class where the workflow for the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form is defined, do the following:

1.  In the source code of Acumatica ERP, locate the `PX.Objects/SO/Workflow` folder.
2.  In this folder, find the SOInvoiceEntry\_Workflow class, which is an extension of the SOInvoiceEntry graph.

    In the code of the SOInvoiceEntry\_Workflow class, notice that the states of the workflow are defined in the ARDocStatus class. You will need this class if you want to use the states of the workflow in your code.


## Step 2: Extending the Predefined Workflow { .section}

To extend a predefined workflow, you need to create an extension of the class where the workflow is defined. In this extension, you need to override the Configure\(PXScreenConfiguration\) method, which initializes the screen configuration.

To extend a predefined workflow, do the following:

1.  In the `Workflows` folder of the `PhoneRepairShop_Code` project, create the `SOInvoiceRepairOrder_Workflow.cs` file.
2.  In the `SOInvoiceRepairOrder_Workflow.cs` file, define the `SOInvoiceRepairOrder_Workflow` class, as the following code shows.

    ```
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

    In the code above, you have defined an extension of the SOInvoiceEntry\_Workflow class. As a second parameter of the extension, you have specified the graph of the [Invoices](../UserGuide/SO_30_30_00.md) form. In the extension, you have overridden the Configure\(PXScreenConfiguration\) method, which initializes the screen configuration, and have declared the Configure\(WorkflowContext\) method, where you can later update the workflow.

3.  Make sure that you have added the needed `using` directives.
4.  Save your changes.

**Parent topic:**[Preparing a Screen Configuration](../DeveloperGuide/WorkflowAPI_ScreenConfig_Mapref.md)

