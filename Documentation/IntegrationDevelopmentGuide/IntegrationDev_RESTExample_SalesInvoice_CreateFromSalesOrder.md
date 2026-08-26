# Create a Sales Invoice from a Sales Order {#_47d9a02b-f1a7-4a21-9c63-804198e09537 .concept}

By using the REST API, you can create a sales invoice from a sales order. You can view the created invoice on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

## Request { .section}

You can use the following request example to create a sales invoice through the contract-based REST API. The invoice will contain one line with the item from the first line of the *000066* sales order.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesInvoice?$expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": {
        "value": "CAKEADO"
    },
    "Details": [
        {
            "BranchID": {
                "value": "RETAIL"
            },
            "OrderLineNbr": {
                "value": 1
            },
            "OrderNbr": {
                "value": "000066"
            },
            "OrderType": {
                "value": "SO"
            },
            "Qty": {
                "value": 1.000000
            },
            "WarehouseID": {
                "value": "RETAIL"
            }
        }
    ],
    "Hold": {
        "value": false
    },
    "Status": {
        "value": "Open"
    },
    "Type": {
        "value": "Invoice"
    }
}
```

## Usage Notes { .section}

To include an item from a line of a sales order in a sales invoice, you need to specify OrderType, OrderNbr, and OrderLineNbr for the corresponding detail line of the sales invoice.

**Parent topic:**[SalesInvoice](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesInvoice.md)

