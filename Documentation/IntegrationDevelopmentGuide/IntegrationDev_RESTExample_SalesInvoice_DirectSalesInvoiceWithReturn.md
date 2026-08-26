# Create a Direct Sales Invoice That Includes a Return {#_379712ea-217c-4424-8e77-c1797784b3e0 .concept}

By using the REST API, you can create a direct sales invoice that includes a return in Acumatica ERP. A direct sales invoice is an invoice for which neither a sales order nor a shipment is created. You can view the created invoice on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management*, *Lot and Serial Tracking*, and *Advanced SO Invoices* features are enabled.

## Request { .section}

You can use the following example of an HTTP request to:

-   Create a direct sales invoice containing the picked items and the items to be returned
-   Remove the invoice from hold

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesInvoice?$expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": {"value": "FRUITICO"},
    "Type": {"value": "Invoice"},
    "Hold": {"value": false},
    "Details":
    [
        {
            "Branch": {"value": "HEADOFFICE"},
            "InventoryID": {"value": "CHERJAM32"},
            "Qty": {"value": 1},
            "UOM": {"value": "PIECE"},
            "LotSerialNbr": {"value": "JM2502010003"}
        },
        {
            "Branch": {"value": "HEADOFFICE"},
            "InventoryID": {"value": "BANANAS"},
            "WarehouseID": {"value": "WHOLESALE"},
            "Location": {"value": "F2S2"},
            "Qty": {"value": 5},
            "UOM": {"value": "LB"},
            "UnitPrice": {"value": 1},
            "LotSerialNbr": {"value": "FR200384"}
        },
        {
            "Branch": {"value": "HEADOFFICE"},
            "InventoryID": {"value": "PEN"},
            "Location": {"value": "MAIN"},
            "Qty": {"value": -1},
            "UnitPrice": {"value": 2},
            "UOM": {"value": "PIECE"}
        }
    ]
}
```

## Usage Notes { .section}

A point-of-sale \(POS\) system can create and process direct sales invoices that include lines for returned items that were previously sold. The POS system creates the direct sales invoice on the [Invoices](../UserGuide/SO_30_30_00.md#) \(SO303000\) form and releases the invoice.

Consider the following scenario: A customer comes to the store and picks up a number of items \(including items that are tracked by their serial numbers\). The customer would like to buy these items and to return a previously purchased box of pens. In the POS system, one direct sales invoice is created for this operation. The customer pays the difference between the sale and the return.

You can use the following sequence of requests while entering a direct sales invoice along with a return:

1.  [Create a Direct Sales Invoice That Includes a Return](IntegrationDev_RESTExample_SalesInvoice_DirectSalesInvoiceWithReturn.md)
2.  [Invoke Release of an Invoice](IntegrationDev_RESTExample_SalesInvoice_Release.md)

**Parent topic:**[SalesInvoice](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesInvoice.md)

