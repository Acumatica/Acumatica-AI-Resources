# Create a PTO Bank {#_3b1124b1-845c-4b5a-9359-030b67987ad8 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create a paid time off \(PTO\) bank in Acumatica ERP.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Payroll* and *US Payroll* features are enabled.
5.  Modify the earning type code as follows:

    **Tip:** If you use the `IntegrationDevelopmentGuide.postman_collection.json` Postman collection for testing, you do not need to perform the following configuration steps because they are performed in the pre-request script.

    1.  On the [Earning Type Codes](../UserGuide/PR_10_20_00.md#) \(PR102000\) form, open the *HL* earning type code \(which represents public holidays\).
    2.  Change the settings of the earning type code as follows:
        -   **Earning Type Category**: *Time Off*
        -   **Regular Time Type Code**: *RG*
    3.  Save your changes.

## Request { .section}

You can use the following request example to create a holiday PTO bank through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/PTOBank?
    $expand=PayrollDefaults/WorkLocations,PTODefaults HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "PTOBankID": { "value": "TST" },
    "Description": { "value": "Test PTO Bank" },
    "Active": { "value": "false" },
    "BankStartDate": { "value": "01/01/2019" },
    "DisbursingEarningCode": { "value": "HL" },
    "CreateFinTransactions": { "value": "true" }
}
```

**Parent topic:**[PTOBank](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PTOBank.md)

