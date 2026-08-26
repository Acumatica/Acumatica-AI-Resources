# Purchases of Services Without Receipts: Implementation Checklist {#_9f3e0e26-0fbf-4ab4-b21a-1c144486a2a0 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases of services that will not be included in a purchase receipt, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_yck_blr_hlb .section}

We recommend that before you initially process purchases of services without a purchase receipt, you make sure the needed settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)||
|[Vendors](AP_30_30_00.md) \(AP303000\)|Make sure that all needed vendors have been configured as described in [Vendors: General Information](Vendor_GeneralInfo.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)||

## Other Settings That Affect the Workflow {#section_zck_blr_hlb .section}

You can affect the workflow of processing purchases of services without a purchase receipt by selecting the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form to cause the system to automatically post GL batches generated during processing purchase documents. For information on processing GL batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration {#section_adk_blr_hlb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a purchase order by performing instructions similar to those described in [Purchases of Services Without Receipts: Process Activity](OrderMgmt_Purchase_of_Services_without_Receipt_Activity.md).

**Parent topic:**[Processing Purchases of Services Without Receipts](../UserGuide/OrderMgmt_Purchase_of_Services_without_Receipt_Mapref.md)

