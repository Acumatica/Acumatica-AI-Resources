# Sales with Drop Shipping: Implementation Checklist {#_aeadbbd2-6aa5-468c-8270-d6bfbb3c4c44 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of sales for drop shipment, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you initially process sales for drop shipment, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Drop Shipments* feature is enabled.|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\), [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)|Make sure that all necessary settings related to sales orders and purchase orders have been specified as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\)|Make sure that the *SO* order type is active and has been configured as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Make sure that all needed vendors have been configured as described in [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|Make sure that all needed customers have been configured as described in [Customers: Implementation Activity](Customer_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that all stock items are configured as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the processing workflow by specifying additional settings:

-   To cause sales orders of a particular order type to be created with the *On Hold* status \(so the user can verify them before processing them further\), select the **Hold Orders on Entry** check box for the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form. For more information on other order type settings affecting the workflow of sales orders, see [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).
-   To cause the system to automatically create an accounts payable bill on release of a purchase receipt by default, select the **Create Bill on Receipt Release** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. In this case, when a user creates a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system automatically selects the **Create Bill** check box. \(The user can clear this check box for a particular bill.\) For information on processing bills, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).
-   To cause the system to automatically post general ledger batches generated during the processing of sales and purchase documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Settings { .section}

To make sure that all settings are configured correctly, process a sale with drop shipping, as described in the [Sales with Drop Shipping: Process Activity](OrderMgmt_Drop_Shipment_Sale_Process_Activity.md).

## Known Process Limitations { .section}

-   Drop shipping is not supported for sales order lines that are split into multiple lines in the **Line Details** dialog box on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. If you select the **Mark for PO** check box and select *Drop-Ship* in the **Source** column on the **Details** tab for a line with multiple splits, you will not be able to save the order.

    The only exception occurs when you need to process a return of previously drop-shipped lot- or serial-tracked items to your own warehouse and you use a sales order whose order type has the *RMA Order* automation behavior on the [Order Types](SO_20_10_00.md) \(SO201000\) form.

-   If there is at least one released purchase receipt generated for a line of a drop-ship purchase order that has been created for a sales order, you will not be able to perform the following actions:
    -   Unlink the lines of the sales and purchase orders.
    -   Clear the **Mark for PO** check box on the **Details** tab of the [Sales Orders](SO_30_10_00.md) form for the line of the sales order that is linked to this line of the drop-ship purchase order.
-   If there is at least one confirmed shipment that has been generated for the part of the quantity in a sales order line, you cannot select the **Mark for PO** check box on the **Details** tab of the [Sales Orders](SO_30_10_00.md) form for this line in order to drop-ship the remaining quantity.

**Parent topic:**[Processing Sales with Drop Shipping](../UserGuide/OrderMgmt_Drop_Shipment_Sale_Mapref.md)

