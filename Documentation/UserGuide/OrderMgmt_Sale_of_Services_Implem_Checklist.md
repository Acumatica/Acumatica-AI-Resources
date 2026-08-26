# Sales of Services: Implementation Checklist {#_1d1d23cb-0840-46cf-971e-07d45bbe9593 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of sales of services, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you begin processing sales of services, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)|Make sure that all necessary settings related to sales orders have been specified, as described in [Order Management Basic Configuration: General Information](../ImplementationGuide/config_OrderMgmt_Basic_GeneralInfo.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\)|Make sure that the *SO* or *IN* order type is active and has been configured, as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md). \(If needed, you can set up and activate both of these order types.\)|
|[Customers](AR_30_30_00.md) \(AR303000\)|Make sure that all needed customers have been defined in the system, as described in [Customers: Implementation Activity](Customer_Implem_Activity.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|Make sure that all non-stock items have been defined in the system, as described in [Non-Stock Items: Implementation Activity](Non_Stock_Items_OrderMgmt_Implem_Activity.md).|

## Other Settings That Affect the Workflow { .section}

To cause general ledger batches generated during the processing of sales documents to be posted automatically, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a sale of services by performing instructions similar to those described in [Sales of Services: Process Activity](OrderMgmt_Sale_of_Services_Activity.md).

**Parent topic:**[Processing Sales of Services](../UserGuide/OrderMgmt_Sale_of_Services_Mapref.md)

