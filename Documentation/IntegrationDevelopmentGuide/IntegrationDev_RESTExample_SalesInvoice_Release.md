# Invoke Release of an Invoice {#_059b3f37-ba97-4c37-8fdd-6e2e5c292b10 .concept}

If you are using the REST API to integrate Acumatica ERP with an external system, this external system can release a sales invoice. For example, the external system can release a sales invoice in Acumatica ERP when a user confirms the sales invoice in the external system.

In Acumatica ERP, the successful execution of the request described in this topic changes the value in the **Status** box on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form to *Open*.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.
4.  Remove the *INV000046* sales invoice from hold by completing the [Remove a Sales Invoice from Hold](IntegrationDev_RESTExample_SalesInvoice_RemoveHold.md) activity.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following sample HTTP request to invoke the release operation for the *INV000046* sales invoice.

```
POST /entity/Default/25.200.001/SalesInvoice/ReleaseSalesInvoice HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "entity":{
        "Type": {"value": "Invoice"},
        "ReferenceNbr": {"value": "INV000046"}
        }
}
```

**Attention:** If the request returns the `400 Bad Request`, `401 Unauthorized`, or `500 Internal Server Error` response, the operation has failed.

A response to the `POST` request with the `202 Accepted` status has the `Location` header, which contains a URL that you should use to check the status of the operation by using the `GET` HTTP method. When the `GET` HTTP method with this URL returns `204 No Content`, the operation is completed. For more information, see [Execute an Action That Is Present in an Endpoint](IntegrationDev_RESTExample_Basic_Action_Execution.md).

**Parent topic:**[SalesInvoice](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesInvoice.md)

