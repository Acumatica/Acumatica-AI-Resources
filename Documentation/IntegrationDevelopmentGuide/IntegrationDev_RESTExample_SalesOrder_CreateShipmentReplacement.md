# Create a Shipment for a Replacement {#_8134b051-03a0-4f24-868e-4edb1d9cb4d6 .concept}

By using the REST API, you can create a shipment for a replacement item included in an RMA order \(a return order of the *RM* type\). A user starts the process of creating this shipment while viewing the RMA order on the [Sales Orders](../UserGuide/SO_30_10_00.md#) \(SO301000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.
5.  Execute the [Create an RMA Order for a Return](IntegrationDev_RESTExample_SalesOrder_CreateRM.md) request.

## Request { .section}

You can use the following request example to create a shipment for a replacement from the *000127* return order of the *RM* type through the REST API. In the `WarehouseID` parameter, you specify the warehouse from which the replacement items are taken.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/Default/25.200.001/SalesOrder/SalesOrderCreateShipment 
     HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "entity":{
    "OrderNbr": {"value": "000127"},
    "OrderType":  {"value": "RM"}
  },
  "parameters": {
    "ShipmentDate":  {"value": "2025-04-11T00:00:00+03:00"},
    "WarehouseID":  {"value": "WHOLESALE"}
  }
}
```

## Usage Notes for an RMA Order with Shipments { .section}

If a customer is returning an inventory item for replacement at a different price, a point-of-sale \(POS\) system can create an RMA order to perform this customer return. \(An RMA order is a return order of the *RM* predefined order type.\) Shipments for both the return and the replacement are performed.

Consider the following example. In an online shop, a customer bought a 32-ounce glass bottle, which was shipped to the customer. Then the customer decides to return this bottle. In the online shop, the customer creates an order that includes both the returned item and a 16-ounce glass bottle that the customer wants to buy. Thus, the customer would like to buy a smaller bottle and to return the larger one.

To process a return for replacement with shipments, the POS system performs the following steps:

1.  For the returned items that are linked to a sales order and shipment, creates an RMA order \(return order of the *RM* type\), and adds lines to the order for the following items:
    -   The returned items, which it selects from the previously issued sales invoice
    -   The newly ordered items
2.  Creates a shipment for the newly ordered items and confirms this shipment.
3.  Creates an incoming shipment with the *Receipt* operation type for the returned items and confirms this shipment.
4.  Creates sales invoices and releases them. For the return, the system generates an invoice of the *Credit Memo* type; for the shipment, the system generates a sales invoice of the *Invoice* type.

To learn about the execution of this process in Acumatica ERP, see [Returns for Replacement at Another Price: General Information](../Shared/../UserGuide/OrderMgmt_Returns_for_Replacement_at_Another_Price_GeneralInfo.md).

You can use the following sequence of requests to implement this process through the REST API:

1.  [Create an RMA Order for a Return](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder_CreateRM.md)
2.  For the return:
    1.  [Create a Shipment with the Receipt Operation Type](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder_CreateReceipt.md)
    2.  [Retrieve a List of Sales Orders with Details and Related Shipments](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder_GetList.md)
    3.  [Confirm a Shipment](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment_Confirm.md)
    4.  [Prepare an Invoice for a Shipment](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment_CreateInvoice.md), which creates a credit memo
    5.  [Retrieve an Invoice Related to a Shipment](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment_RetrieveInvoice.md)
    6.  [Release a Credit Memo](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesInvoice_ReleaseCreditMemo.md)
3.  For the replacement:
    1.  [Create a Shipment for a Replacement](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder_CreateShipmentReplacement.md)
    2.  [Retrieve a List of Sales Orders with Details and Related Shipments](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder_GetList.md)
    3.  [Confirm a Shipment](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment_Confirm.md)
    4.  [Prepare an Invoice for a Shipment](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment_CreateInvoice.md), which creates a sales invoice
    5.  [Retrieve an Invoice Related to a Shipment](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment_RetrieveInvoice.md)
    6.  [Invoke Release of an Invoice](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesInvoice_Release.md)

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

