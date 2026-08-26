# Update Work Locations in the Employee Payroll Settings {#_32141c4a-d36c-439d-92ce-b25258455786 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can update the work locations in the employee payroll settings in Acumatica ERP.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Payroll* and *US Payroll* features are enabled.
5.  Update the work locations as follows:

    **Tip:** If you use the `IntegrationDevelopmentGuide.postman_collection.json` Postman collection for testing, you do not need to perform the following configuration steps because they are performed in the pre-request script.

    1.  On the [Work Locations](../Shared/../UserGuide/PR_10_10_40.md#) \(PR101040\) form, open the *BELLEVUE* work location.
    2.  Select the **Active** check box, and click **Save** on the form toolbar. Now the *BELLEVUE* work location can be specified in an employee payroll class.
6.  Execute the [Specify the Employee Payroll Settings](IntegrationDev_RESTExample_EmployeePayrollSettings_Update.md) request.

## Request { .section}

You can use the following HTTP request example to specify *BELLEVUE* as the work location in the payroll settings for the *EP00000004* employee.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/EmployeePayrollSettings?
    $expand=WorkLocations/WorkLocationDetails HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "EmployeeID": {
        "value": "EP00000004"
    },
    "WorkLocations": {
        "WorkLocationClassDefaults": {
            "value": false
        },
        "WorkLocationDetails": [
            {
                "LocationID": {
                    "value": "BELLEVUE"
                },
                "DefaultWorkLocation": {
                    "value": false
                }
            }
        ]
    }
}
```

**Parent topic:**[EmployeePayrollSettings](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_EmployeePayrollSettings.md)

