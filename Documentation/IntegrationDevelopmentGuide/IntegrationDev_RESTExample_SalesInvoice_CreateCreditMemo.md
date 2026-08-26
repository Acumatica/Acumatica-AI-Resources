# Create a Credit Memo {#_c3ade0ab-d6d9-450c-b386-9a9aac911e82 .concept}

By using the REST API, you can create a credit memo in Acumatica ERP. You can view this credit memo on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

## Request { .section}

You can use the following request example to create a credit memo through the REST API. This credit memo will be created for the return of the following:

-   All units of the item listed in the *000005* invoice
-   All units of the item listed in line *1* of the *000008* invoice
-   50 units of the item listed in line *2* of the *000012* invoice

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesInvoice?$expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": { "value": "GOODFOOD" },
    "Details": [
        {
            "OrigInvNbr": { "value": "000005" },
            "OrigInvType": { "value": "Invoice" }
        },
        {
            "OrigInvNbr": { "value": "000008" },
            "OrigInvType": { "value": "Invoice" },
            "OrigInvLineNbr": { "value": 1 }
        },
        {
            "OrigInvNbr": { "value": "000012" },
            "OrigInvType": { "value": "Invoice" },
            "OrigInvLineNbr": { "value": 2 },
            "Qty": { "value": 50 }
        }
    ],
    "LocationID": { "value": "MAIN" },
    "Project": { "value": "X" },
    "Type": { "value": "Credit Memo" }
}
```

**Parent topic:**[SalesInvoice](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesInvoice.md)

