# Create a Vendor {#_8c83fbc5-1598-4312-9594-f9a40d7c6201 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create a vendor in Acumatica ERP.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to create a vendor with the *TESTVENDOR* ID through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Vendor HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "APAccount": { "value": "20000" },
    "APSubaccount": { "value": "000000" },
    "CashAccount": { "value": "10200WH" },
    "CurrencyID": { "value": "USD" },
    "CurrencyRateType": { "value": "SPOT" },
    "EnableCurrencyOverride": { "value": true },
    "EnableRateOverride": { "value": false },
    "F1099Vendor": { "value": false },
    "ForeignEntity": { "value": false },
    "LandedCostVendor": { "value": false },
    "LastModifiedDateTime": { "value": "2020-08-11T10:47:41.17-04:00" },
    "LocationName": { "value": "Primary Location" },
    "MaxReceipt": { "value": 100.000000 },
    "MinReceipt": { "value": 0.000000 },
    "PaymentBy": { "value": "Due Date" },
    "PaymentLeadTimedays": { "value": 0 },
    "PaymentMethod": { "value": "CHECK" },
    "PaySeparately": { "value": false },
    "PrintOrders": { "value": false },
    "ReceiptAction": { "value": "Accept but Warn" },
    "RemittanceAddressOverride": { "value": false },
    "RemittanceContactOverride": { "value": false },
    "SendOrdersbyEmail": { "value": false },
    "ShippingAddressOverride": { "value": false },
    "ShippingContactOverride": { "value": false },
    "Status": { "value": "Active" },
    "TaxCalculationMode": { "value": "Tax Settings" },
    "Terms": { "value": "30D" },
    "ThresholdReceipt": { "value": 100.000000 },
    "VendorClass": { "value": "SUBCON" },
    "VendorID": { "value": "TESTVENDOR" },
    "VendorIsLaborUnion": { "value": false },
    "VendorIsTaxAgency": { "value": false  },
    "VendorName": { "value": "TESTVENDOR" }
}
```

**Parent topic:**[Vendor](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Vendor.md)

