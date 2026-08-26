# Create a Sales Order with an External Credit Card Payment {#_125d6a9c-c92b-4cb9-862b-424a60208edb .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create a sales order with payments in a single API call. For details about the creation of sales orders, see [Reserving Payments for Sales Orders](../UserGuide/SO__con_Payment_Reservation.md).

## System Preparation { .section}

Before you test the code below, do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *SalesDemo* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md) in the Installation Guide.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Inventory and Order Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *PRODWHOLE* branch.

## Request { .section}

You can use the following example of an HTTP request to create in one call a sales order with an external credit card payment. You specify the external credit card payment parameters in the CreditCardTransactionInfo structure.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesOrder HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": {"value": "WIDGETCC"},
    "Date": {"value": "2023-05-10T00:00:00"},
    "Description": {"value": "External CC payment"},
    "Details": [
        {
            "Branch": {"value": "PRODWHOLE"},
            "DiscountAmount": {"value": 10.00},
            "ExtendedPrice": {"value": 500.00},
            "FreeItem": {"value": false},
            "InventoryID": {"value": "AACOMPUT01"},
            "OrderQty": {"value": 1.00},
            "UnitPrice": {"value": 500.00},
            "UOM": {"value": "EA"},
            "WarehouseID": {"value": "WHOLESALE"}
        },
        {
            "Branch": {"value": "PRODWHOLE"},
            "DiscountAmount": {"value": 10.00},
            "ExtendedPrice": {"value": 500.00},
            "FreeItem": {"value": false},
            "InventoryID": {"value": "AALEGO500"},
            "OrderQty": {"value": 50.00},
            "UnitPrice": {"value": 50.00},
            "UOM": {"value": "EA"},
            "WarehouseID": {"value": "WHOLESALE"}
        }
    ],
    "Hold": {"value": false},
    "LocationID": {"value": "MAIN"},
    "OrderType": {"value": "SO"},
    "Payments": [
        {
            "ApplicationDate": {"value": "2023-08-11T00:00:00+03:00"},
            "AppliedToOrder": {"value": 480.00},
            "CashAccount": {"value": "10600"},
            "CreditCardTransactionInfo": [
                {
                    "NeedValidation": {"value": true},
                    "TranDate": {"value": "2023-08-11T00:00:00+03:00"},
                    "TranNbr": {"value": "40050474170"},
                    "TranType": {"value": "AUT"}
                }
            ],
            "PaymentAmount": {"value": 980.00},
            "PaymentMethod": {"value": "ACUPAYCC"}        }
    ],
    "PaymentMethod": {"value": "ACUPAYCC"},
    "RequestedOn": {"value": "2023-05-10T00:00:00"}
}
```

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

