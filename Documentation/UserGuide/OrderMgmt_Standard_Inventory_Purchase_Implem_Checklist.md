# Purchases of Stock Items: Implementation Checklist {#_3f90fa36-8672-4d37-acc6-6b3bf53c9db2 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases of stock items, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process purchases of stock items, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)|Make sure that all necessary settings related to purchase order management have been specified as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Make sure that all needed vendors have been configured as described in [Vendors: General Information](Vendor_GeneralInfo.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that all stock items have been configured as described in [Stock Items: General Information](Stock_Items_GeneralInfo.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing purchases by specifying additional settings:

-   To reduce input errors when users enter orders, set up the validation of order totals by selecting the **For Normal and Standard Orders** check box in the **Validate Total on Entry** section of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form \(**General Settings** tab\). If this check box is selected, when a user creates a new purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, to take the order off hold, the user must enter the order total in the **Control Total** box after verifying the order details.
-   To cause an accounts payable bill to be created automatically on release of a purchase receipt by default, select the **Create Bill on Receipt Release** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form. In this case, when a user creates a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system automatically selects the **Create Bill** check box. \(The user can clear this check box for a particular bill.\)

    To cause the system to automatically release accounts payable bills generated on release of purchase receipts, select the **Release AP Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form. For information on processing bills, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).

-   To cause purchase receipts to be created with the *On Hold* status \(so that users can verify them before processing them further\), select the **Hold Receipts on Entry** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form.
-   To cause the system to automatically release inventory receipts generated on release of purchase receipts, select the **Release IN Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form.
-   To cause the system to automatically post general ledger batches generated during processing purchase documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a purchase order, as described in [Purchases of Stock Items: Process Activity](OrderMgmt_Standard_Inventory_Purchase_Process_Activity.md).

**Parent topic:**[Processing Purchases of Stock Items](../UserGuide/OrderMgmt_Standard_Inventory_Purchase_Mapref.md)

