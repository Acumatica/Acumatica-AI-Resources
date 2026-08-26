# Override Values in the Item–Warehouse Details {#_0c8c324e-bc48-4390-a0dc-806cb830a537 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can specify item–warehouse details, mark particular fields as overridden, and set new values for these fields.

## System Preparation { .section}

Before you test the code below, you do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md) in the Installation Guide.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure the *Inventory and Order Management*, *Inventory*, and *Multiple Warehouses* features are enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name that you specified when you created the instance and the *HEADOFFICE* branch.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following example of an HTTP request to specify item–warehouse details for the *APPLES* inventory item and the *RETAIL* warehouse. This request marks the `MaxQty`, `ReorderPoint`, and `SafetyStock` fields as overridden and specifies their new values. The specification of the new values for the `MSRP`, `ReplenishmentMethod`, `ReplenishmentSource`, `Seasonality`, `PreferredLocation`, `PreferredVendor`, and `ServiceLevel` fields in the request body has no effect because these fields are not marked as overridden.

```
PUT /entity/Default/25.200.001/ItemWarehouse HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "InventoryID": { "value": "APPLES" },
    "OverrideMaxQty": { "value": true },
    "MaxQty": { "value": 2222 },
    "OverridePrice": { "value": false },
    "MSRP": { "value": 600 },
    "OverrideReorderPoint": { "value": true },
    "ReorderPoint": { "value": 14 },
    "ReplenishmentClass": { "value": "PURCHASE" },
    "OverrideReplenishmentSettings": { "value": false },
    "ReplenishmentMethod": { "value": "Min./Max." },
    "ReplenishmentSource": { "value": "Purchase" },
    "Seasonality": { "value": "NONE" },
    "OverrideSafetyStock": { "value": true },
    "SafetyStock": { "value": 244 },
    "PreferredLocation": { "value": "MAIN" },
    "PreferredVendor": { "value": "ALLFRUITS" },
    "ServiceLevel": { "value": 87 },
    "WarehouseID": { "value": "RETAIL" }
}
```

**Parent topic:**[ItemWarehouse](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_ItemWarehouse.md)

