# Create a Purchase Receipt in a Non-Base Currency {#_6177b57c-ed78-47c7-9994-d22dfe2d5507 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create a purchase receipt in a non-base currency. For details about the management of purchase documents, see [Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md).

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* and *Multicurrency Accounting* features are enabled.
5.  Modify the *GOODFRUITS* vendor as follows:

    **Tip:** If you use the `IntegrationDevelopmentGuide.postman_collection.json` Postman collection for testing, you do not need to perform the following configuration steps because they are performed in the pre-request script.

    1.  On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, select the *GOODFRUITS* vendor.
    2.  On the **Financial** tab, select the following check boxes: **Enable Currency Override** and **Enable Rate Override**.
    3.  In the **Curr. Rate Type** box, select *SPOT*.
    4.  Save your changes.

## Request { .section}

You can use the following example of an HTTP request to create a purchase receipt in a non-base currency by using the CurrencyID and CurrencyRate fields. In the example, you will override cost-related values \(such as UnitCost or ExtendedCost\).

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/PurchaseReceipt HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Type": {"value": "Receipt"},
    "VendorID": {"value": "GOODFRUITS"},
    "CreateBill": {"value": "False"},
    "CurrencyID": {"value": "EUR"},
    "CurrencyRate": {"value": "1.2"},
    "Description": {"value": "Test receipt in non-base currency and with new cost fields"},
    "Details": [
        {
            "Branch": {"value": "HEADOFFICE"},
            "InventoryID": {"value": "APPLES"},
            "Warehouse": {"value": "WHOLESALE"},
            "ReceiptQty": {"value": 1.0},
            "ExpirationDate": {"value": "2021-04-25"},
            "UnitCost": {"value": "111"},
            "ExtendedCost": {"value": "333"}
        }
    ]
}
```

**Parent topic:**[PurchaseReceipt](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PurchaseReceipt.md)

