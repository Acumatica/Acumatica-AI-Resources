# Release a Credit Memo {#_d15016e6-49c9-418c-8b91-543b3d4b9a33 .concept}

By using the REST API, you can release a credit memo. In Acumatica ERP, the successful execution of the request described in this topic changes the credit memo's status to *Open* on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
4.  Execute the [Create a Credit Memo](IntegrationDev_RESTExample_SalesInvoice_CreateCreditMemo.md) request to create a credit memo that will be released in this example.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following sample HTTP request to invoke the release operation for a credit memo. In this example, we assume that it has the *000123* reference number.

```
POST /entity/Default/25.200.001/SalesInvoice/ReleaseSalesInvoice HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "entity":{
        "Type": {"value": "Credit Memo"},
        "ReferenceNbr": {"value": "000123"}
    }
}
```

**Attention:** If the request returns the any of the following responses, the operation has failed:

-   `400 Bad Request`
-   `401 Unauthorized`
-   `500 Internal Server Error`

A response to the `POST` request with the `202 Accepted` status has the `Location` header. This header contains a URL that you should use to check the status of the operation by using the `GET` HTTP method. When the `GET` HTTP method with this URL returns `204 No Content`, the operation is completed. For more information, see [Execute an Action That Is Present in an Endpoint](IntegrationDev_RESTExample_Basic_Action_Execution.md).

**Parent topic:**[SalesInvoice](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesInvoice.md)

