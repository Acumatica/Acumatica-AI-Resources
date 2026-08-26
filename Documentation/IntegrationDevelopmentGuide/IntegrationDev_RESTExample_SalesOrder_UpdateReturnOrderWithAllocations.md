# Update Allocations in a Return for Credit {#_0933c953-e3c7-427d-a851-b32731cf77a2 .concept}

By using the REST API, you can update allocations in a return for credit in Acumatica ERP \(that is, a sales order of the *RC* type\). You may need to update allocations if multiple units of the returned item had different lot or serial numbers assigned. You can view the updated return for credit on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *SalesDemo* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* and *Lot and Serial Tracking* features are enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *PRODWHOLE* branch.
5.  Execute the request that is described in [Create a Return for Credit for Items with Lot or Serial Numbers](IntegrationDev_RESTExample_SalesOrder_CreateReturnOrderWithAllocations.md).

## Request { .section}

You can use the following request example to update allocations in a return for credit through the REST API. In this example, you will update the *AR013967* return for credit, which was created in [Create a Return for Credit for Items with Lot or Serial Numbers](IntegrationDev_RESTExample_SalesOrder_CreateReturnOrderWithAllocations.md), as follows:

-   You identify the detail line to be updated by using the inventory ID, invoice number, and line number.
-   You identify the allocation line to be updated by using the line number, split line number, order number, and order type. \(You can obtain these values from the return for credit that you have retrieved by using the REST API.\)

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesOrder?
  $expand=Details,Details/Allocations HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "OrderNbr": { "value": "AR013967" },
    "OrderType": { "value": "RC" },
    "Details": [
        {
            "InventoryID": { "value": "FOODTEA06" },
            "InvoiceNbr": { "value": "AR013584" },
            "LineNbr": { "value": 3 },
            "Allocations": [
                {
                    "LineNbr": { "value": 3 },
                    "LotSerialNbr": { "value": "LREX15098" },
                    "OrderNbr": { "value": "AR013967" },
                    "OrderType": { "value": "RC" },
                    "SplitLineNbr": { "value": 5 }
                }
            ],
            "WarehouseID": { "value": "WHOLESALE" }
        }
    ]
}
```

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

