# Create a Purchase Order with Tax Parameters Overridden {#_2f21e62f-ccff-41ea-b6be-434fa46448a0 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create purchase orders. In the orders, these systems can override the tax details that are calculated by the system.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following example of an HTTP request to create a purchase order and set the amount of the *NYSTATETAX* tax to *0*.

```
PUT /entity/Default/25.200.001/PurchaseOrder?
    $expand=Details,TaxDetails HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Branch": { "value": "HEADOFFICE" },
    "Details": [
        {
            "BranchID": { "value": "HEADOFFICE" },
            "InventoryID": { "value": "APPLES" },
            "LineType": { "value": "Goods for IN" },
            "OrderQty": { "value": 20 },
            "OrderType": { "value": "RO" },
            "TaxCategory": { "value": "TAXABLE" },
            "UnitCost": { "value": 2.29 },
            "UOM": { "value": "LB" },
            "WarehouseID": { "value": "WHOLESALE" }
        }
    ],
    "Hold": { "value": true },
    "IsTaxValid":  { "value": true },
    "Location": { "value": "MAIN" },
    "TaxDetails": [
        {
            "TaxableAmount": { "value": 45.8 },
            "TaxAmount": { "value": 0 },
            "TaxID": { "value": "NYSTATETAX" },
            "TaxRate": { "value": 0 }
        }
    ],
    "Terms": { "value": "30D" },
    "Type": { "value": "Normal" },
    "VendorID": { "value": "ALLFRUITS" },
    "VendorTaxZone": { "value": "NYZONE" }
}
```

## Usage Notes { .section}

If the `IsTaxValid` field is specified in the request body, its value is set to *true*, and an external tax zone is specified, then the tax details from the request body are used without modification, and no other taxes are applied.

If the `IsTaxValid` field is specified in the request body, its value is set to *true*, and an internal tax zone is specified, then the tax details from the request body are compared to those calculated by the system. If the taxes specified in the request body are present among those calculated by the system, then the tax details from the request body are used without modification and no other taxes are applied.

If the `IsTaxValid` field is not specified in the request body or its value is not set to *true*, tax calculation is performed by the system.

**Parent topic:**[PurchaseOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PurchaseOrder.md)

