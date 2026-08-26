# Returns for Replacement at Another Price: Implementation Checklist {#_6e7739f3-ff9e-41aa-bd6e-d78b25f2538c .concept}

The following sections provide details that you can use to ensure that the system is configured properly for the processing of returns for replacement at another price, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you begin processing returns for replacement at another price, you should make sure that the needed features have been enabled, and settings have been specified as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|Make sure that all necessary settings related to sales orders and purchase orders have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\)|Make sure that the *RM* order type is active and has been configured, as described in [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of returns for replacement at another price by specifying additional settings as follows:

-   To cause sales orders of a particular order type to be created with the *On Hold* status \(so that the user can verify them before processing them further\), select the **Hold Documents on Entry** check box for the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form. For more information on other order type settings that affect the workflow of sales orders, see [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).
-   To cause the system to automatically post general ledger batches generated during the processing of sales documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).
-   To cause the system to automatically release inventory documents on release of the sales-related documents, select the **Automatically Release IN Documents** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a return for replacement at another price by performing instructions similar to those described in [Returns for Replacement at Another Price: Process Activity](OrderMgmt_Returns_for_Replacement_at_Another_Price_Activity.md).

**Parent topic:**[Processing Customer Returns for Replacement at Another Price](../UserGuide/OrderMgmt_Returns_for_Replacement_at_Another_Price_Mapref.md)

