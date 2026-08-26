# Create a Purchase Order {#_81e5ec25-09f7-421a-8f80-01b6b71d38c9 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create purchase orders. For details about the management of purchase documents, see [Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md).

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following example of an HTTP request to create a purchase order and release it from hold at once.

```
PUT /entity/Default/25.200.001/PurchaseOrder?
    $expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "VendorID": { "value": "GOODFRUITS" },
    "Location": { "value": "MAIN" },
    "Details": [
        {
            "BranchID": { "value": "HEADOFFICE" },
            "InventoryID": { "value": "APPLES" },
            "OrderQty": { "value": 1 },
            "WarehouseID": { "value": "WHOLESALE" },
            "UOM": { "value": "LB" }
        }
    ],
    "Hold": { "value": false }
}
```

## Usage Notes { .section}

To create a purchase receipt from a purchase order, you can pass the purchase order number and purchase order type in a detail line of the purchase receipt.

You may use the following sequence of requests while creating a purchase receipt from a purchase order:

1.  [Create a Purchase Order](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PurchaseOrder_Create.md)
2.  [Create a Purchase Receipt from a Purchase Order](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PurchaseReceipt_Create.md)

**Parent topic:**[PurchaseOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PurchaseOrder.md)

