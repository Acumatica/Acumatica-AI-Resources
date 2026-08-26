# Retrieve a List of Sales Orders in Multiple Batches {#_95b5c819-45b8-481f-b86e-4dafb96972a6 .concept}

By using the REST API, you can retrieve a list of sales orders in batches. This way of retrieving data can be chosen for better performance: If there is a large amount of data, only part of it can be retrieved at a time. For more information, see [$top Parameter](IntegrationDev_RESTExample_Parameter_top.md) and [$skip Parameter](IntegrationDev_RESTExample_Parameter_skip.md).

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.

## Request { .section}

You can use the following request example to retrieve the sixth to tenth sales orders \(in order of creation\) of the *C000000003* customer through the contract-based REST API. \(In fact, this request will retrieve the sixth to ninth sales orders because only nine orders belong to the *C000000003* customer.\)

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/SalesOrder?
    $filter=CustomerID eq 'C000000003'&
    $select=OrderNbr,OrderType,CustomerID,OrderTotal&$top=5&$skip=5 HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

