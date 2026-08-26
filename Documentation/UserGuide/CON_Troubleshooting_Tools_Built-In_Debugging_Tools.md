# Using Built-In Debugging Tools {#_9b38f50e-e592-482d-a610-9ba694613dc2 .concept}

The following built-in debugging tools, described in the sections of this topic, may help you get more information from Acumatica ERP:

-   [Workflow Validation](#_7003fb3e-a3bd-45d0-93c5-bfe20989a66a): A mechanism for the validation of the workflows that you have developed by using Workflow API
-   [ShowError URL parameter](#_dbe22d77-96db-4dd5-940f-65ce52b5f21a): A parameter for viewing the details of errors in Acumatica ERP without direct access to the file system of the server

## Workflow Validation {#_7003fb3e-a3bd-45d0-93c5-bfe20989a66a .section}

The code written by using Workflow API is declarative. As a result, the usual approaches to debugging do not work with the workflow code. To catch errors that occur in a workflow, you need to enable workflow validation in the `web.config` file of your instance. This way, when an error occurs on a form that uses the workflow, you will be able to see detailed information about the error on the **System Events** tab of the [System Monitor](SM_20_15_30.md) \(SM201530\) form of Acumatica ERP.

You enable workflow validation by setting the value of the EnableWorkflowValidationOnStartup key to *True*, as described in [Test Instance for Workflow Customization: To Turn On Workflow Validation](../DeveloperGuide/WorkflowAPI_PrepareInstance_Activity_EnableValidation.md).

## ShowError URL Parameter {#_dbe22d77-96db-4dd5-940f-65ce52b5f21a .section}

If Acumatica ERP displays a generic error message \(for example, *We're sorry! An error has occurred while processing your request. A report has been generated for our technical staff to investigate the problem. Please try to repeat your request later. Thank you for understanding.*\) and you do not have direct access to the file system of the Acumatica ERP server \(as in the case of public hosting\), you can use the special URL parameter `ShowError=true`. As a result, the system will display the specific message for the error that has occurred instead of the generic message.

The full URL with the parameter looks as follows: `http://<website_address>/main?showerror=true`, where `<website_address>` is replaced with the address of your site.

**Parent topic:**[Troubleshooting Acumatica ERP](../UserGuide/CON_Troubleshooting_Tools.md)

