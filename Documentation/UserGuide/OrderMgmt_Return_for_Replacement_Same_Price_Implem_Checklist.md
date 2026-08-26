# Returns for Replacement at the Same Price: Implementation Checklist {#_58273cf5-5f54-4439-b48f-0022f7b66ccb .concept}

The following sections provide details that you can use to ensure that the system is configured properly for the processing of returns for replacement, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you begin processing returns for replacement, you should make sure the needed settings have been specified, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)|Make sure that all necessary settings related to sales orders and purchase orders have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\)|Make sure that the *RR* order type is active and has been configured, as described in [Sales Order Types: To Activate the RR Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_RR_Order_Type.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing returns for replacement by specifying additional settings as follows:

-   To cause sales orders of a particular order type to be created with the *On Hold* status \(so that the user can verify them before processing them further\), select the **Hold Documents on Entry** check box for the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form. For more information on other order type settings that affect the workflow of sales orders, see [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).
-   To cause the system to automatically post general ledger batches generated during the processing of sales documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).
-   To cause the system to automatically release inventory documents on release of the sales-related documents, select the **Automatically Release IN Documents** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To cause the shipment dates to appear in invoices as invoice dates, select the **Use Shipment Date for Invoice Date** check box on the [Sales Orders Preferences](SO_10_10_00.md) form.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a return for replacement by performing instructions similar to those described in [Returns for Replacement at the Same Price: Process Activity](OrderMgmt_Return_for_Replacement_Same_Price_Process_Activity.md).

**Parent topic:**[Processing Customer Returns for Replacement at the Same Price](../UserGuide/OrderMgmt_Return_for_Replacement_Same_Price_Mapref.md)

