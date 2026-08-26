# Vendor Relations: Application in AP Documents {#_233dc916-55e7-40dd-a948-373cfb7a4134 .concept}

The vendor relations functionality may affect the AP \(Accounts Payable\) bills and debit adjustments that can be created manually or automatically based on purchase orders or purchase receipts. This topic describes AP documents with vendor relations set up—that is, with a selected vendor that is a supplied-by vendor or a pay-to vendor.

**Attention:** This functionality is available only if the *Vendor Relations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## AP Documents Based on Purchase Orders or Purchase Receipts {#section_jch_njv_vxb .section}

If a user initiates the creation of an AP bill or debit adjustment from a purchase order or purchase receipt with a supplied-to vendor specified, the system inserts in the AP document the vendor and vendor location on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. It copies the vendor and vendor location specified in the **Pay-to Vendor** and **Pay-to Vendor Location** boxes, respectively on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form or the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form. For details, see [Vendor Relations in Purchase Documents](PO__con_Vendor_Relations_in_PO.md).

## AP Documents Created Manually {#section_lch_njv_vxb .section}

If you create an AP document manually by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, the system populates the **Supplied-By Vendor** and **Supplied-By Vendor Location** boxes on the **Financial** tab \(**Receipt Info** section\), depending on whether vendor relations are set up for the selected vendor as follows:

-   Vendor relations are not set up \(that is, the selected vendor is neither a supplied-by vendor nor a pay-to vendor\): The system populates the **Supplied-By Vendor** and **Supplied-By Vendor Location** boxes with the vendor selected in the Summary area and its location, and makes these boxes unavailable for editing.
-   The selected vendor is a supplied-by vendor: The system populates the **Supplied-By Vendor** and **Supplied-By Vendor Location** boxes with the vendor selected in the Summary area and its location, and makes these boxes unavailable for editing.
-   The selected vendor is a pay-to vendor: The system inserts the current vendor in the **Supplied-By Vendor** box and makes this box available for editing. You can override the value in this box with any supplied-by vendor account and change the **Supplied-By Vendor Location** value, if needed.

If you select a pay-to vendor in the bill or adjustment, you can add to the AP document a purchase order or purchase receipt assigned to the supplied-by vendor \(which you select in the **Supplied-By Vendor** box\) by using the **Add PO**, **Add PO Receipt**, and **Add PO Receipt Line** buttons on the table toolbar of the **Details** tab.

**Attention:** The list of documents varies depending on the selected supplied-by vendor and its location.

## Discount Calculation in AP Documents with Vendor Relations Set Up {#section_pch_njv_vxb .section}

For a bill or adjustment on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, if the supplied-by vendor \(specified in the **Supplied-By Vendor** box of the **Financial** tab\) differs from the vendor specified in the **Vendor** box of the Summary area, the system applies the discounts of the supplied-by vendor.

## Tax Calculation in AP Documents with Vendor Relations Set Up {#section_rch_njv_vxb .section}

For a bill or adjustment on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form with vendor relations set up, the system updates the **Vendor Tax Zone** box on the **Financial** tab with the tax zone of the vendor selected in the **Supplied-By Vendor** box on this tab. The system calculates the tax and taxable amounts in this AP document by using this tax zone.

**Parent topic:**[Managing Vendor Relations](../UserGuide/Finance_Managing_Vendor_Relations_Mapref.md)

