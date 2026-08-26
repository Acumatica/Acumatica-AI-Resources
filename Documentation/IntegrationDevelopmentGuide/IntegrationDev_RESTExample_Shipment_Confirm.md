# Confirm a Shipment {#_d6f117c2-5850-4b7b-8009-950ba175da2f .concept}

By using the REST API, you can confirm a shipment in Acumatica ERP. A user can confirm a shipment on the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
5.  Optional: Execute the following requests to prepare an open shipment.
    1.  [Create an RMA Order for a Return](IntegrationDev_RESTExample_SalesOrder_CreateRM.md)
    2.  [Create a Shipment with the Receipt Operation Type](IntegrationDev_RESTExample_SalesOrder_CreateReceipt.md) or [Create a Shipment for a Replacement](IntegrationDev_RESTExample_SalesOrder_CreateShipmentReplacement.md)

## Request { .section}

You can use the following request example to confirm a shipment that has the *Open* status through the REST API. In this example, the shipment has the *000029* number.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/Default/25.200.001/SalesOrder/ConfirmShipment HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "entity":{
    "ShipmentNbr": {"value": "000029"}
  }
}
```

**Parent topic:**[Shipment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment.md)

