# Add a Note to a Stock Item {#_1018ddb6-686c-4a39-819c-2aea70eb8dfe .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can add a note to a stock item.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.

## Request { .section}

You can use the following request example to add the *My note* note to the *AALEGO500* stock item through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/StockItem?
    $select=InventoryID HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
 "InventoryID": {"value": "AALEGO500"},
 "note": {"value": "My note"}
}
```

## Usage Notes { .section}

To add a note to a detail line of a document, you use the same approach that you use to add notes to top-level entities. That is, for the contract-based REST API, you specify the value of the note system field of the detail entity. For example, to add a note to a warehouse detail line of a stock item, you specify the value of the note system field of the StockItemWarehouseDetail entity, which is a detail entity of the StockItem entity. You identify the detail line that should be updated by using the values of key fields or by using the entity ID.

**Parent topic:**[StockItem](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_StockItem.md)

