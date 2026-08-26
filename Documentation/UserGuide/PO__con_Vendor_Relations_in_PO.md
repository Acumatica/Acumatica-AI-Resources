# Vendor Relations in Purchase Documents {#_0cd41c6a-289a-468f-b5ad-939a8ee49131 .concept}

If the *Vendor Relations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the vendor relations functionality can be configured. The following sections describe how the vendor relations you configure may affect the AP bills and debit adjustments created based on a purchase order or purchase receipt.

## Vendor Relations Overview { .section}

In some companies that consist of multiple branches, the branches can collectively make on order to a vendor on behalf of the company \(that is, its head office\) by sending purchase orders to that vendor. The supplier provides goods and issues a bill to the head office of the company. The head office pays it, and, in turn, issues bills to its branches. As a result, a branch receives goods from one vendor \(specified in the purchase order\), but pays for those goods to another vendor \(specified in the bill\). In Acumatica ERP, you can set up vendor relations so that the system accurately handles those vendor relations in documents. On the [Vendors](AP_30_30_00.md) \(AP303000\) form, for each vendor that supplies goods and services but does not receive payment \(a *supplied-by* vendor\), you specify its vendor for which an AP bill or debit adjustment should be created if this vendor is specified in a purchase order or receipt \(the pay-to vendor\). For details, see [Vendor Relations: General Information](Finance_Managing_Vendor_Relations_GeneralInfo.md).

## Vendor Relations in Purchase Orders and Purchase Receipts { .section}

When you create a purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, in the **Vendor** box of the Summary area, you can select a vendor with either vendor relations set up \(a supplied-by vendor\) or a vendor with no vendor relations set up. The system does one of the following for the purchase order:

-   If the selected vendor is a supplied-by vendor, the system inserts in the **Pay-to Vendor** box of the **Vendor Info** tab the pay-to vendor that is specified for the selected supplied-by vendor on the [Vendors](AP_30_30_00.md) form.
-   If vendor relations are not configured for the selected vendor, the system inserts this same vendor in the **Pay-to Vendor** box of the **Vendor Info** tab.

**Tip:** For purchase receipts on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system selects the **Pay-to Vendor** in the same way. The only difference is that this box is located on the **Financial Details** tab, in the **Billing Settings** section.

For a purchase order or a purchase receipt, you can override the vendor in the **Pay-to Vendor** box, if needed.

With the vendor relations functionality set up, when you click **Enter AP Bill** on the form toolbar of the [Purchase Orders](PO_30_10_00.md) or [Purchase Receipts](PO_30_20_00.md) form, the system creates an AP bill \(or, for example, a debit adjustment for a purchase receipt of the *Return* type\) on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form that has all the details copied from the initial document except the vendor in the **Vendor** box. In this box, the system inserts the vendor specified in the **Pay-to Vendor** box of the [Purchase Orders](PO_30_10_00.md) or [Purchase Receipts](PO_30_20_00.md) form. As a result, the bill will be paid to a different vendor than the vendor for which the purchase order was created.

## Discount Calculation { .section}

In an accounts payable document \(bill or debit adjustment\) on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form that is based on the purchase order, the system uses the discounts of the supplied-by vendor to calculate document discounts.

**Attention:** Neither manual discounts nor automatic discounts are transferred from a purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form to the related bill on the [Bills and Adjustments](AP_30_10_00.md) form. The discounts are recalculated when the bill is created.

## Tax Calculation { .section}

For a purchase order or purchase receipt on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) or [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form with vendor relations set up, the system calculates the tax and taxable amounts of the purchase order or purchase receipt by using the tax zones of the supplied-by vendors \(that is, of the vendor specified in the **Vendor** box of the Summary area of the [Purchase Orders](PO_30_10_00.md) or [Purchase Receipts](PO_30_20_00.md) form\). With vendor relations set up, the system calculates the tax and taxable amounts of the Accounts Payable documents similarly.

If integration with Avalara AvaTax is configured and used for calculating taxes for purchase documents, the vendor relations you configure may affect the way the system selects the **From** and **To** addresses in these purchase documents. For more information, see [Calculating Use and Sales Taxes in Purchase Documents](PO__con_Use_Tax_PO_Avalara.md).

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

