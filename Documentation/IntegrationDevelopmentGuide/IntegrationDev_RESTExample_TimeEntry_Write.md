# Write Employee Time Activities {#_26ffd94a-ac96-4684-a03c-9676a5446211 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can write the time spent on the tasks of projects to Acumatica ERP. For more information about tracking time on projects, see [Employee Time Billing: General Information](../UserGuide/Projects_Tracking_Time_GeneralInfo.md).

## System Preparation { .section}

Before you test the code below, you configure your client application and the Acumatica ERP instance to be used as follows:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md) in the Installation Guide.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Projects Accounting* and *Time Management* features are enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  Sign in as *gibbs* with the *123* password to the instance in the client application by using the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

## Request { .section}

You can use the following request example to track time through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/TimeEntry HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "Summary" : {"value" : "Time entry summary"},
  "Date" : {"value" : "2024-10-24T10:05:00.000+11:00" },
  "Employee" : {"value" : "EP00000026" },
  "ProjectID" : {"value" : "TOMYUM1" },
  "ProjectTaskID" : {"value" : "PHASE1" },
  "CostCode" : {"value" : "00-000" },
  "EarningType" : {"value" : "RG" },
  "TimeSpent" : {"value" : "01:30" },
  "BillableTime" : {"value" : "00:30" },
  "TimeZone" : {"value" : "(GMT+10:00) Canberra, Melbourne, Sydney"}
}
```

## Usage Notes { .section}

The TimeSpent, BillableTime, and BillableOvertime fields of the TimeEntry entity have the StringValue type. These fields accept values in the following format:*hh:mm*, where *hh* is the number of hours, and *mm* is the number of minutes.

The TimeEntryID field has the GuidValue type; however, its value is a sequentially generated string that looks like a GUID. Therefore, the global uniqueness of the values is not guaranteed.

The TimeZone field defines the time zone in which the Date is specified.

**Parent topic:**[TimeEntry](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_TimeEntry.md)

