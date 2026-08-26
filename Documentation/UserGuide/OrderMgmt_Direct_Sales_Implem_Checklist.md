# Direct Sales: Implementation Checklist {#_d8da62c4-9d98-4ffb-8421-71aa5d3e5c32 .concept}

The following sections provide details that you can use to ensure that the system is configured properly for processing direct sales, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you begin processing direct sales, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Advanced SO Invoices* feature has been enabled.|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form|Make sure that all necessary settings related to order management have been specified, as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).|
|[Customers](AR_30_30_00.md) \(AR303000\) form|Make sure that all needed customers have been defined in the system, as described in [Customers: Implementation Activity](Customer_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form|Make sure that all stock items are defined in the system, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|

## Other Settings that Affect the Workflow { .section}

You can affect the workflow of processing direct sales by specifying additional settings as follows:

-   To cause inventory issues generated on release of sales invoices be released automatically, select the **Automatically Release IN Documents** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To cause general ledger batches generated during the processing of sales documents to be posted automatically, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Testing of Settings { .section}

To make sure that all settings are configured correctly, we recommend that you process a direct sale for testing purposes, as described in [Direct Sales: Process Activity](OrderMgmt_Direct_Sales_Process_Activity.md).

**Parent topic:**[Processing Direct Sales](../UserGuide/OrderMgmt_Direct_Sales_Mapref.md)

