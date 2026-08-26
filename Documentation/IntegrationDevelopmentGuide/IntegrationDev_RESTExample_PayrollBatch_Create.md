# Create a Payroll Batch {#_5ef0cd45-418d-496b-8d03-7f2d2a67a52b .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create a payroll batch in Acumatica ERP.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Payroll* and *US Payroll* features are enabled.
5.  On the [Pay Groups](../UserGuide/PR_20_50_00.md#) \(PR205000\) form, make sure that the *MONTHLY* pay group exists.
6.  On the [Pay Periods](../UserGuide/PR_20_10_00.md#) \(PR201000\) form, create the *03-2024* pay period, or make sure that it already exists.

## Request { .section}

You can use the following request example to create a payroll batch for the *MONTHLY* pay group and *03-2023* pay period through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/PayrollBatch HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "PayrollType": { "value": "Regular" },
    "PayGroup": { "value": "MONTHLY" },
    "Description": { "value": "Test New Batch" },
    "Hold": { "value": false },
    "PayPeriod": { "value": "032024" }
}
```

**Parent topic:**[PayrollBatch](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PayrollBatch.md)

