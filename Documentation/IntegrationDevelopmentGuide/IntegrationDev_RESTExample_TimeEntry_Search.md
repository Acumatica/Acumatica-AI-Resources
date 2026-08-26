# Search for Time Entries by Date {#_3127b81c-8f59-4051-9f1a-db0896e3b5af .concept}

Through the contract-based REST API, the time spent on project tasks can be retrieved from Acumatica ERP to an external system. For more information about tracking time on projects, see [Employee Time Billing: General Information](../UserGuide/Projects_Tracking_Time_GeneralInfo.md).

## System Preparation { .section}

Before you test the code below, you need to configure your client application and the Acumatica ERP instance to be used as follows:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Projects* feature is enabled.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
4.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to obtain time entries through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/TimeEntry?
    $filter=cf.DateTime(f='Items.Date') ge datetimeoffset'2024-10-23' 
        and cf.DateTime(f='Items.Date') le 
            datetimeoffset'2024-10-25T23%3A59%3A59.999%2B04%3A00'&
    $select=Date,ProjectID,TimeSpent,BillableTime HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

## Usage Notes { .section}

To filter time entries by date, you cannot use the TimeEntry.Date field of the system endpoint. Instead of this field, you should use the custom Items.Date field, as shown in this example.

**Parent topic:**[TimeEntry](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_TimeEntry.md)

