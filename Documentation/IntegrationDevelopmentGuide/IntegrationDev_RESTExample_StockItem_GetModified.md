# Retrieve the List of Modified Stock Items {#_4c926eea-91fb-44e1-a48c-737b6a6f04cb .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can retrieve the list of stock items that have been modified within a particular period.

You will use the `GET` HTTP method and the StockItem entity of the *Default/25.200.001* endpoint to list the stock items. The StockItem entity is mapped to the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md) in the Installation Guide.
2.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, modify these inventory items as follows:

    -   *AACOMPUT01*: Change the status of this inventory item to *Inactive* and save the record.
    -   *AALEGO500*: Change the description of this inventory item and save the record.
    Now you have at least two inventory items that have been modified within the past month, and one of them has the *Active* status.

3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.

## Request { .section}

You can use the following request example to retrieve the active stock item that was changed today through the contract-based REST API. \(You should specify today's date instead of `2025-11-14`.\) The only stock item that the response will contain will be *AALEGO500*, which you have just changed.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/StockItem?
    $expand=WarehouseDetails&
    $select=InventoryID,Description,WarehouseDetails/WarehouseID,
        WarehouseDetails/QtyOnHand,ItemClass,BaseUOM&
    $filter=ItemStatus eq 'Active' and 
        LastModified gt datetimeoffset'2025-11-14T00:00:00.000' HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

## Usage Notes { .section}

You use the $filter parameter to specify the search conditions for the fields.

Because the database can contain thousands of stock item records, to achieve the best performance of the application, you need to specify the fields of the stock item records that should be returned. You use the $select parameter to specify the fields whose values should be retrieved from Acumatica ERP for each stock item record.

The fields that are specified in the $filter parameter are returned by default.

You use the $expand parameter to specify the nested entity, such as WarehouseDetails, to be returned.

**Parent topic:**[StockItem](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_StockItem.md)

