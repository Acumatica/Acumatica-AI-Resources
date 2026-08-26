# Create a Deduction Code {#_a459adbc-562f-421e-8d41-1445e9942452 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create a deduction code in Acumatica ERP.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Payroll* and *US Payroll* features are enabled.

## Request { .section}

You can use the following request example to create a deduction code through the contract-based REST API. The created deduction code will be an employee deduction and associated with employee settings.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/DeductionBenefitCode HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "DeductionBenefitCodeID": { "value": "TST" },
    "Description": { "value": "Test deduction" },
    "ContributionType": { "value": "DED" },
    "Active": { "value": false },
    "AssociatedWith": { "value": "Employee Settings" },
    "EmployeeDeduction": {
        "CalculationMethod": { "value": "GRS" },
        "Percent": { "value": 20 },
        "ApplicableEarnings": { "value": "TOT" }
    },
    "GLAccounts": {
        "DeductionLiabilityAccount": { "value": "20000" },
        "DeductionLiabilitySub": { "value": "000000" }
    }
}
```

**Parent topic:**[DeductionBenefitCode](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_DeductionBenefitCode.md)

