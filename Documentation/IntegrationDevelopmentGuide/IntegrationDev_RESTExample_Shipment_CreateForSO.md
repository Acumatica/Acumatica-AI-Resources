# Create a Shipment for Sales Orders {#_fbde1400-430a-4927-9891-0ea58b18eef1 .concept}

You can create a shipment for multiple sales orders in a single REST API call.

## System Preparation { .section}

Before you test the request below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.
4.  On the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, find the sales orders with the *000004* and *000006* order numbers. These are the preconfigured sales orders of the customer with the *C000000003* customer ID. Make sure that these sales orders have the *Open* status.

## Request { .section}

You can use the following example of an HTTP request to create a shipment for two sales orders.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Shipment?
    $select=Type,ShipmentNbr,Status,Details/InventoryID&
    $expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
	"Type":{"value":"Shipment"},
	"CustomerID":{"value":"C000000003"},
	"WarehouseID":{"value":"MAIN"},
      "ShipmentDate":{"value":"2025-11-01"},
	"Details":[
		{
			"OrderType":{"value":"SO"},
			"OrderNbr":{"value":"000004"}
		},
		{
			"OrderType":{"value":"SO"},
			"OrderNbr":{"value":"000006"}
		}
	]
}
```

## Usage Notes { .section}

Note the following about creation of a shipment:

-   Although you are creating a shipment with multiple detail lines, you use one request for the creation of the shipment. \(That is, you do not need to submit each detail of the shipment in a separate request.\) For optimal performance of the application, it is important to use the minimum number of requests.
-   If you need to include in a shipment particular items \(rather than all items\) from a sales order, you need to retrieve the sales orders with the included items from Acumatica ERP by using the key fields, and then include the needed items in the shipment \(by specifying the inventory ID, the warehouse ID, and the type and number of the sales order in which the item is included in the details of the shipment\).
-   If you intend to use the Picked field of the Shipment entity, note that its value may be incorrect in scenarios other than batch picking or wave picking.


**Parent topic:**[Shipment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment.md)

