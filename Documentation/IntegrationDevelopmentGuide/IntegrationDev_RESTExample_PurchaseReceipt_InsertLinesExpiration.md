# Create a Purchase Receipt with Allocations \(with Expiration Dates\) {#_852c5c92-c763-4c0e-b3f5-be6663254611 .concept}

By using the REST API, you can create purchase receipts and specify the expiration dates of the items in them. For details about the management of purchase documents, see [Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md).

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management*, *Lot and Serial Tracking*, and *Advanced SO Invoices* features are enabled.

## Request { .section}

You can use the following example of an HTTP request to create a purchase receipt and specify the expiration dates of particular items.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/PurchaseReceipt?
    $expand=Details,Details/Allocations HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Type": {"value": "Receipt"},
    "VendorID": {"value": "GOODFRUITS"},
    "CreateBill": {"value": "False"},
    "Description": {"value": "Test receipt with Expiration Date in Allocations"},
    "Details": [
        {
            "Branch": {"value": "HEADOFFICE"},
            "InventoryID": {"value": "ORANGES"},
            "ReceiptQty": {"value": 2},
            "Warehouse": {"value": "WHOLESALE"},
            "LotSerialNbr": {"value": ""},
            "ExpirationDate": {"value": ""},
            "Allocations": [
                {
                    "Location": {"value": "MAIN"},
                    "Qty": {"value": 1},
                    "LotSerialNbr": {"value": "a"},
                    "ExpirationDate": {"value": "2024-04-25"}
                },
                {
                    "Location": {"value": "MAIN"},
                    "Qty": {"value": 1},
                    "LotSerialNbr": {"value": "b"},
                    "ExpirationDate": {"value": "2024-04-27"}
                }
            ]
        }
    ]
}
```

## Usage Notes { .section}

You may use the following sequence of requests while creating a purchase receipt with allocations:

1.  [Create a Purchase Order](IntegrationDev_RESTExample_PurchaseOrder_Create.md)
2.  [Create a Purchase Receipt with Allocations \(with Expiration Dates\)](IntegrationDev_RESTExample_PurchaseReceipt_InsertLinesExpiration.md)

**Parent topic:**[PurchaseReceipt](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PurchaseReceipt.md)

