# Retrieve a List of Sales Orders with Details and Related Shipments {#_2896cb78-c132-43d3-82fd-c9fc0ab0c3cb .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can retrieve a list of sales orders along with their details and related shipments.

To list the sales orders, you will use the SalesOrder entity and the `GET` method with the $filter, $expand, and $select parameters. The SalesOrder entity is mapped to the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.

## Request { .section}

You can use the following request example to retrieve the sales orders of the *C000000003* customer \(along with their details and related shipments\) through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/SalesOrder?
    $expand=Details,Shipments&$filter=CustomerID eq 'C000000003'&
    $select=OrderNbr,OrderType,CustomerID,CustomerOrder,Details/InventoryID,
    Details/OrderQty,Details/UnitPrice,Date,OrderedQty,OrderTotal,
    Shipments/InvoiceNbr,Shipments/ShipmentNbr HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

## Usage Notes { .section}

For the best performance of the data retrieval, it is important that you request only the values of the fields that you need \(instead of requesting the values of all fields available in the entity\).

To achieve the best performance, we also recommend that you retrieve multiple records with multiple kinds of detail lines in one request.

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

