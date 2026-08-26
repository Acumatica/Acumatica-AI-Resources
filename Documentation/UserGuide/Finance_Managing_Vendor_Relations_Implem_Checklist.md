# Vendor Relations: Implementation Checklist {#_150fa060-db9e-48d6-b645-9ce9cfc0e600 .concept}

The following sections provide details you can use to ensure that the system is configured properly for setting up and using vendor relations in AP documents, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially set up vendor relations, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimum set of features has been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).

 If you are going to use vendor relations in purchase orders, the *Inventory and Order Management* group of features must be enabled.

|
|[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)|Make sure that all necessary settings related to purchase order management have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Vendors](AP_30_30_00.md) \(AP30300\)|Make sure that needed vendors have been defined, as described in [Vendors: General Information](Vendor_GeneralInfo.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that all stock items have been configured, as described in [Stock Items: General Information](Stock_Items_GeneralInfo.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of purchases by specifying additional settings:

-   To reduce input errors when users enter orders, set up the validation of order totals by selecting the **For Normal and Standard Orders** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. If this check box is selected, when a user creates a new purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, to take the order off hold, the user must enter the order total in the **Control Total** box after verifying the order’s details.
-   To cause the system to automatically release accounts payable bills generated on release of purchase receipts, select the **Release AP Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form. For information on processing bills, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).
-   To cause purchase receipts to be created with the *On Hold* status \(so that users can verify them before processing them further\), select the **Hold Receipts on Entry** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form.
-   To cause the system to automatically release inventory receipts generated on release of purchase receipts, select the **Release IN Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form.
-   To cause the system to automatically post general ledger batches generated during the processing of purchase documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process documents for pay-to vendors and supplied-by vendors by performing instructions similar to those described in [Vendor Relations: Process Activity](Finance_Managing_Vendor_Relations_Activity.md).

**Parent topic:**[Managing Vendor Relations](../UserGuide/Finance_Managing_Vendor_Relations_Mapref.md)

