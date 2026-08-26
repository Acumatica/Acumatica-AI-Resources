# Blanket Purchase Orders: Implementation Checklist {#_56c37f15-611e-474a-9651-47c863c9afad .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of blanket purchase orders, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process blanket purchase orders, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|The needed features have been enabled and the necessary settings have been specified, as demonstrated in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Blanket and Standard Purchase Orders* feature has been enabled.|
|[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)|The account and subaccount for the freight expenses required for the delivery of purchased goods from vendors have been specified on the **General** tab \(**Other** section\) in the **Freight Expense Account** and **Freight Expense Sub.** boxes, respectively.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|All the needed vendors have been created, as demonstrated in [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|All the needed stock items have been created, as demonstrated in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|All the needed non-stock items have been created, as demonstrated in [Non-Stock Items: Implementation Activity](Non_Stock_Items_OrderMgmt_Implem_Activity.md)|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow in which blanket purchase orders are processed by specifying additional settings on the **General** tab of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form as follows:

-   To reduce input errors when users enter child orders, select the **For Normal and Standard Orders** check box in the **Validate Total on Entry** section. If this check box is selected, validation of the order total is required when a user creates a new purchase order of the *Normal* or *Standard* type on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. To take the order off hold, the user must enter the order total in the **Control Total** box after verifying the order details.
-   To cause the system to automatically create an accounts payable bill on release of a purchase receipt, select the **Create Bill on Receipt Release** check box in the **Other** section. In this case, when a user creates a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system automatically selects the **Create Bill** check box. \(The user can clear this check box for a particular bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.\)

    To cause the system to automatically release accounts payable bills generated on release of purchase receipts, select the **Release AP Documents Automatically** check box in the **Other** section. For information on processing bills, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).

-   To cause purchase receipts to be created with the *On Hold* status \(so that users can verify them before processing them further\), select the **Hold Receipts on Entry** check box in the **Other** section.
-   To cause the system to automatically release inventory transactions that have been generated on release of purchase receipts, select the **Release IN Documents Automatically** check box in the **Other** section.

Also, to cause the system to automatically post general ledger batches generated during the processing of purchase documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a blanker purchase order by performing instructions similar to those described in [Blanket Purchase Orders: Process Activity](OrderMgmt_Blanket_Purchase_Orders_Activity.md).

**Parent topic:**[Processing Blanket Purchase Orders](../UserGuide/OrderMgmt_Blanket_Purchase_Orders_Mapref.md)

