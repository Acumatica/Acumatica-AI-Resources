# Customer Returns with Refunds: Implementation Checklist {#_5fab2dd5-da64-4cbc-98e7-01b4f09dd441 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing customer returns with refunds. You will also learn about the settings that affect the processing workflow so that you can make any needed changes.

## Implementation Checklist { .section}

We recommend that before you initially create a customer return with a refund, you make sure that the needed features have been enabled, settings have been specified, and entities have been created. The following checklist summarizes the criteria you need to check.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Inventory* feature has been enabled.|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\), [Inventory Preferences](IN_10_10_00.md) \(IN101000\)|All necessary settings related to sales orders and inventory have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\)|The *RC*, *CM*, or *MO* order type is active and has been configured, as described in [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|All needed customers have been defined in the system, as described in [Customers: Implementation Activity](Customer_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|All stock items have been defined in the system, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing customer returns with refunds by specifying additional settings as follows:

-   To cause sales orders of a particular order type to be created with the *On Hold* status, select the **Hold Documents on Entry** check box for the order type on the [Order Types](SO_20_10_00.md) form. This makes it possible for a responsible user to verify entered orders before they are processed. For more information on other order type settings that affect the workflow of sales orders, see [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).
-   To cause shipments to be created with the *On Hold* status, select the **Hold Shipments on Entry** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form. When shipments have this status, a responsible user can verify entered shipments before they are processed.
-   To cause general ledger batches generated during the processing of sales documents to be posted automatically, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a customer return with a refund by performing instructions similar to those described in [Customer Returns with Refunds: Process Activity](OrderMgmt_Customer_Returns_with_Refunds_Process_Activity.md).

**Parent topic:**[Processing Customer Returns with Refunds](../UserGuide/OrderMgmt_Customer_Returns_with_Refunds_Mapref.md)

