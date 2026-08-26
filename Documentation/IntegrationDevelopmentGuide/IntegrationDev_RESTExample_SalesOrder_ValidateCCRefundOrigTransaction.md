# Create a Return for Credit Without Validation of the Card Refund Against the Original Transaction {#_11c419cf-78ae-41cd-abad-897c00a96a43 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create refunds of credit card payments without validation against the original transactions.

You can verify whether the original transaction number specified for a refund is related to the payment made. You can do this in one of the following ways:

-   On the [Processing Centers](../UserGuide/CA_20_50_00.md) \(CA205000\) form, select the **Allow Unlinked Refunds** check box for the payment method's default processing center.
-   On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, clear the **Validate Card Refunds Against Original Transactions** check box for the sales order type that is used to create a refund.
-   In a contract-based REST API request, set the `ValidateCCRefundOrigTransaction` value of the `SalesOrderPayment` entity to *false*.

## System Preparation { .section}

Before you test the code below, you do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *SalesDemo* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *PRODWHOLE* branch.

## Request { .section}

You can use the following example of an HTTP request to make a refund. In this request, you will do the following:

-   Set `Date` to today's date
-   Set `Hold` to *false*
-   In `Details`, specify the inventory items for which the refund must be made
-   Set `Payments.Refund` to *true*
-   Specify the `Payments.OrigTransactionNbr`, `Payments.CardAccountNbr`, and `Payments.CashAccount` values from the information of a payment that is not related to the inventory items from `Details`
-   Set `Payments.DocType` to *Refund*

If you run the following example of an HTTP request with `Payments.ValidateCCRefundOrigTransaction` set to *true*, the system will generate an error that indicates that the return for credit to be created has no items that were paid with the transaction specified as the original.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesOrder?
    $expand=Details,Payments HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CurrencyID": {
        "value": "USD"
    },
    "CustomerID": {
        "value": "WIDGETCC"
    },
    "Date": {
        "value": "2023-08-19T00:00:00+03:00"
    },
    "Hold": {
                "value": false
            },
    "Details": [
        {
            "Branch": {
                "value": "PRODWHOLE"
            },
            "InventoryID": {
                "value": "AACOMPUT01"
            },
            "OrderQty": {
                "value": 5.000000
            },
            "UnitPrice": {
                "value": 500.000000
            },
            "UOM": {
                "value": "EA"
            },
            "WarehouseID": {
                "value": "WHOLESALE"
            }
         }
    ],
    "OrderType": {
        "value": "RC"
    },
    "PaymentMethod": {
        "value": "ACUPAYCC"
    },
    "Payments": [
        {
            "ApplicationDate": {
                "value": "2023-08-19T00:00:00+03:00"
            },
            "AppliedToOrder": {
                "value": 40.0000
            },
            "CardAccountNbr": {
                "value": "VISA:****-****-****-1111"
            },
            "CashAccount": {
                "value": "10250"
            },
            "Currency": {
                "value": "USD"
            },
            "DocType": {
                "value": "Refund"
            },
            "Hold": {
                "value": false
            },
            "OrigTransactionNbr": {
                "value": "60165234282"
            },
            "PaymentAmount": {
                "value": 40.0000
            },
            "PaymentMethod": {
                "value": "ACUPAYCC"
            },
            "PaymentRef": {
                "value": "601704533664"
            },
            "ProcessingCenterID": {
                "value": "ACUPAYMENT"
            },
            "Refund": {
                "value": true
            },
            "ValidateCCRefundOrigTransaction": {
                "value": false
            }
        }
    ]
}
```

If the `Payments/ValidateCCRefundOrigTransaction` value is *false*, the request is executed successfully.

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

