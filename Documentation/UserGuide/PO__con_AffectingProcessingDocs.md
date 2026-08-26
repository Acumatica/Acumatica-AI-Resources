# Changing the Processing of Purchase Documents {#_16c61c51-ab83-4ae6-9ff4-f27066ec5950 .concept}

In Acumatica ERP, you can require a user to perform additional steps during the processing of purchase orders and related documents. The following sections of this topic explain how you can adjust the workflow for processing the purchase orders and the related documents as needed in your organization.

## Holding Purchase Receipts and Landed Cost Documents on Entry { .section}

The following documents are created with the *On Hold* status if the respective check box is selected on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form:

-   Purchase receipts: **Hold Receipts on Entry**
-   Landed cost documents: **Hold Landed Costs on Entry**

If one of these check boxes is cleared, the newly created documents of the associated type are created with the *Balanced* status.

## Affecting the Processing of Generated Documents { .section}

The following documents are released automatically upon generation if the respective check box is selected on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form:

-   Inventory receipts: **Release IN Documents Automatically**
-   Landed cost adjustments: **Release LC IN Adjustments Automatically**
-   Accounts payable documents: **Release AP Documents Automatically**

If one of these check boxes is cleared, the documents of the associated type are generated and saved with the *Balanced* status.

## Making the Entry of Documents Error-Proof { .section}

In the **Validate Total on Entry** section on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form, you can prevent the particular type of document from being processed until a user types the total order amount in the **Control Total** box \(for orders and landed costs\), or the total receipt quantity in the **Control Qty.** box, on the corresponding document entry form. The control total or quantity that the user enters must be equal to the order total calculated by the system. You can select the corresponding check boxes in this section to enable total validation for receipts, normal and standard purchase orders, blanket orders, drop-ship purchase orders, and landed cost documents.

## Making the Entry of an External Reference Number Foolproof { .section}

You select the **Require Vendor Reference** check box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form to prevent any actions from being performed on a purchase receipt or a landed cost document \(that is still editable\) until a user types the external reference number of the vendor's original document in the **Vendor Ref.** box, which is displayed on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form \(for purchase receipts\) or [Landed Costs](PO_30_30_00.md) \(PO303000\) form \(for landed cost documents\).

## Affecting the Purchase Receipt Creation { .section}

You can use the **Default Receipt Quantity** box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form to define which quantities the system should specify in purchase receipts created from purchase orders. You can configure the system to create purchase receipt lines with items' quantities from a purchase order \(if the *Open Quantity* is selected\), or to create lines with a quantity of zero by default, so that the user enters the received quantity manually.

## Determining Whether Bills Are Created { .section}

To set up the workflow of the processing of purchase receipts, landed cost documents, and bills, you can use the **Create Bill On Receipt Release** and **Create Bill on LC Release** check boxes on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. These check boxes provides the default value for the **Create Bill** check box on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form and on the [Landed Costs](PO_30_30_00.md) \(PO303000\) form, respectively.

For the convenience of users, you should select these check boxes if bills should be generated automatically for most receipts and landed cost documents. You should clear these check boxes if users should enter bills manually for most receipts or landed cost documents or if users enter or import the bills and later link them to receipts and landed cost documents. A user can override this setting if needed for a particular purchase receipt or landed cost document.

## Affecting the Processing of Bills { .section}

The **Allow AP Bill Before Receipt** check box, which can be selected or cleared for a particular vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form or for a particular vendor location on the [Vendor Locations](AP_30_30_10.md) \(AP303010\) form, defines the workflow for processing purchase orders and related documents. The state of the check box is copied to purchase orders prepared for the vendor, and affects the processing as follows:

-   If the check box is selected, you can create a purchase receipt and an AP bill for the purchase order in any order.
-   If the check box is cleared, you can prepare an AP bill for the lines with stock items and non-stock items requiring a purchase receipt only after the purchase receipt has been prepared and processed.

## Affecting the Processing of Service Lines { .section}

On the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form, you can specify whether the system should process lines of the *Service* type in normal and drop-ship purchase orders, respectively, through purchase receipts by selecting or clearing the following check boxes:

-   **Process Service Lines from Normal Purchase Orders via Purchase Receipt**: If this check box is selected, non-stock lines of the *Service* type in purchase orders of the *Normal* type are processed through purchase receipts. If the check box is cleared, the non-stock lines of the *Service* type are not copied to purchase receipts and are billed directly from purchase orders.
-   **Process Service Lines from Drop-Ship Purchase Orders via Purchase Receipt**: If this check box is selected, non-stock lines of the *Service* type in purchase orders of the *Drop-Ship* type are processed through purchase receipts. If the check box is cleared, the non-stock lines of the *Service* type are not copied to purchase receipts and are billed directly from drop-ship orders.

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

