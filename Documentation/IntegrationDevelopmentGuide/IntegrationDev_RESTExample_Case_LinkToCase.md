# Link a Case to Another Case {#_adea49ab-d958-4dd2-95aa-70e078564b07 .concept}

By using the REST API, you can create cases on the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form and link them to another case defined in Acumatica ERP. For details about the relations between cases, see [Case Management: General Information](../UserGuide/CRM_Support_Managing_Cases_GeneralInfo.md).

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to create a case and link it to another case through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Case?
  $expand=RelatedCases HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "ClassID": {
        "value": "SERVCONS"
    },
    "BusinessAccount": {
        "value": "GOODFOOD"
    },
    "Subject": {
        "value": "Billing plan"
    },
    "RelatedCases": [
        {
            "CaseID": {
                "value": "000004"
            }
        }
    ]
}
```

## Usage Notes { .section}

To create a case and establish its relation with another case, you need to specify the case ID of the related case by using the CaseID field of the RelatedCases detail entity of the Case entity.

**Attention:** The ParentCaseID field of the RelatedCases detail entity of the Case entity is never returned by the system and cannot be used for the assignment of values.

**Parent topic:**[Case](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Case.md)

