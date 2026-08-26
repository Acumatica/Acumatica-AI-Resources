# Create a Sales Order with the Unit of Measure Specified {#_2d5fae3b-463b-4262-bb44-1a9fb571b998 .concept}

By using the REST API, you can create sales orders and specify the units of measure for the sales order items.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

## Request { .section}

You can use the following example of an HTTP request to create a sales order of two small jars of jam. The unit of measure for the sales order item is *PIECE*.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesOrder?
    $expand=Details&
    $select=CustomerID,Details/Branch,Details/InventoryID,
    Details/OrderQty,OrderNbr HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": { "value": "GOODFOOD" },
    "Details": [
        {
            "Branch": { "value": "HEADOFFICE" },
            "InventoryID": { "value": "APJAM08" },
            "OrderQty": { "value": 2 },
            "UOM": { "value": "PIECE" },
            "WarehouseID": { "value": "WHOLESALE" }
        }
    ]
}
```

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

