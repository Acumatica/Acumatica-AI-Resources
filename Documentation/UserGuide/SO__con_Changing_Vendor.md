# Changing the Vendor in a Purchase Order {#_a5902079-d0ed-4a29-80c7-9b0726d4db2d .concept}

You may want to change the vendor in the existing purchase order—for example, if you want to compare the order total for different vendors, or if the wrong vendor was selected in the purchase order. To change the vendor, you need to change the vendor ID specified for the purchase order.

You change the vendor ID in the **Vendor** box of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form for a purchase order that has the *On Hold* status, check the settings of the purchase order that have changed, and save your changes. The following sections describe the settings that are and are not preserved, as well as the restrictions on changing the vendor in a document.

## Settings that Are Preserved When the Vendor Is Changed { .section}

When you change the vendor ID of the purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, the system preserves the following settings in the Summary area:

-   **Type**
-   **Order Nbr.**
-   **Description**
-   **Currency**

The system also preserves the following information in the appropriate columns of the order lines on the **Details** tab:

-   **Branch**
-   **Inventory ID**, **UOM**, and **Order Qty.**
-   **Warehouse**
-   **Line Type**
-   **Project** and **Project Task**\(if applicable\)
-   **Tax Category**
-   The state of the **Completed** and **Canceled** check boxes
-   Files and notes that have been attached to the line

## Settings that Are Changed When the Vendor Is Changed { .section}

When you change the vendor ID in the purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, the system updates the following information in the Summary area based on the new date and on the settings of the newly selected vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form:

-   **Date**: The system inserts the current business date, but you can override it.
-   **Promised On**: The system calculates this as the current business date plus the value specified as the **Lead Time \(Days\)** of the new vendor.
-   **Location**: The system inserts the default location of the selected vendor \(or it inserts *MAIN*, if it is the only location of this vendor\). This box appears only if the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   **Owner**: The system inserts the identifier of the employee corresponding to the user who changes the vendor.
-   **Vendor Ref. Nbr.**: This box is cleared so that a new vendor reference number can be entered, if applicable.
-   Currency Rate: This rate, which can be found in the box right of the **Currency** box that shows the identifier, is recalculated based on the new date specified for the order.

The system also updates certain document-level settings on the following tabs of the form:

-   **Shipping** tab: In the **Ship Via**section, the **FOB Point** and **Ship Via** settings of the new vendor are inserted.
-   **Vendor Info** tab: The settings of the newly selected vendor are inserted by default in the **Vendor Contact**and **Vendor Address** sections, but you can override the inserted settings. Also, in the **Info** section, the system inserts the vendor's settings in the following boxes:
    -   **Terms**: This box holds the credit terms of the vendor.
    -   **Vendor Tax Zone**: The system recalculates the taxes in the order based on the new tax settings\).
    -   **Pay-To Vendor**: This box appears on the tab if the *Vendor Relations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.
-   **Other** tab: The system specifies the default states of the **Don't Print** and **Don't Email** check boxes based on the **Print Orders** and **Send Orders by Email** settings \(respectively\) of the new vendor, which have been specified on the **Purchase Settings** tab of the [Vendors](AP_30_30_00.md) form. Also, the **Retainage Percent** box is filled with the percentage specified for the vendor; this box appear on the tab if the **Apply Retainage** check box is selected on this tab and the *Retainage Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

On the **Details** tab, the system also updates information in the appropriate columns of the purchase order lines as follows:

-   The following columns related to prices and costs use the vendor-specific costs: **Unit Cost** and **Ext. Cost**
-   **Alternate ID**: The system updates the column with the alternate ID of the item with the new vendor or clears the box if no alternate ID is specified for a new vendor.
-   **Min. Receipt \(%\)**, **Max. Receipt \(%\)**, **Complete On \(%\)**, and **Receipt Action**: The default settings of the vendor are inserted for each line, but they can be overridden.
-   The following columns related to discounts are updated: **Discount Percent** and **Discount Amount**.
-   The expense and accrual accounts and subaccounts: The system inserts the appropriate values in the following columns: **Account**, **Sub.**, **Accrual Account**, and **Accrual Sub.**
-   The following columns related to dates are updated: **Requested** and **Promised**.

The system does not automatically save the document after you change the vendor ID, so you can easily cancel these changes by clicking **Cancel** on the form toolbar.

## Restrictions on Changing the Vendor { .section}

You cannot save the purchase order after changing the vendor in any of the following cases:

-   At least one AP bill, prepayment, or purchase receipt has been linked to the purchase order.
-   The purchase order has a line or multiple lines that have been created based on a blanket purchase order.

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

