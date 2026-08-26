# Retrieve the Available Quantity of an Inventory Item {#_3cb31af0-05a3-4d3c-8fda-bfffd65d61a2 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can retrieve from Acumatica ERP the available quantity of an inventory item. This quantity is provided by the Available Quantity by Inventory Item \(GI640590\) generic inquiry, which is available for the external systems through the `InventoryQuantityAvailable` entity of the *Default/25.200.001* endpoint.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to retrieve the aggregated quantity of an inventory item through the contract-based REST API. You will retrieve the quantity of the *APJAM08* inventory item that was available on June 7, 2024.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/InventoryQuantityAvailable?
    $expand=Results HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "InventoryID": { "value": "APJAM08" },
    "LastModifiedDateTime": { "value": "6/7/2024" }
}
```

## Usage Notes { .section}

You use the following fields of the InventoryQuantityAvailable entity:

-   InventoryID: The identifier of the inventory item for which the available quantity is retrieved
-   LastModifiedDateTime: The date and time for which the available quantity of the inventory item is retrieved

**Parent topic:**[InventoryQuantityAvailable](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_InventoryQuantityAvailable.md)

