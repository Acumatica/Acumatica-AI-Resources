# Create a Payment with a Credit Card Transaction Imported from Another System {#_5c4e9c95-bb85-4bba-80ee-75f4d8dfe777 .concept}

You can use the contract-based REST API to make an external system create an accounts receivable payment in Acumatica ERP. This AR payment can include a credit card transaction imported from another system. You can view the created payments on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to create an AR payment with a credit card transaction imported from another system through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Payment HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": {
        "value": "HMBAKERY"
    },
    "PaymentAmount": {
        "value": 123.0000
    },
    "PaymentMethod": {
        "value": "VISA"
    },
    "CreditCardTransactionInfo": [
        {
            "TranNbr": {
                "value": "112224543839510314532923"
            },
            "TranType": {
                "value": "Authorize Only"
            },
            "NeedsValidation": {
                "value": true
            },
            "AuthNbr": {
                "value": "ebd4c8"
            }
        }
    ]
}
```

## Usage Notes { .section}

You specify the following information about a credit card transaction in the request body:

-   TranNbr: The transaction ID from the credit card processing center.
-   TranType: The credit card transaction type.
-   NeedsValidation: An indicator of whether validation of the credit card transaction should be deferred. If the value is *true*, the payment will receive the *Pending Processing* status. During further transaction processing, the system will send a request to the processing center for verification of the data received through the API.
-   AuthNbr: The authorization number from the credit card processing center.

**Parent topic:**[Payment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Payment.md)

