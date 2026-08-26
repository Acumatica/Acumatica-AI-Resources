# Returns for Credit with Receipts: Implementation Checklist {#_ddebe60f-403c-4cef-99cc-8dc5c0cdc33a .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of customer returns for credit with the returned items being received to inventory, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you begin processing returns for credit with the returned items received to inventory, you should make sure the needed settings have been specified, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form|Make sure that all necessary settings related to sales orders and purchase orders have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\) form|Make sure that the *RC* order type is active and has been configured, as described in [Sales Order Types: To Activate the RC Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_RC_Order_Type.md).|

## Specifying Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing customer returns for credit with the returned items received to inventory by specifying additional settings as follows:

-   To cause sales orders of a particular order type to be created with the *On Hold* status \(so that the user can verify them before processing them further\), select the **Hold Documents on Entry** check box for the order type on the [Order Types](SO_20_10_00.md) form. For more information on other order type settings that affect the workflow of sales orders, see [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).
-   To cause the system to automatically post general ledger batches generated during the processing of sales documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Testing of Settings { .section}

To make sure that all settings are configured correctly, we recommend that you process a return for credit with returned items received to inventory, as described in [Returns for Credit with Receipts: Process Activity](OrderMgmt_Return_for_Credit_with_Receipt_Process_Activity.md).

**Parent topic:**[Processing Customer Returns for Credit with Receipts](../UserGuide/OrderMgmt_Return_for_Credit_with_Receipt_Mapref.md)

