# Purchase Returns at the Calculated Cost: Implementation Checklist {#_d8aa25a3-906c-4018-bdae-6a54463bea0f .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of purchase returns at the cost calculated by the system, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you begin processing returns at the calculated cost, you should make sure the needed settings have been specified, as summarized in the following checklist.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
| |Make sure that the basic inventory and order management preferences are configured, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).| |
|[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form|Make sure that the **Process Return with Original Cost** check box is cleared.|By default, the system copies the state of this check box to each purchase return that is created. \(You can change the way to specify the cost in an individual purchase return by selecting the *Cost by Issue Strategy* or *Manual Cost Input* options in the **Cost of Inventory Return From** box on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.\)|

## Settings that Affect the Workflow { .section}

You can affect the workflow of processing purchase returns at the system-calculated cost by specifying additional settings as follows:

-   To cause debit adjustments to be automatically created on release of purchase returns, select the **Create Bill** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. By default, the state of this check box is copied to each purchase return that is created. If the check box is cleared in a purchase return document, you can select it before releasing a purchase return.
-   To set up the system to automatically release debit adjustments that are generated, select the **Release AP Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form.

## Testing of Settings { .section}

To make sure that all settings are configured correctly, we recommend that you process a purchase return at the system-calculated cost, as described in the [Purchase Returns at the Calculated Cost: Process Activity](OrderMgmt_Purchase_Return_Calc_Cost_Process_Activity.md).

**Parent topic:**[Processing Purchase Returns at the Calculated Cost](../UserGuide/OrderMgmt_Purchase_Return_Calc_Cost_Mapref.md)

