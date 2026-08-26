# Purchases for Sale: Implementation Checklist {#_b23ce58c-2785-4c1e-9e3e-1f7b1b52ca8e .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases for sale, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you initially process purchases for sale, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Sales Order to Purchase Order Link* feature is enabled.|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\), [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)|Make sure that all necessary settings related to sales orders and purchase orders have been specified as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\)|Make sure that the *SO* order type is active and has been configured as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Make sure that all needed vendors have been configured as described in [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|Make sure that all needed customers have been configured as described in [Customers: Implementation Activity](Customer_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that all stock items are configured as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the processing workflow by specifying the following additional settings:

-   To cause sales orders of a particular order type to be created with the *On Hold* status \(so the user can verify them before processing them further\), select the **Hold Documents on Entry** check box for the order type on the [Order Types](SO_20_10_00.md) form. For more information on other order type settings affecting the workflow of sales orders, see [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).
-   To cause the system to automatically create an accounts payable bill on release of a purchase receipt by default, select the **Create Bill on Receipt Release** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. In this case, when a user creates a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system automatically selects the **Create Bill** check box. \(The user can clear this check box for a particular bill.\) For information on processing bills, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).
-   To cause the system to automatically post general ledger batches generated during the processing of sales and purchase documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Known Process Limitations { .section}

The following limitations apply to the processing of purchases for sale:

-   Sales order lines marked for purchasing cannot be processed during the quick processing of a sales order until the items are received to stock. For more information, see [Sales Order Types: Quick Processing of Sales Orders](../ImplementationGuide/config_Sales_Order_Types_Quick_Process_Workflow.md).
-   On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, for a sales order of the *RR* or *RM* type, lines with the *Return* operation type cannot be marked for purchasing for sale, because these are the items to be received to inventory.

## Validation of Configuration { .section}

To make sure that all settings are configured correctly, we recommend that in your system, you process a purchase for sale, as described in [Purchases for Sale: Process Activity](OrderMgmt_Purchase_for_Sale_Process_Activity.md).

**Parent topic:**[Processing Purchases for Sale](../UserGuide/OrderMgmt_Purchase_for_Sale_Mapref.md)

