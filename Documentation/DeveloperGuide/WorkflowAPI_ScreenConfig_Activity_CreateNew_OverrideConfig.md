# Step 3: Overriding the Configure Method {#_e29874cb-b42f-474c-87e6-eb401bc9a43c .task}

To implement a workflow for the Repair Work Orders \(RS301000\) form, in the workflow class, you will override the PXGraphExtension.Configure method, which accepts the PXScreenConfiguration instance. Inside the Configure\(PXScreenConfiguration config\) method, you will call the static Configure method. In the static Configure method, you will get the configuration context object for the Repair Work Orders \(RS301000\) form, which you will later use to add the new screen configuration.

**Attention:** Declaring the static Configure method and calling in it the overridden Configure\(PXScreenConfiguration config\) method is important to ensure that no static methods are called inside the Configure\(PXScreenConfiguration config\) method and the PXOverride attribute cannot be applied to the method. For more details, see [Screen Configuration: Restrictions of the Configure Method](../Shared/../DeveloperGuide/WorkflowAPI_ScreenConfig_ConfigureRestrictions.md).

Do the following:

1.  In the `RSSVWorkOrderEntry_Workflow` class, declare the static Configure method as the following code shows.

    ```language-csharp
            protected static void Configure(WorkflowContext<RSSVWorkOrderEntry, 
                                                            RSSVWorkOrder> context)
            {
            }
    ```

    In the code above, the Configure method has one parameter of the WorkflowContext type, which has two type parameters: the graph of the form for which workflow is defined, and the primary DAC of the form.

2.  Override the Configure\(PXScreenConfiguration config\) method and call the static Configure method inside it, as the following code shows.

    ```language-csharp
            public sealed override void Configure (PXScreenConfiguration config)
            {
                Configure(config.GetScreenConfigurationContext<RSSVWorkOrderEntry,
                    RSSVWorkOrder>());
            }
    ```

    In the code above, you have gotten the current context of the screen configuration for the Repair Work Orders \(RS301000\) form by specifying the form graph and primary DAC as parameters of the GetScreenConfigurationContext method.

3.  In the static Configure method, add a template for defining the default workflow, as the following code shows.

    ```language-csharp
                context.AddScreenConfigurationFor(screen => screen
                    .StateIdentifierIs<RSSVWorkOrder.status>()
                    .AddDefaultFlow(flow => ...)
                );
    ```

    In the code above, you have added a new screen configuration for the Repair Work Orders \(RS301000\) form, specified the field that is the state identifier and started adding the default workflow by calling the AddDefaultFlow method.

4.  Save your changes.

Now you are ready to add the definition of the workflow to the screen configuration.

**Parent topic:**[Screen Configuration: To Prepare a Screen Configuration for a Form Without a Predefined Workflow](../DeveloperGuide/WorkflowAPI_ScreenConfig_Activity_CreateNew.md)

