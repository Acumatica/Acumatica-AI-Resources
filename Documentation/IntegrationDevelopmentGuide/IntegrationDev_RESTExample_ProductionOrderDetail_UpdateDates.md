# Update Dates in a Production Order {#_e037f35f-eae8-4e9d-9e2a-7df314d96fcc .concept}

By using the REST API, you can update dates in a production order and its operations in Acumatica ERP. You can view the details of the updated production order on the [Production Order Details](../UserGuide/AM_20_90_00.md) \(AM209000\) form.

## System Preparation { .section}

Before you test the code in the following section, you need to do the following:

1.  Deploy a new Acumatica ERP instance with the *SalesDemo* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Manufacturing* and *Advanced Planning and Scheduling* features are enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *PRODWHOLE* branch.

## Request { .section}

You can use the following request example to update dates in the *AM000037* production order through the REST API. This production order has the *On Hold* status. In the request, you do the following:

-   Change the scheduling method to *User Dates*
-   Change the start and end dates of the production order and the start and end dates of two operations of the production order
-   To identify the operations that should be updated, use the id field of the operation detail entities

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/MANUFACTURING/25.100.001/ProductionOrderDetail?
    $expand=Operations HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "EndDate": { "value": "2025-01-30T00:00:00+00:00" },
  "OrderType": { "value": "RO" },
  "ProductionNbr": { "value": "AM000037" },
  "SchedulingMethod": { "value": "User Dates" },
  "StartDate": { "value": "2025-01-08T00:00:00+00:00" },
  "Operations": [
    {
      "id": "798e7128-ac8a-ec11-817b-9b18f6aae9b8",
      "OperationNbr": { "value": "0010" },
      "WorkCenter": { "value": "WC70" },
      "EndDate": { "value": "2025-01-30T00:00:00+00:00" },
      "StartDate": { "value": "2025-01-08T00:00:00+00:00" }
    },
    {
      "id": "838e7128-ac8a-ec11-817b-9b18f6aae9b8",
      "OperationNbr": { "value": "0030" },
      "WorkCenter": { "value": "WC10" },
      "EndDate": { "value": "2025-01-30T00:00:00+00:00" },
      "StartDate": { "value": "2025-01-08T00:00:00+00:00" }
    }
  ]
}
```

## Usage Notes { .section}

By using this request, you can modify dates in a production order that has the *On Hold* status. You need to change the scheduling method of the production order to *User Dates* in the request, if the production order does not already have this scheduling method.

You can modify dates in production orders with the *On Hold*, *Planned*, *Released*, or *In Process* statuses by using the ProductionOrderDatesProcess entity, as described in [Update Dates in Production Orders](IntegrationDev_RESTExample_ProductionOrderDatesProcess_UpdateDates.md).

**Parent topic:**[ProductionOrderDetail](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_ProductionOrderDetail.md)

