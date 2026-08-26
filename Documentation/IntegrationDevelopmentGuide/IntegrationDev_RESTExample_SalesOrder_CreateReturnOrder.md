# Create a Return for Credit for Multiple Invoices {#_ec34c7cf-6990-4bf2-9479-1c7a84ffc717 .concept}

By using the REST API, you can create a return for credit \(that is, a sales order of the *RC* type\) for any number of invoices in Acumatica ERP. \(You can view the created return for credit on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.\)

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

## Request { .section}

You can use the following request example to create a return for credit for two invoices of the *GOODFOOD* customer. This return for credit will be created to refuse the *INSTALL* service included in the *000062* invoice and return 50 units of the *ORANGES* product included in the *000030* invoice.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesOrder?$expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": { "value": "GOODFOOD" },
    "Description": { "value": "Return for Credit for Two Invoices" },
    "Details": [
        {
            "InvoiceType": { "value": "Invoice" },
            "InvoiceNbr": { "value": "000062" },
            "InventoryID": { "value": "INSTALL" }
        },
        {
            "InvoiceType": { "value": "Invoice" },
            "InvoiceNbr": { "value": "000030" },
            "InventoryID": { "value": "ORANGES" },
            "OrderQty": { "value": "50" }
        }
    ],
    "LocationID": { "value": "MAIN" },
    "OrderType": { "value": "RC" }
}
```

## Usage Notes: Adding Detail Lines { .section}

If you need to add all lines of an invoice to a return for credit, you specify InvoiceType and InvoiceNbr in a detail.

If you need to add a particular line of an invoice to a return for credit, you specify the following fields of a detail line:

-   InvoiceType and InvoiceNbr to identify the invoice
-   InventoryID or InvoiceLineNbr to identify the line of the invoice

If you specify InventoryID for a detail line and do not specify InvoiceType and InvoiceNbr, the system creates no link to an invoice in the created return for credit.

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

