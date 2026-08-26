# Create Separate Shipments for Each Sales Order {#_03c70fe4-c9e5-4539-b156-352bef734b2a .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create separate shipments for multiple sales orders in a single API call.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

Also, in this example, two shipments will be created for two sales orders. Before you create shipments, you need to create two sales orders. You can do this on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form or through the contract-based REST API, as described in [Create a Sales Order with the Unit of Measure Specified](IntegrationDev_RESTExample_SalesOrder_CreateWithUOM.md). The sales orders must have the following settings.

**Tip:** If you use the `IntegrationDevelopmentGuide.postman_collection.json` Postman collection for testing, you do not need to perform the following configuration steps because they are performed in the pre-request script.

|Element|Sales Order 1|Sales Order 2|
|-------|-------------|-------------|
|**Order Type**|*SO*|*SO*|
|**Customer**|*GOODFOOD*|*GOODFOOD*|
|**Branch** column \(in the only row on the **Details** tab\)|*HEADOFFICE*|*HEADOFFICE*|
|**Inventory ID** column \(in the only row on the **Details** tab\)|*APJAM08*|*APJAM32*|
|**Quantity** column \(in the only row on the **Details** tab\)|`20`|`3`|
|**UOM** column \(in the only row on the **Details** tab\)|*PIECE*|*BOX*|
|**Warehouse** column \(in the only row on the **Details** tab\)|*WHOLESALE*|*WHOLESALE*|

## Request { .section}

You can use the following example of an HTTP request to create two separate shipments for the two sales orders that you created. In this example, the number of the first sales order is *000063*, and the number of the second sales order is *000064*; if the sales order you added has a different number, it should be used in the code.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Shipment?$expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": { "value": "GOODFOOD" },
    "Details": [
        {
            "OrderNbr": { "value": "000063" },
            "OrderType": { "value": "SO" }
        },
        {
            "OrderNbr": { "value": "000064" },
            "OrderType": { "value": "SO" }
        }
    ],
    "LocationID": { "value": "MAIN" },
    "Operation": { "value": "Issue" },
    "WarehouseID": { "value": "WHOLESALE" },
    "CreateNewShipmentForEveryOrder": { "value": true}
}
```

## Usage Notes { .section}

You set the `CreateNewShipmentForEveryOrder` field of the `Shipment` entity to *true* to specify that a separate shipment must be created for every sales order listed in `Details`. You set the `CreateNewShipmentForEveryOrder` field to *false* to specify that a single shipment must be created for all sales order listed in `Details`. The default value is *false*.

**Parent topic:**[Shipment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment.md)

