# Retrieve the List of Attachments of a Stock Item {#_1dbebf78-72af-41c0-be5a-e771f2e5dda7 .concept}

By using the REST API, you can retrieve the attachments of a stock item. For example, in an online store, you may need to display an image of each item that is sold in the store. Images for the items can be stored in Acumatica ERP as attachments to the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form. To display an image of a stock item in the online store, you should retrieve the list of images that are attached to the stock item and then export the needed image as described in [Retrieve the File Attached to a Stock Item](IntegrationDev_RESTExample_StockItem_GetFile.md).

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following request example to retrieve the URL of the attachment of the *AAMACHINE1* stock item through the REST API.

```
GET /entity/Default/25.200.001/StockItem/AAMACHINE1?
    $select=InventoryID,files&$expand=files HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

## Response { .section}

The response of the successful request contains the `200 OK` status code and includes in the body the links to the files attached to the stock item record, as the following code example shows.

```language-json
{
    "id": "2acd2eed-1614-e511-9b82-c86000dddf0b",
    "rowNumber": 1,
    "note": {
        "value": ""
    },
    "InventoryID": {
        "value": "AAMACHINE1"
    },
    "custom": {},
    "_links": {
        "self": ...,
        "files:put": ...
    },
    "files": [
        {
            "id": "9be45eb7-f97d-400b-96a5-1c4cf82faa96",
            "filename": "Stock Items (AAMACHINE1)\\T2MCRO.jpg",
            "href": "/<Acumatica ERP instance name>/entity/Default/
                25.200.001/files/9be45eb7-f97d-400b-96a5-1c4cf82faa96"
        }
    ]
}
```

**Parent topic:**[StockItem](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_StockItem.md)

