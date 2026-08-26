# Purchases of Non-Stock Items and Services with Receipts: Implementation Checklist {#_5b3acddb-70ef-4a21-a9fe-a9348ef8fc17 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases of non-stock items \(including services\) with purchase receipts, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_yck_blr_hlb .section}

We recommend that before you initially process purchases of non-stock items which may include services, you make sure the needed settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)|-   Make sure that all necessary settings related to purchase order management have been specified as described in [Order Management Basic Configuration: General Information](../ImplementationGuide/config_OrderMgmt_Basic_GeneralInfo.md).
-   Make sure that the **Process Service lines from Normal Purchase Orders via Purchase Receipts** check box \(in the **Other** section of the **General** tab\) is selected.

|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Make sure that all needed vendors have been created as described in [Vendors: General Information](Vendor_GeneralInfo.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|Make sure that all non-stock items have been configured as described in [Non-Stock Items: Implementation Activity](Non_Stock_Items_OrderMgmt_Implem_Activity.md).

 Also, make sure that the **Require Receipt** check box \(in the **Item Defaults** section of the **General** tab\) is selected in the settings of each non-stock item for which a purchase receipt will be processed when the item is purchased.

|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Inventory* feature is enabled to be able to create purchase receipts.|

## Other Settings That Affect the Workflow {#section_zck_blr_hlb .section}

You can affect the workflow of processing purchases by specifying additional settings:

-   To cause an accounts payable bill to be created automatically on release of a purchase receipt by default, select the **Create Bill on Receipt Release** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form \(in the **Other** section of the **General** tab\). In this case, when a user creates a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system automatically selects the **Create Bill** check box in the Summary area. \(The user can clear this check box for a particular receipt, if needed.\)
-   To cause the system to automatically release accounts payable bills that are generated on release of purchase receipts, select the **Release AP Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form. For information on processing bills, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).
-   To cause purchase receipts to be created with the *On Hold* status \(so that users can verify them before processing them further\), select the **Hold Receipts on Entry** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form \(in the **Other** section of the **General** tab\).
-   To cause the system to automatically release inventory receipts generated on release of purchase receipts, select the **Release IN Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form \(in the **Other** section of the **General** tab\).
-   To cause the system to automatically post general ledger batches generated during processing purchase documents, select the **Automatically Post on Release** check box in the **Posting Settings** section of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration {#section_adk_blr_hlb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Purchases of Non-Stock Items and Services with Receipts: To Process a Purchase of Non-Stock Items](OrderMgmt_Purchase_of_Non_Stock_Items_and_Services_with_Receipt_Activity.md) and [Purchases of Non-Stock Items and Services with Receipts: To Process a Purchase of Services](OrderMgmt_Purchase_of_Services_with_Receipt_Activity.md).

**Parent topic:**[Processing Purchases of Non-Stock Items and Services with Receipts](../UserGuide/OrderMgmt_Purchase_of_Non_Stock_Items_and_Services_with_Receipt_Mapref.md)

