# Drop Shipments of Non-Stock Items: Implementation Checklist {#_a3edc918-dbbf-41bc-84ed-d856ad470b98 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of sales of non-stock items intended to be drop-shipped, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_zdf_vry_klb .section}

Before you initially process sales with drop shipment, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Drop Shipments* feature is enabled.|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

 [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)

|Make sure that all necessary settings related to sales orders and purchase orders have been specified as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\)|Make sure that the *SO* order type is active and has been configured as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Make sure that all needed vendors have been configured as described in [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|Make sure that all needed customers have been configured as described in [Customers: Implementation Activity](Customer_Implem_Activity.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|Make sure that all non-stock items are configured as described in [Non-Stock Items: Implementation Activity](Non_Stock_Items_OrderMgmt_Implem_Activity.md).|

## Other Settings That Affect the Workflow {#section_a2f_vry_klb .section}

You can affect the processing workflow by specifying additional settings as follows:

-   To process service lines marked for drop shipment on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form with receipt, select the **Process Service Lines from Drop-Ship Purchase Orders via Purchase Receipts** on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.
-   To cause sales orders of a particular order type to be created with the *On Hold* status \(so the user can verify them before processing them further\), select the **Hold Orders on Entry** check box for the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form. For more information on other order type settings affecting the workflow of sales orders, see [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).
-   To cause the system to automatically create an accounts payable bill on release of a purchase receipt by default, select the **Create Bill on Receipt Release** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form. In this case, when a user creates a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system automatically selects the **Create Bill** check box. \(The user can clear this check box for a particular bill.\) For information on processing bills, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).
-   To cause the system to automatically post general ledger batches generated during the processing of sales and purchase documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration {#section_b2f_vry_klb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a sale with drop shipment by performing instructions similar to those described in the [Drop Shipments of Non-Stock Items: Process Activity](OrderMgmt_Drop_Shipping_of_Non_Stock_Items_Activity.md).

**Parent topic:**[Processing Drop Shipments of Non-Stock Items](../UserGuide/OrderMgmt_Drop_Shipping_of_Non_Stock_Items_Mapref.md)

