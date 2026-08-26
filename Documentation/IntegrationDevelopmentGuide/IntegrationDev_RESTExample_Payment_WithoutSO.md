# Create a Payment Without an Invoice or a Sales Order {#_c19167f3-c627-4399-8a15-9e83a6a5259a .concept}

By using the REST API, you can create a payment that is not linked to an invoice or a sales order in Acumatica ERP. You can view the created payment on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You use the following example of an HTTP request to create a payment for the *FRUITICO* customer. In the request, you specify the payment amount and remove the payment from hold.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Payment HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CashAccount": {"value": "10250ST"},
    "CustomerID": {"value": "FRUITICO"},
    "Hold": {"value": false},
    "PaymentAmount": {"value": 235.27},
    "Type": {"value": "Payment"}
}
```

**Parent topic:**[Payment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Payment.md)

