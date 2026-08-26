# Release Retainage {#_08780d31-7ad7-4f6f-9c54-2e12a9533116 .concept}

In some industries, such as construction, it’s common to withhold a portion of the contract amount until the project has been completed to ensure that the vendor will satisfy its obligations. By using the REST API, you can process bills and debit adjustments with retained amounts, including creating retainage documents \(that is, releasing retainage\) on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form. For details about releasing retainage, see [Processing AP Documents with Retainage](../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md).

## System Preparation { .section}

Before you test the code below, you need to configure your client application and the Acumatica ERP instance to be used as follows:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Retainage Support* feature is enabled.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
4.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to create a retainage bill in the amount of $500 through the REST API. In the example, you specify *April 1, 2026* as the business date. As a result of this request, a new bill is created on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form with the **Retainage Document** check box selected.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/Default/25.200.001/Bill/ReleaseRetainage HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
PX-CbApiBusinessDate: 2026/04/01

{
    "entity": {
        "Type": {
            "value": "Bill"
        },
        "ReferenceNbr": {
            "value": "000072"
        }
    },
    "parameters": {
        "Date": {
            "value": "2026-03-01T11:00:00.000Z"
        },
        "PostPeriod": {
            "value": "032026"
        },
        "AmtToRelease": {
            "value": 500
        }
    }
}
```

## Usage Notes { .section}

In the body of the request, you can identify the entity by using the entity ID or the key fields, which are the following:

-   Type: The type of the document, which can be one of the following: *Bill*, *Debit Adj.*
-   ReferenceNbr: The number that identifies the AP document in the system

In the body of the request, you specify the following parameters of the ReleaseRetainage action:

-   Date: Required. The date of the created AP retainage document.
-   PostPeriod: Required. The post period of the created AP retainage document.
-   AmtToRelease: Optional. The retained amount to be released. If AmtToRelease is not specified, the AP retainage document is created in the amount of 100% of the unreleased retainage from each line in the original document. An error is returned as a result of the action execution in any of the following cases:

    -   If the unreleased retainage amount of the document is less than the specified AmtToRelease value
    -   If AmtToRelease is greater than 0 and the AP document for which the action is executed has the **Pay by Line** check box selected on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form
    -   If AmtToRelease is less than or equal to 0

You can use the Bill.RetainageDocuments detail entity to obtain the information about the retainage documents of a bill.

**Parent topic:**[Bill](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Bill.md)

