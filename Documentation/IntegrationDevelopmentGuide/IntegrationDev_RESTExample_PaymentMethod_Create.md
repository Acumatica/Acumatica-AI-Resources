# Create a Payment Method

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create a payment method in Acumatica ERP.

## System Preparation

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request

You can use the following request example to create a payment method that uses cash or checks through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/26.200.001/PaymentMethod?$expand=AllowedCashAccounts HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Active": { "value": false },
    "Description": { "value": "Test Method" },
    "IntegratedProcessing": { "value": false },
    "MeansOfPayment": { "value": "Cash/Check" },
    "PaymentMethodID": { "value": "TST" },
    "SettingsForPR": {
        "PRProcessing": { "value": "Print Checks" },
        "Report": { "value": "PR641010" }
    },
    "UseInPR": { "value": true },
    "UseInAP": { "value": false },
    "UseInAR": { "value": false },
    "RequireRemittanceInformationforCashAccount": { "value": false },
    "AllowedCashAccounts": [
        {
            "CashAccount": { "value": "10200WH" },
            "Description": { "value": "Company Checking Account" },
            "Branch": { "value": "HEADOFFICE" },
            "APDefault": { "value": false },
            "APLastRefNbr": { "value": "3202" },
            "APSuggestNextNbr": { "value": false },
            "UseInPR": { "value": true }
        }
    ]
}
```

**Parent topic:**[PaymentMethod](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PaymentMethod.md)

