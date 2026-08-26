# Purchase Receipt Correction: Implementation Checklist {#_540b496b-ae33-4080-a74c-fb1c2df4b66c .concept}

The following sections provide details you can use to ensure that the system is configured properly for the correction or cancellation of purchase receipts. You will also learn about the settings that affect the processing workflow so that you can make any needed changes.

## Implementation Checklist { .section}

We recommend that before you initially perform the correction or cancellation of purchase receipts, you make sure that the needed features have been enabled, settings have been specified, and entities have been created. The following checklist summarizes the criteria you need to check.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Inventory* feature has been enabled.|
|[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)|All necessary settings related to purchase order management have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|All needed vendors have been created, as described in [Vendors: General Information](Vendor_GeneralInfo.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|All stock items have been defined, as described in [Stock Items: General Information](Stock_Items_GeneralInfo.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of correcting and canceling purchase receipts by specifying additional settings as follows:

-   To cause purchase receipts to be created with the *On Hold* status, select the **Hold Receipts on Entry** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. This makes it possible for a responsible user to verify entered receipts before they are processed.
-   To cause the system to automatically post general ledger batches generated during the processing of purchase documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

**Parent topic:**[Correcting Purchase Receipts](../UserGuide/OrderMgmt_Correcting_Purchase_Receipt_Mapref.md)

