# Update the Freight Cost or Price {#_75c01ece-c80e-4a5e-a6e1-c4205ffa8263 .concept}

By using the REST API, you can update the freight cost or freight price of a shipment in Acumatica ERP. You can view the freight cost or freight price of a shipment on the **Shipping** tab of the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form.

## System Preparation { .section}

Before you test the code below, do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
5.  Configure the shipment settings as follows:

    **Tip:** If you use the `IntegrationDevelopmentGuide.postman_collection.json` Postman collection for testing, you do not need to perform the following configuration steps because they are performed in the pre-request script.

    1.  On the **Details** tab of the [Ship via Codes](../UserGuide/CS_20_75_00.md) \(CS207500\) form, for the *LOCAL* ship via code, select the *Manual* calculation method, and save your changes.
    2.  On the **Shipping** tab of the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form, for the *000058* shipment, specify *LOCAL* in the **Ship Via** box and save your changes.

## Request { .section}

You can use the following request example to specify the freight cost and freight price of the *000058* shipment through the REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Shipment HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "FreightPrice": { "value": 2.0000 },
    "FreightCost": { "value": 1.0000 },
    "OverrideFreightPrice": { "value": true },
    "ShipmentNbr": { "value": "000058" }
}
```

## Usage Notes { .section}

To update the freight cost or freight price of a shipment in Acumatica ERP, you use the following fields of the Shipment entity:

-   FreightPrice: The freight price
-   FreightCost: The freight cost
-   OverrideFreightPrice: The field that makes the FreightPrice field either read-only \(when its value is *false*\) or available for editing \(when its value is *true*\)

**Parent topic:**[Shipment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment.md)

