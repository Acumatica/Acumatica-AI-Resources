# Prepayments for Purchase Orders: Implementation Checklist {#_fbbcb945-a5c9-4357-a2d9-037f5097058f .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of prepayments for purchases of stock items, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process prepayments for purchase orders, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form|Make sure that all necessary settings related to purchase order management have been specified as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\) form|Make sure that all needed vendors have been configured as described in [Vendors: General Information](Vendor_GeneralInfo.md).|

## Vendor Settings Checklist { .section}

Make sure that all needed vendors have been configured as described in [Vendors: General Information](Vendor_GeneralInfo.md). For a vendor, on the [Vendors](AP_30_30_00.md) \(AP303000\) form, you can specify the following settings, which affects the processing of prepayments.

|Tab|Criteria to Check|Notes|
|---|-----------------|-----|
|**GL Accounts**|Specify the prepayment account in the **Prepayment Account** box.|If you do not specify a separate account for prepayments, the vendor prepayments will be debited to the vendor AP account.|
|**Payment Settings**|Specify the default prepayment percent in the **Prepayment Percent** box.| |

To learn how to configure the settings, you can complete [Prepayments for Purchase Orders: Implementation Activity](OrderMgmt_Purchase_Order_Prepayments_Implem_Activity.md).

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing purchases with prepayments by specifying additional settings as follows:

-   To reduce input errors when users enter orders, set up the validation of order totals by selecting the **For Normal and Standard Orders** check box in the **Validate Total on Entry** section of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form \(**General** tab\). If this check box is selected, when a user creates a new purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, to take the order off hold, the user must enter the order total in the **Control Total** box after verifying the order details.
-   To cause an accounts payable bill to be created automatically on release of a purchase receipt by default, select the **Create Bill on Receipt Release** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form. In this case, when a user creates a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system automatically selects the **Create Bill** check box. \(The user can clear this check box for a particular bill.\)
-   To cause the system to automatically release accounts payable bills that are generated on release of purchase receipts, select the **Release AP Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form. For information on processing bills, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).
-   To cause purchase receipts to be created with the *On Hold* status \(so that users can verify them before processing them further\), select the **Hold Receipts on Entry** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form.
-   To cause the system to automatically release inventory receipts generated on release of purchase receipts, select the **Release IN Documents Automatically** check box on the [Purchase Orders Preferences](PO_10_10_00.md) form.
-   To cause the system to automatically post general ledger batches generated during processing purchase documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration { .section}

To make sure that all settings are configured correctly, you can process a prepayment for a purchase order, as described in [Prepayments for Purchase Orders: To Process a Prepayment](OrderMgmt_Purchase_Order_Prepayments_Process_Activity.md).

**Parent topic:**[Processing Prepayments for Purchase Orders](../UserGuide/OrderMgmt_Purchase_Order_Prepayments_Mapref.md)

