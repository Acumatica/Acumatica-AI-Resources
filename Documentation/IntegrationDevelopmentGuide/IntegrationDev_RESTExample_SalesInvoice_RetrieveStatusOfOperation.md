# Retrieve the Status of the Release Operation {#_81f8a41c-db2e-4034-bae9-5fd92dc1564d .concept}

If you are using the REST API to integrate Acumatica ERP with an external system, this external system can release a sales invoice. After the release operation has been invoked through the REST API, you need to check the status of the operation, as described in this topic.

In Acumatica ERP, after the release operation has been invoked on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, the system displays the processing status on the form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.
4.  Remove the *INV000046* sales invoice from hold by completing the [Remove a Sales Invoice from Hold](IntegrationDev_RESTExample_SalesInvoice_RemoveHold.md) activity.
5.  Invoke the release operation by completing the [Invoke Release of an Invoice](IntegrationDev_RESTExample_SalesInvoice_Release.md) activity.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

Suppose that the `Location` header of the response for the request that invoked the release operation contains the following URL: *&lt;Acumatica ERP instance URL&gt;/entity/Default/25.200.001/SalesInvoice/ReleaseSalesInvoice/status/f84addec-dddd-4ec7-be5d-07a943263351*. You can use the following sample HTTP request to check the status of the release operation.

**Attention:** While the status returned by the request is `202 Accepted`, the operation is in progress. You should have a delay between the checks of the status of the operation so that the performance of the application is not impaired. The operation is completed when the `GET` request to this URL returns *204 No Content*.

```
GET /entity/Default/25.200.001/SalesInvoice
/ReleaseSalesInvoice/status/f84addec-dddd-4ec7-be5d-07a943263351 HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
```

**Parent topic:**[SalesInvoice](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesInvoice.md)

