# Update the Detail Lines of a Sales Order {#_a91733a5-2f47-435d-b4c9-c08282630532 .concept}

If you are using the REST API to integrate Acumatica ERP with an external system, this external system can update the detail lines of a sales order. For example, a customer of the online store can edit the order and submit the updated order. The updated sales order can be viewed on the [Sales Orders](../UserGuide/SO_30_10_00.md#) \(SO301000\) form.

You will identify the detail lines to be updated by using the entity IDs of the detail lines.

**Attention:** The entity ID is a GUID that is assigned to each entity you work with during an Acumatica ERP session. You can obtain the value of the entity ID from the ID property of an entity returned from Acumatica ERP.

The records of top-level entities that you retrieve through the contract-based REST API have persistent IDs, which are the values in the `NoteID` column of the corresponding database tables. That is, you can use the value from the ID property of a top-level entity returned from Acumatica ERP throughout different sessions with Acumatica ERP. However, if a record does not have a note ID \(which could be the case for detail entities, entities that correspond to generic inquiries, or custom entities\), this record is assigned the entity ID that is new for each new session. That is, after a new sign-in to Acumatica ERP, you cannot use the entity ID that you received in the previous session to work with the entity.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.
4.  Execute the request that is described in [Retrieve a Sales Order by Using the Values of Specific Fields](IntegrationDev_RESTExample_SalesOrder_RetrieveOrder.md) to obtain the IDs of the detail lines hat should be updated.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following request example to delete the line for the *CONGRILL* item \(which has the *08731a64-7381-e511-80c0-00155d012302* identifier in the session of this request\), and update the quantity of the *AALEGO500* item \(which has the *f4a7e172-7381-e511-80c0-00155d012302* session identifier\).

```
PUT /entity/Default/25.200.001/SalesOrder?
    $expand=Details&
    $select=OrderType,OrderNbr,Details/OrderQty,Details/InventoryID,
    OrderedQty,OrderTotal HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
 "OrderType": {"value": "SO"},
 "OrderNbr": {"value": "000003"},
 "Hold": {"value": false},
 "Details":[
  {
   "id": "08731a64-7381-e511-80c0-00155d012302",
   "delete": true
  },
  {
   "id": "f4a7e172-7381-e511-80c0-00155d012302",
   "OrderQty": {"value": 5}
  }
 ]
}
```

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

