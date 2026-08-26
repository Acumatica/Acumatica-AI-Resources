# Create a Purchase Receipt with Allocations \(with Location\) {#_1998826c-ae50-47cc-8c10-0fb05ddc42f2 .concept}

By using the REST API, you can create purchase receipts and specify the locations of items in them. For details about the management of purchase documents, see [Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md).

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

## Request { .section}

You can use the following example of an HTTP request to create a purchase receipt and specify the locations of particular items.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/PurchaseReceipt?
    $expand=Details,Details/Allocations HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Type": {"value": "Receipt"},
    "VendorID": {"value": "AAVENDOR"},
    "CreateBill": {"value": "False"},
    "Description": {"value": "Test receipt with allocations"},
    "Details": [
        {
            "InventoryID": {"value": "CONBABY1"},
            "ReceiptQty": {"value": "11"},
            "Allocations": [
                {
                    "Location": {"value": "DOCK"},
                    "Qty": {"value": "5"}
                },
                {
                    "Location": {"value": "R1S1"},
                    "Qty": {"value": "6"}
                }
            ]
        },
        {
            "InventoryID": {"value": "CONBOTTLE1"},
            "ReceiptQty": {"value": "15"},
            "Allocations": [
                {
                    "Location": {"value": "DROPSHIP"},
                    "Qty": {"value": "7"}
                },
                {
                    "Location": {"value": "RECEIVING"},
                    "Qty": {"value": "8"}
                }
            ]
        }
    ]
}
```

**Parent topic:**[PurchaseReceipt](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PurchaseReceipt.md)

