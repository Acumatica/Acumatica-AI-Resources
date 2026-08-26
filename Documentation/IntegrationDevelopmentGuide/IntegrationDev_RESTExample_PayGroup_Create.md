# Create a Pay Group {#_1ca369ae-12e2-47d8-8a57-9245efe649a8 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create a pay group in Acumatica ERP.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Payroll* and *US Payroll* features are enabled.

## Request { .section}

You can use the following request example to create a pay group through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/PayGroup HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "PayGroupID": { "value": "NewGroup" },
    "PayGroupName": { "value": "New Group Name" },
    "BenefitExpenseAccount": { "value": "69600" },
    "BenefitExpenseSub": { "value": "000000" },
    "BenefitLiabilityAccount": { "value": "20300" },
    "BenefitLiabilitySub": { "value": "000000" },
    "DeductionLiabilityAccount": { "value": "20300" },
    "DeductionLiabilitySub": { "value": "000000" },
    "EarningsAccount": { "value": "51000" },
    "EarningsSub": { "value": "000000" },
    "TaxExpenseAccount": { "value": "65100" },
    "TaxExpenseSub": { "value": "000000" },
    "TaxLiabilityAccount": { "value": "20300" },
    "TaxLiabilitySub": { "value": "000000" },
    "IsDefault": { "value": false }
}
```

**Parent topic:**[PayGroup](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PayGroup.md)

