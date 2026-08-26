# Create a Sales Order with Allocations {#_256b7d10-b33e-8ad8-3d03-cd0009e91527 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create a sales order with allocations in a single API call.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management*, *Lot and Serial Tracking*, and *Advanced SO Invoices* features are enabled.

## Request { .section}

You can use the following example of an HTTP request to create a sales order with allocations in one call.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesOrder?
    $expand=Details,Details/Allocations HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": {"value": "COFFEESHOP"},
    "Description": {"value": "Sales Order with Allocations"},
    "Details": [
        {
            "InventoryID": {"value": "APJAM08"},
            "Allocations": [
                {
                    "Allocated": { "value": true },
                    "AllocWarehouseID": { "value": "WHOLESALE" },
                    "InventoryID": { "value": "APJAM08" },
                    "LotSerialNbr": { "value": "116046" },
                    "Qty": { "value": 1 }
                }
            ]
        }
    ],
    "Hold": {"value": true},
    "LocationID": {"value": "MAIN"},
    "OrderType": {"value": "SO"}
}
```

## Usage Notes { .section}

If you specify the values of the `Details/Allocations/Qty` fields of a detail line, do not specify the value of the `Details/OrderQty` field of the same line, so that no empty allocations appear in the created sales order.

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

