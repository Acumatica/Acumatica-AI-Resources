# Sales Invoice Correction: Implementation Checklist {#_241d8ce3-0adc-47c0-b86d-bb15fd952d4e .concept}

The following sections provide details you can use to ensure that the system is configured properly for the correcting of sales invoices, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you begin correcting sales invoices, you should make sure the needed settings have been specified and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form, [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form|Make sure that all necessary settings related to sales orders and inventory have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\) form|Make sure that the *SO* order type is active and has been configured, as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).|
|[Customers](AR_30_30_00.md) \(AR303000\) form|Make sure that all needed customers have been defined in the system, as described in [Customers: Implementation Activity](Customer_Implem_Activity.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of correcting invoices by specifying additional settings as follows:

-   To cause correction invoices and cancellation credit memos to be created with the *Balanced* \(instead of *On Hold*\) status, clear the **Hold Documents on Entry** check box on the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
-   To cause general ledger batches generated during the processing of sales documents to be posted automatically, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Testing of Settings { .section}

To make sure that all settings are configured correctly, we recommend that for testing purposes, you correct a sales invoice, as described in [Sales Invoice Correction: To Correct an Invoice](OrderMgmt_SO_Invoice_Correction_Process_Activity.md), and cancel a sales invoice, as described in [Sales Invoice Correction: To Cancel an Invoice](OrderMgmt_SO_Invoice_Correction_Process_Activity2.md).

**Parent topic:**[Correcting Sales Invoices](../UserGuide/OrderMgmt_SO_Invoice_Correction_Mapref.md)

