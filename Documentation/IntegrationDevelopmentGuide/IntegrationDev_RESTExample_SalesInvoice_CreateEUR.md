# Create a Sales Invoice in a Non-Base Currency {#_d72dde27-f3bb-4a71-bc6c-fb9a277d3acb .concept}

By using the REST API, you can create a sales invoice in a non-base currency in Acumatica ERP. You can view the currency of the created invoice on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management*, *Multicurrency Accounting*, and *Advanced SO Invoices* features are enabled.
5.  Configure multicurrency support as follows:
    1.  On the [Currencies](../Shared/../UserGuide/CM_20_20_00.md#) \(CM202000\) form, open *EUR*, select the **Active** and **Use for Accounting** check boxes, and specify the following values in the other boxes:

        -   **Realized Gain Account**: *83100*
        -   **Realized Loss Account**: *83100*
        -   **Unrealized Gain Account**: *84000*
        -   **Unrealized Loss Account**: *84000*
        -   **Revaluation Gain Account**: *83200*
        -   **Revaluation Loss Account**: *83200*
        -   **Rounding Gain Account**: *83100*
        -   **Rounding Loss Account**: *83100*
        Save your changes.

    2.  On the [Currency Management Preferences](../Shared/../UserGuide/CM_10_10_00.md#) \(CM101000\) form, click **Save** to save the default settings.
    3.  On the **Currency Rate Entry** tab of the [Currency Rates](../Shared/../UserGuide/CM_30_10_00.md#) \(CM301000\) form, add a row with the following settings:

        -   **From Currency**: *EUR*
        -   **Currency Rate Type**: *SPOT*
        -   **Currency Effective Date**: Today
        -   **Currency Rate**: 1.1
        -   **Mult./Div.**: *Multiply*
        Save your changes.

6.  Enable currency overriding and rate overriding for the *FRUITICO* customer by executing the [Enable Currency Overriding and Rate Overriding for a Customer](IntegrationDev_RESTExample_Customer_CurrencyRateOverriding.md) request.

## Request { .section}

You can use the following request example to create an invoice in euros for the *FRUITICO* customer through the contract-based REST API. This invoice contains the following detail lines:

-   Two *APJAM96* items that are being sold to the customer
-   An *APJAM08* item that the customer is returning
-   A refund of one hour of the *CLEANING* service, which had been paid for and is no longer needed

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesInvoice?$expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": {"value": "FRUITICO"},
    "Type": {"value": "Invoice"},
    "Currency": {"value": "EUR"},
    "Hold": {"value": false},
    "Details":
    [
        {
            "Branch": {"value": "HEADOFFICE"},
            "InventoryID": {"value": "APJAM96"},
            "WarehouseID": {"value": "WHOLESALE"},
            "Qty": {"value": 2},
            "UOM": {"value": "JBOX"},
            "Location": {"value": "L3R1S2"}
        },
        {
            "Branch": {"value": "HEADOFFICE"},
            "InventoryID": {"value": "APJAM08"},
            "WarehouseID": {"value": "WHOLESALE"},
            "Location": {"value": "L1R1S2"},
            "Qty": {"value": -1},
            "UOM": {"value": "PIECE"}
        },
        {
            "Branch": {"value": "HEADOFFICE"},
            "InventoryID": {"value": "CLEANING"},
            "Qty": {"value": -1},
            "UOM": {"value": "HOUR"}
        }
    ]
}
```

## Usage Notes { .section}

A point-of-sale \(POS\) system can create and process direct sales invoices—that is, invoices for which neither a sales order nor a shipment has been created—in a currency that differs from the default currency of the customer account. The POS system creates the direct sales invoice in the needed currency and releases the invoice.

Consider the following example. A customer comes to a US store and picks up two boxes of large jars of apple jam. The customer would like to buy them, return a previously purchased small jar of apple jam, cancel the order of the cleaning service, and pay in euros. In the POS system, one invoice is created for this operation. The customer pays the difference between the sale and return.

You can use the following sequence of requests while entering the direct sales invoice in a non-base currency:

1.  [Enable Currency Overriding and Rate Overriding for a Customer](IntegrationDev_RESTExample_Customer_CurrencyRateOverriding.md)
2.  [Create a Sales Invoice in a Non-Base Currency](IntegrationDev_RESTExample_SalesInvoice_CreateEUR.md)
3.  [Invoke Release of an Invoice](IntegrationDev_RESTExample_SalesInvoice_Release.md)

**Parent topic:**[SalesInvoice](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesInvoice.md)

