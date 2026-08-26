# Get General Ledger Transactions for Some Period {#_249c70a0-0f08-4a02-a80c-6a9e4c4cc0fe .concept}

By using the REST API, you can retrieve general ledger transactions for the specified period from Acumatica ERP. The system retrieves this data from the Account Details for Period \(GL404001\) inquiry form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to retrieve general ledger transactions made from March to April 2023 through the REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/AccountDetailsForPeriodInquiry?
    $expand=Results HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "FromPeriod": { "value": "032023" },
    "ToPeriod": { "value": "042023" }
}
```

**Parent topic:**[AccountDetailsForPeriodInquiry](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_AccountDetailsForPeriodInquiry.md)

