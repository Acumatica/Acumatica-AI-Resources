# Test Instance for Workflow Customization: To Turn On Workflow Validation {#_37795e87-37e8-4920-a483-a104204ee185 .task}

The following activity will walk you through the process of preparing an instance of Acumatica ERP for the validation of a workflow that you create by using Workflow API.

The code written by using Workflow API is declarative. As a result, the usual approaches to debugging do not work with the workflow code. To catch errors that occur in a workflow, you need to turn on workflow validation. This way, when an error occurs on a form that uses the workflow, you can see detailed information about the error on the **System Events** tab of the [System Monitor](../UserGuide/SM_20_15_30.md) \(SM201530\) form of Acumatica ERP.

## Story { .section}

Suppose that you need to develop a workflow by using Workflow API. In this case, you need to learn how to debug the code and catch errors.

## Process Overview { .section}

You will enable workflow validation in the `Web.config` file of your instance.

## Step: Enabling Workflow Validation { .section}

To enable workflow validation, do the following:

1.  In the instance folder, open the `Web.config` file.
2.  In the appSettings tag of the file, find the EnableWorkflowValidationOnStartup key, and set its value to *True*, as the following code shows.

    ```language-xml
    <add key="EnableWorkflowValidationOnStartup" value="True" />
    ```

3.  Save your changes.

**Parent topic:**[Preparing an Instance for Workflow Customization](../DeveloperGuide/WorkflowAPI_PrepareInstance_Mapref.md)

