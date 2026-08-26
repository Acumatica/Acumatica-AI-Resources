# Create a Return for Credit for Items with Lot or Serial Numbers {#_06a34176-4540-4ae2-b3bb-d31fd42d1bb8 .concept}

By using the REST API, you can create a return for credit in Acumatica ERP \(that is, a sales order of the *RC* type\) for inventory items with lot or serial numbers. You can view the created return for credit on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *SalesDemo* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* and *Lot and Serial Tracking* features are enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *PRODWHOLE* branch.

## Request { .section}

You can use the following request example to create a return for credit for items with lot or serial numbers through the REST API. This return for credit will be created for the following inventory items included in the *AR013584* invoice, which you can view on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form:

-   Only 20 units of the *FOODCOKD12* item. This item is in the second line number in the invoice.
-   The whole quantity of the *FOODTEA06* item, which is 6900. This item is in the third line number in the invoice.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesOrder?
    $expand=Details,Details/Allocations HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": { "value": "MICROCHIP" },
    "Description": { "value": "Return for Credit for Items with Lot or Serial Numbers" },
    "Details": [
        {
            "InvoiceType": { "value": "Invoice" },
            "InvoiceNbr": { "value": "AR013584" },
            "InvoiceLineNbr": { "value": "2" },
            "OrderQty": { "value": "20" },
            "UOM": { "value": "EA" }
        },
        {
            "InvoiceType": { "value": "Invoice" },
            "InvoiceNbr": { "value": "AR013584" },
            "InvoiceLineNbr": { "value": "3" },
            "OrderQty": { "value": "6900" },
            "UOM": { "value": "EA" }
        }
    ],
    "LocationID": { "value": "MAIN" },
    "OrderType": { "value": "RC" }
}
```

## Usage Notes: Dealing with Multiple Lot or Serial Numbers { .section}

If multiple units of the returned item had different lot or serial numbers assigned, you may need to update the created return for credit, as described in [Update Allocations in a Return for Credit](IntegrationDev_RESTExample_SalesOrder_UpdateReturnOrderWithAllocations.md).

## Usage Notes: Adding Detail Lines { .section}

If you need to add all lines of an invoice to a return for credit, you specify InvoiceType and InvoiceNbr in a detail.

If you need to add a particular line of an invoice to a return for credit, you specify the following fields of a detail line:

-   InvoiceType and InvoiceNbr to identify the invoice
-   InventoryID or InvoiceLineNbr to identify the line of the invoice

If you specify InventoryID for a detail line and do not specify InvoiceType and InvoiceNbr, the system creates no link to an invoice in the created return for credit.

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

