# Create a Bill for Particular Lines of a Purchase Receipt {#_dadf0b5e-6ff5-4fb3-b089-60be8c8514b2 .concept}

By using the REST API, you can create bills for particular lines of purchase receipts, which are available on the [Purchase Receipts](../UserGuide/PO_30_20_00.md) \(PO302000\) form. You can view the created bill on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form. For details about the processing of inventory purchases, see [Purchases of Stock Items: General Information](../UserGuide/OrderMgmt_Standard_Inventory_Purchase_GeneralInfo.md).

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

**Tip:** Make sure the financial periods are open for the year for which you are creating an AP bill. If the financial periods are not open, the creation of the AP fill fails with an error, such as *Post Period cannot be empty*. For details about how to open financial periods, see an example in [Opening Financial Periods: Process Activity](../UserGuide/Finance_OpeningFinPeriods_Process_Activity.md).

## Request { .section}

You can use the following example of an HTTP request to create an AP bill for a line of a purchase receipt.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Bill?
    $select=ReferenceNbr,Details&$expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Vendor": {
        "value": "OFFICEUP"
    },
    "VendorRef": {
        "value": "123"
    },
    "Description": {
        "value": "Bill for particular lines of a purchase receipt"
    },
    "Details": [
        {
            "POReceiptNbr": {
                "value": "000001"
            },
             "POReceiptLine": {
                "value": 1
            }
        }
    ]
}
```

## Usage Notes { .section}

To create an AP bill for particular lines of a purchase receipt, you need to specify the line numbers in the request by using the POReceiptLine property of the BillDetail detail entity of the Bill entity.

If you want to add all lines of a purchase receipt to an AP bill, in the BillDetail detail entity of the Bill entity, you need to specify only the receipt number of the purchase receipt.

In the request above, you can specify the `Details/POReceiptType` value to create a bill for particular lines of a purchase receipt or purchase return. If you do not specify this value, the *Receipt* value is used by default.

**Parent topic:**[Bill](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Bill.md)

