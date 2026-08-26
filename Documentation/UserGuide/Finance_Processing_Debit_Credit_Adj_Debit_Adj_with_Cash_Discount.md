# Debit and Credit Adjustments: Debit Adjustments with Cash Discounts {#_bec9fed5-2bb0-468b-867a-cd570ca11d5b .concept}

Debit adjustments that you create in Acumatica ERP can have credit terms specified. As a result, these documents can include a cash discount.

## Ability to Apply Cash Discounts to Debit Adjustments { .section}

To turn on the application of cash discounts in debit adjustments, on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, you select the **Use Credit Terms in Debit Adjustments** check box in the **Data Entry Settings** section.

You create debit adjustments with a cash discount on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form by specifying the needed credit terms in the **Terms** box. The following table shows the availability of the **Terms**, **Cash Discounts Date**, **Due Date**, and **Cash Discount** boxes \(that is, whether these settings can be edited\), which depends on the status of the selected debit adjustment.

|Debit Adjustment Status|Terms|Due Date|Cash Discount Date|Cash Discount|
|-----------------------|-----|--------|------------------|-------------|
|Unreleased \(*On Hold*, *Balanced*, or *Scheduled*\)|Available|Available|Available|Available|
|Released \(*Open*\)|Unavailable|Available|Available|Unavailable|
|Closed \(*Closed* or *Voided*\)|Unavailable|Unavailable|Unavailable|Unavailable|

## Cash Discount Settings in Debit Adjustments { .section}

When you create a debit adjustment on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form by copying an existing one, the system inserts the settings as follows:

-   If the original debit adjustment has credit terms specified, the **Terms**, **Cash Discount Date**, **Due Date**, and **Cash Discount** settings are copied from the original document to the new document, and these boxes are available.
-   If the original debit adjustment has no credit terms specified, the vendor's settings are copied from the [Vendors](AP_30_30_00.md) \(AP303000\) form to the **Terms**, **Cash Discount Date**, **Due Date**, and **Cash Discount** boxes, and the boxes are unavailable. If the **Use Credit Terms in Debit Adjustments** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, the **Terms** is copied from the vendor's settings and the values in the **Cash Discount Date**, **Due Date**, and **Cash Discount** boxes are calculated based on these terms.

When you create a debit adjustment by reversing a bill or a credit adjustment, the system inserts the settings as follows:

-   If the **Use Credit Terms in Debit Adjustments** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, the **Terms**, **Cash Discount Date**, **Due Date**, and **Cash Discount** settings are copied from the original document, and these boxes are available.
-   If the **Use Credit Terms in Debit Adjustments** check box is cleared on the [Accounts Payable Preferences](AP_10_10_00.md) form, the **Terms**, **Cash Discount Date**, and **Due Date** boxes are empty, and the **Cash Discount** is *0.00*. All these boxes are unavailable.

When you create a credit adjustment by reversing a debit adjustment, the system inserts the settings as follows:

-   If the debit adjustment has credit terms specified, its **Terms**, **Cash Discount Date**, **Due Date**, and **Cash Discount** settings are copied from the debit adjustment to the credit adjustment.
-   If the debit adjustment has no credit terms specified, the **Terms** are copied from the vendor settings on the [Vendors](AP_30_30_00.md) \(AP303000\) form, and the **Cash Discount Date**, **Due Date**, and **Cash Discount** settings are calculated based on these terms.

If a debit adjustment created on the [Bills and Adjustments](AP_30_10_00.md) form has credit terms specified in the **Terms** box and the **Pay by Line** check box is selected, the system distributes the amount in the **Cash Discount** box among all the document lines.

If a debit adjustment created on the [Bills and Adjustments](AP_30_10_00.md) form has credit terms of the *Multiple* installment type, cash discounts are not supported. In other words, the **Cash Discount** is set to *0.00* and unavailable for editing. If you change the credit terms in the **Terms** box, the system will recalculate the **Cash Discount** value depending on the selected credit terms.

For debit adjustments that are created by the system on the [Expense Claim](EP_30_10_00.md) \(EP301000\) and [Purchase Receipts](PO_30_20_00.md) \(PO302000\) forms, imported via an import scenario, or imported via the API, the system fills in the **Terms**, **Cash Discount Date**, **Due Date**, and **Cash Discount** boxes as follows:

-   If the **Use Credit Terms in Debit Adjustments** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) form; the system copies the **Terms** from the vendor's settings, and the other settings are calculated based on these terms.
-   If the **Use Credit Terms in Debit Adjustments** check box is cleared on the [Accounts Payable Preferences](AP_10_10_00.md) form, these boxes are empty and unavailable.

**Parent topic:**[Processing Debit and Credit Adjustments](../UserGuide/Finance_Processing_Debit_and_Credit_Mapref.md)

