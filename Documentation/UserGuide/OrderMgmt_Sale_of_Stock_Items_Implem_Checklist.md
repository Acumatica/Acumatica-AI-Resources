# Sales of Stock Items: Implementation Checklist {#_4118e14a-3b4a-4e25-98fe-6225e65bd105 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of sales of stock items, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you begin processing sales of stock items, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Inventory* feature is enabled.|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form, [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form|Make sure that all necessary settings related to sales orders and inventory have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\) form|Make sure that the *SO* and *SA* order types are active and have been configured, as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).|
|[Customers](AR_30_30_00.md) \(AR303000\) form|Make sure that all needed customers have been defined in the system, as described in [Customers: Implementation Activity](Customer_Implem_Activity.md) .|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form|Make sure that all stock items have been defined in the system, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing inventory sales by specifying additional settings as follows:

-   To cause shipments to be created with the *On Hold* status \(so that the user can verify them before processing them further\), select the **Hold Shipments on Entry** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To cause inventory issues to be automatically generated and released on release of sales invoices, select the **Automatically Release IN Documents** check box on the [Sales Orders Preferences](SO_10_10_00.md) form.
-   To cause the shipment dates to appear in invoices as invoice dates, select the **Use Shipment Date for Invoice Date** check box on the [Sales Orders Preferences](SO_10_10_00.md) form.
-   To cause general ledger batches generated during the processing of sales documents to be posted automatically, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Testing of Settings { .section}

To make sure that all settings are configured correctly, we recommend that you process a sale of stock items, as described in [Sales of Stock Items: Process Activity](OrderMgmt_Sale_of_Stock_Items_Process_Activity.md).

**Parent topic:**[Processing Sales of Stock Items](../UserGuide/OrderMgmt_Sale_of_Stock_Items_Mapref.md)

