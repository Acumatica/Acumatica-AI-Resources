# Create a Payment for an Invoice and a Sales Order {#_b25e527e-8187-485e-9c8e-93aa5c2e8931 .concept}

By using the REST API, you can create an accounts receivable payment for an invoice and sales order in Acumatica ERP. You can view the created payments on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to create an AR payment for the *000002* invoice and *000036* sales order through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Payment HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Branch": { "value": "HEADOFFICE" },
    "CashAccount": { "value": "10200WH" },
    "CurrencyID": { "value": "USD" },
    "CustomerID": { "value": "GOODFOOD" },
    "Description": { "value": "Creating Payment for different doc types" },
    "PaymentMethod": { "value": "CHECK" },
    "Type": { "value": "Payment" },
    "DocumentsToApply": [
        {
            "DocType": { "value": "INV" },
            "DocLineNbr": { "value": "1" },
            "ReferenceNbr": { "value": "000002" }
        }
    ],
    "OrdersToApply": [
        {
            "OrderType": { "value": "SO" },
            "OrderNbr": { "value": "000036" }
        }
    ]
}
```

**Parent topic:**[Payment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Payment.md)

