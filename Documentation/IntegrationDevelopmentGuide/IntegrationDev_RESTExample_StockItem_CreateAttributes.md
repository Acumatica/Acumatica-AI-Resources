# Create a Stock Item with Attributes {#_7040584e-cbaf-4e73-8c13-85f6b1dc33b9 .concept}

By using the REST API, you can create in Acumatica ERP a stock item that has attributes specified. An *attribute* is a property of an object in the system that specifies additional information that is not defined by the standard properties of the object \(that is, those supported by the standard UI elements\).

To specify the values of attributes, you will use the Attributes field of the StockItem entity. To identify the attribute whose value you want to specify, in the AttributeID field of the AttributeValue entity, you can specify either the attribute identifier or the attribute name, which can be found in the **Description** box on the [Attributes](../UserGuide/CS_20_50_00.md) \(CS205000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.

## Request { .section}

You can use the following request example to create a stock item record with attributes through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/StockItem?
    $select=InventoryID,Attributes/AttributeDescription,Attributes/Value&
    $expand=Attributes HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "InventoryID":{"value":"BASESERV1"},
  "Description":{"value":"Baseline level of performance"},
  "ItemClass":{"value":"STOCKITEM"},
  "Attributes":[
    {
      "AttributeID":{"value":"Operation System"},
      "Value":{"value":"Windows"}
    },
    {
      "AttributeID":{"value":"SOFTVER"},
      "Value":{"value":"Server 2025"}
    }
  ]
}
```

**Parent topic:**[StockItem](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_StockItem.md)

