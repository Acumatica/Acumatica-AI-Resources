# Create a Shipment for Two Sales Orders with Allocations and Package Specifications {#_ab83de33-505c-476e-b8b8-99f2a98e142c .concept}

By using the REST API, you can create a shipment with allocations and package specifications in a single API call.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management*, *Multiple Warehouse Locations*, and *Advanced SO Invoices* features are enabled.

Also, in this example, a shipment will be created for two sales orders. Before you create the shipment, you need to create two sales orders. You can do this on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form or through the REST API, as described in [Create a Sales Order with the Unit of Measure Specified](IntegrationDev_RESTExample_SalesOrder_CreateWithUOM.md). The sales orders must have the following settings.

**Tip:** If you use the `IntegrationDevelopmentGuide.postman_collection.json` Postman collection for testing, you do not need to perform the following configuration steps because they are performed in the pre-request script.

|Element|Sales Order 1|Sales Order 2|
|-------|-------------|-------------|
|**Order Type**|*SO*|*SO*|
|**Customer**|*GOODFOOD*|*GOODFOOD*|
|**Branch** column \(in the only row on the **Details** tab\)|*HEADOFFICE*|*HEADOFFICE*|
|**Inventory ID** column \(in the only row on the **Details** tab\)|*APJAM08*|*APJAM32*|
|**Quantity** column \(in the only row on the **Details** tab\)|`2`|`1`|
|**UOM** column \(in the only row on the **Details** tab\)|*PIECE*|*BOX*|
|**Warehouse** column \(in the only row on the **Details** tab\)|*WHOLESALE*|*WHOLESALE*|

## Request { .section}

You can use the following example of an HTTP request to create a shipment for the two sales orders that you created. For the first sales order \(in this example, its ID is *000071*; if the sales order you added has a different number, it should be used in the code\), you take one jar of jam from the *L2R3S1* location and another jar of jam from the *L3R2S1* location. For the second sales order \(in this example, its ID is *000072*; if the sales order you added has a different number, it should be used in the code\), you take jars of jam from the *L1R3S2* location. Also, you indicate that all jars of jam of both sales orders should be packed into one large box.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Shipment?
    $expand=Details,Details/Allocations,Packages,Packages/PackageContents 
    HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": { "value": "GOODFOOD" },
    "Details": [
        {
            "OrderNbr": { "value": "000071" },
            "OrderType": { "value": "SO" },
            "OrderLineNbr": { "value": 1 },
            "Allocations": [
                {
                    "InventoryID": { "value": "APJAM08" },
                    "LocationID": { "value": "L2R3S1" },
                    "Qty": { "value": 1 },
                    "UOM": { "value": "PIECE" }
                },
                {
                    "InventoryID": { "value": "APJAM08" },
                    "LocationID": { "value": "L3R2S1" },
                    "Qty": { "value": 1 },
                    "UOM": { "value": "PIECE" }
                }
            ]
        },
        {
            "OrderNbr": { "value": "000072" },
            "OrderType": { "value": "SO" },
            "OrderLineNbr": { "value": 1 },
            "Allocations": [
                {
                    "InventoryID": { "value": "APJAM32" },
                    "LocationID": { "value": "L1R3S2" },
                    "Qty": { "value": 6 },
                    "UOM": { "value": "PIECE" }
                }
            ]
        }
    ],
    "LocationID": { "value": "MAIN" },
    "Operation": { "value": "Issue" },
    "Packages": [
        {
            "BoxID": { "value": "LARGE" },
            "UOM": { "value": "KG" },
            "Weight": { "value": 15 },
            "PackageContents": [
                {
                    "InventoryID": { "value": "APJAM08" },
                    "LotSerialNbr": { "value": "" },
                    "Quantity": { "value": 1 },
                    "UOM": { "value": "PIECE" },
                    "OrigOrderType": { "value": "SO" },
                    "OrigOrderNbr": { "value": "000071" }
                },
                {
                    "InventoryID": { "value": "APJAM08" },
                    "LotSerialNbr": { "value": "" },
                    "Quantity": { "value": 1 },
                    "UOM": { "value": "PIECE" },
                    "OrigOrderType": { "value": "SO" },
                    "OrigOrderNbr": { "value": "000071" }
                },
                {
                    "InventoryID": { "value": "APJAM32" },
                    "LotSerialNbr": { "value": "" },
                    "Quantity": { "value": 6 },
                    "UOM": { "value": "PIECE" },
                    "OrigOrderType": { "value": "SO" },
                    "OrigOrderNbr": { "value": "000072" }
                }
            ]
        }
    ],
    "WarehouseID": { "value": "WHOLESALE" }
}
```

## Usage Notes { .section}

**Attention:**

If you intend to use the Picked field of the Shipment entity, note that its value may be incorrect in scenarios other than batch picking or wave picking.

**Parent topic:**[Shipment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment.md)

