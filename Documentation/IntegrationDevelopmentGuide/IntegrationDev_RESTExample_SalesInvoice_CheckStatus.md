# Check the Status of a Sales Invoice {#_065b0a2b-014f-47d5-8c0f-8a6b8060d91c .concept}

If you are using the REST API to integrate Acumatica ERP with an external system, this external system may need to check the status of a sales invoice. For example, the external system may need to check the status of a sales invoice after the release operation has been performed for it.

In Acumatica ERP, after the release operation has been completed on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, the sales invoice has the *Open* status, which is specified in the **Status** box.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.
4.  Remove the *INV000046* sales invoice from hold by completing [Remove a Sales Invoice from Hold](IntegrationDev_RESTExample_SalesInvoice_RemoveHold.md).
5.  Invoke the release operation by completing [Invoke Release of an Invoice](IntegrationDev_RESTExample_SalesInvoice_Release.md).
6.  Make sure the operation has completed successfully by completing [Retrieve the Status of the Release Operation](IntegrationDev_RESTExample_SalesInvoice_RetrieveStatusOfOperation.md).

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following sample HTTP request to check the status of the sales invoice after the release operation.

```
GET /entity/Default/25.200.001/SalesInvoice/Invoice/INV000046
    ?$select=ReferenceNbr,Type,Status HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[SalesInvoice](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesInvoice.md)

