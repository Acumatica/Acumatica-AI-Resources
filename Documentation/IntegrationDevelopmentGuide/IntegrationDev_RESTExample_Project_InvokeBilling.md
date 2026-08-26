# Invoke Project Billing {#_b814f256-d720-4926-bb96-25e8808a7f49 .concept}

By using the REST API, you can invoke project billing to create a pro forma invoice.

## System Preparation { .section}

Before you test the code below, you need to configure your client application and the Acumatica ERP instance to be used as follows:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md) in the Installation Guide.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Projects* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name that you specified when you created the instance and the *HEADOFFICE* branch.
5.  Implement the [Specify the Progress of a Project Task](IntegrationDev_RESTExample_ProjectBudget_SetProgress.md) example as a prerequisite to the current example.

## Requests { .section}

You can use the following sequence of examples of HTTP requests to run project billing and check the completeness of this operation through the contract-based REST API:

**Tip:** In the request examples below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

1.  Invoke project billing to create a pro forma invoice.

    ```
    POST /entity/Default/25.200.001/Project/RunProjectBilling HTTP/1.1
    Host: <Acumatica ERP host>
    Accept: application/json
    Content-Type: application/json
    
    {
      "entity" : {
        "ProjectID": {
            "value": "TESTPR3"
        }
      }
    }
    ```

    A successful request returns the *202 Accepted* status code and the Location header with the URL that can be used to monitor the status of the request.

2.  Monitor the status of the operation until the system returns the *204 No Content* code.

    ```
    GET /entity/Default/25.200.001/Project/RunProjectBilling
        /status/6952c6d1-04be-4330-a26e-c6b855ba332c HTTP/1.1
    Host: <Acumatica ERP host>
    Accept: application/json
    Content-Type: application/json
    ```


## Usage Notes { .section}

By using the REST API, you can create pro forma invoices and send them by email. For details about pro forma invoices, see [Pro Forma Invoices: General Information](../Shared/../UserGuide/Projects_Pro_Forma_Invoices_GeneralInfo.md).

For a pro forma invoice to be created from a project, the project must have Customer, BillingRule, BillingPeriod, and NextBillingDate specified, and must have the *Active* status. Because of data validation in the project, NextBillingDate cannot be specified for a project with the *In Planning* status, and you cannot change the customer in a project with the *Active* status. Therefore, these settings can be specified only in multiple API calls, as shown in the code examples below.

A ProFormaInvoice entity can be created through the invocation of the RunProjectBilling action of the Project entity. Because email settings are not mapped to any fields of the Project entity, you have to prepare a project template with the specified email settings on the [Project Templates](../Shared/../UserGuide/PM_20_80_00.md) \(PM208000\) form and then use this template for the creation of the project through the API. The project template can also contain preconfigured project tasks, as is the case with the *PROGRESS* template, which is preconfigured in the *U100* dataset and used in this example. For details about project templates, see [Project Templates and Common Tasks: General Information](../Shared/../UserGuide/Projects_Templates_GeneralInfo.md).

You may use the following sequence of requests while creating pro forma invoices and sending them by email:

1.  [Create a Project from a Project Template](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Project_CreateFromTemplate.md)
2.  [Make a Project Active](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Project_Activate.md)
3.  [Specify the Next Billing Date for a Project](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Project_SetNextBillingDate.md)
4.  [Retrieve a Project Task](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_ProjectTask_Get.md)
5.  [Activate a Project Task](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_ProjectTask_Activate.md)
6.  [Specify the Progress of a Project Task](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_ProjectBudget_SetProgress.md)
7.  [Invoke Project Billing](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Project_InvokeBilling.md)
8.  [Retrieve the List of Pro Forma Invoices of a Project](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Project_GetProFormaInvoices.md)
9.  [Send a Pro Forma Invoice by Email](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_ProFormaInvoice_SendByEmail.md)

**Parent topic:**[Project](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Project.md)

