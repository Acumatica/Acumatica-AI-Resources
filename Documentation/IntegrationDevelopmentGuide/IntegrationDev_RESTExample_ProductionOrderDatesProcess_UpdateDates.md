# Update Dates in Production Orders {#_80787b47-28fa-4ce7-b5d5-84a3f843eed7 .concept}

By using the REST API, you can update dates in multiple production orders and their operations in Acumatica ERP. You can view the settings of any updated production order on the [Production Order Details](../UserGuide/AM_20_90_00.md) \(AM209000\) form.

## System Preparation { .section}

Before you test the code in the following section, you need to do the following:

1.  Deploy a new Acumatica ERP instance with the *SalesDemo* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Manufacturing* and *Advanced Planning and Scheduling* features are enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *PRODWHOLE* branch.
5.  Change the scheduling method of the *AM000037* production order to *User Dates*. You can do this manually or execute the request from the [Update Dates in a Production Order](IntegrationDev_RESTExample_ProductionOrderDetail_UpdateDates.md) example.

## Request { .section}

You can use the following request example to update dates in the *AM000037* production order through the REST API. \(Here we update only one production order, but you can use a similar request to update multiple ones.\) This production order has the *On Hold* status and the *User Dates* scheduling method.

In the request, you change the start and end dates of the production order and the start and end dates of two operations of the production order. To identify the operations that should be updated, you use the id field of the operation detail entities.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/MANUFACTURING/25.100.001/ProductionOrderDatesProcess?
    $expand=Orders,Orders/Operations HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "Orders": [
    {
      "EndDate": { "value": "2026-01-30T00:00:00+00:00" },
      "OrderType": { "value": "RO" },
      "ProductionNbr": { "value": "AM000037" },
      "StartDate": { "value": "2024-01-08T00:00:00+00:00" },
      "Operations": [
        {
          "id": "798e7128-ac8a-ec11-817b-9b18f6aae9b8",
          "OperationNbr": { "value": "0010" },
          "WorkCenter": { "value": "WC70" },
          "EndDate": { "value": "2026-01-30T00:00:00+00:00" },
          "StartDate": { "value": "2024-01-08T00:00:00+00:00" }
        },
        {
          "id": "838e7128-ac8a-ec11-817b-9b18f6aae9b8",
          "OperationNbr": { "value": "0030" },
          "WorkCenter": { "value": "WC10" },
          "EndDate": { "value": "2026-01-30T00:00:00+00:00" },
          "StartDate": { "value": "2024-01-08T00:00:00+00:00" }
        }
      ]
    }
  ]
}
```

## Usage Notes { .section}

You can use this request to update dates in multiple production orders and operations in a single request. You can modify dates in production orders that satisfy the following requirements:

-   Each production order has the *On Hold*, *Planned*, *Released*, or *In Process* status.
-   The scheduling method of each production order is *User Dates*.

You do not need to put these production orders on hold before the modification of dates, as you would need to do if you were updating dates by using the ProductionOrder entity.

**Parent topic:**[ProductionOrderDatesProcess](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_ProductionOrderDatesProcess.md)

