# Retrieve a Sales Order by Using the Values of Specific Fields {#_db9754d3-628c-401c-a52e-eddd1cb8f9c6 .concept}

If you are using the REST API to integrate Acumatica ERP with an external system, this external system can retrieve a sales order by using the values of specific fields of the sales order. For example, before submitting a sales order for processing, a customer of the online store can select the needed order by using this customer order number.

**Tip:** The customer order number of a sales order is entered in the **Customer Order Nbr.** box of the Summary area of the [Sales Orders](../UserGuide/SO_30_10_00.md#) \(SO301000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following sample HTTP request to retrieve the sales order whose customer order number is *SO248-563-06* along with its detail lines through the contract-based REST API.

```
GET /entity/Default/25.200.001/SalesOrder?
    $expand=Details&
    $select=OrderNbr,OrderType,Details/InventoryID,Details/WarehouseID&
    $filter=OrderType eq 'SO' and CustomerOrder eq 'SO248-563-06' HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
```

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

