# Create a Transfer Receipt with Allocations for a Transfer Order {#_24c68cc6-6985-4421-86c9-e29156f3c150 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create transfer receipts with allocations in Acumatica ERP in a single API call. For details about the creation of transfer receipts, see [Two-Step Transfers: General Information](../UserGuide/InvMgmt_2Step_Transfers_GeneralInfo.md).

For a detailed description of a user scenario when transfer receipts with allocations can be created, see [Sales from Multiple Warehouses: General Information](../UserGuide/OrderMgmt_Sale_from_Multiple_Warehouses_GeneralInfo.md).

## System Preparation { .section}

Before you test the code below, you do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure the *Inventory and Order Management*, *Inventory*, and *Multiple Warehouses* features are enabled.

To further prepare the system, you need to create a sales order with items allocated in different warehouses; to fulfill this sales order, you need to create a transfer order and transfer receipt. You perform these tasks as follows:

1.  On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, open the *RETAIL* warehouse. On the **Locations** tab, clear the **Receiving Location** box. In the warning dialog box that is displayed, click **Yes**; click **Save**.
2.  On the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, create a sales order with items as follows:
    1.  Create a sales order of the *SO* order type for the *GOODFOOD* customer and *MAIN* location.
    2.  On the **Details** tab of the form, click **Add Items** on the table toolbar.
    3.  In the **Inventory Lookup** dialog box, which opens, select the unlabeled check box in the line containing the *APJAM08* inventory ID and the *RETAIL* warehouse, and specify `12` in the **Qty. Selected** column. Click **Add &amp; Close**.
    4.  On the **Details** tab, click the line the system has added to the table, and click **Line Details** on the table toolbar.
    5.  In the **Line Details** dialog box, which opens, in the only line, select the check box in the **Allocated** column. In the automatically added line, select the check box in the **Allocated** column, and specify *WHOLESALE* in the **Alloc. Warehouse** column; leave `1` in the **Quantity** column. Click **OK**.
    6.  Save the sales order.
3.  On the More menu \(under **Replenishment**\), click **Create Transfer Order**.
4.  On the [Create Transfer Orders](../UserGuide/SO_50_90_00.md) \(SO509000\) form, which opens, in the table, select the unlabeled check box for the transfer request that the system just created, and click **Process** on the form toolbar.
5.  On the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, which opens for the created transfer order, click **Create Shipment** on the form toolbar. In the **Specify Shipment Parameters** dialog box, leave the parameter values as they are, and click **OK**.
6.  On the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form \(which opens for the created shipment\), on the form toolbar, click **Confirm Shipment** and then click **Update IN**.

## Request { .section}

You can use the following example of an HTTP request to create a transfer receipt with allocations for the transfer order that was just created. Half of the *APJAM08* inventory item \(0.5 units\) will be moved to the *JS1* location, and the other half of the *APJAM08* inventory item will be moved to the *JS2* location.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/PurchaseReceipt?
    $expand=Details,Details/Allocations HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Type": {
        "value": "Transfer Receipt"
    },
    "Warehouse": {
        "value": "RETAIL"
    },
    "Details": [
        {
            "TransferOrderType": {
                "value": "TR"
            },
            "TransferOrderNbr": {
                "value": "000064"
            },
            "TransferOrderLineNbr": {
                "value": "1"
            },
            "TransferShipmentNbr": {
                "value": "000059"
            },
            "ReceiptQty": {
                "value": "1"
            },
            "Allocations": [
                {
                    "Location": {
                        "value": "JS1"
                    },
                    "Qty": {
                        "value": 0.5
                    }
                },
                {
                    "Location": {
                        "value": "JS2"
                    },
                    "Qty": {
                        "value": 0.5
                    }
                }
            ]
        }
    ]
}
```

**Parent topic:**[PurchaseReceipt](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_PurchaseReceipt.md)

