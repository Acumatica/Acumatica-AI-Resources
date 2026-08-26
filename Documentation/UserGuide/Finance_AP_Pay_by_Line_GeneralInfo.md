# Applying Payments to Particular Lines: General Information {#_997a0396-2741-491c-999b-fd033f8d2c88 .concept}

Some industries track the expenses and cash flows of particular projects with a high degree of granularity. Project expenses are recorded in the lines of a bill, with each line corresponding to a specific combination of a project, project task, and cost code \(if applicable\). In Acumatica ERP, you can create a payment that pays particular lines \(or one line\) of any number of AP bills.

You can use this functionality if the *Payment Application by Line* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up the functionality of paying AP documents by line
-   Process an AP bill that can be paid by line
-   Enter a payment for particular lines of the AP bill

## Applicable Scenarios { .section}

You create AP documents that can be paid by line if you want the ability to see which lines of a particular bill were covered by a partial payment or to pay bills in that way.

## Configuration of Payment by Line {#section_anl_njv_vxb .section}

For it to be possible to apply payments to individual lines, the needed configuration steps must be performed in Acumatica ERP as follows:

-   The *Payment Application by Line* feature must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

    If you also want to give users the ability to track retainage by individual document lines, the *Retainage Support* feature should also be enabled. For details, see [To Enter a Bill with Retainage Paid by Line](AP__HOW_To_Create_Bill_with_Retainage_Paid_By_Line.md).

    Additionally, for each line to correspond to a particular cost code \(as well as project and project task\), the *Cost Code* feature must be enabled.

-   Optional: In the settings of any vendor class, you select the **Pay by Line** check box on the **General** tab \(**Default Financial Settings** section\) of the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form. With this setting, the ability to apply payments to individual lines of AP documents is turned on by default for newly created vendors of the vendor class. If this check box is selected for a class, when you create a vendor and assign it to the class, the **Pay by Line** check box on the **Payment** tab of the [Vendors](AP_30_30_00.md) form is selected by default. It can be cleared for a particular vendor, if needed. \(The vendor setting is then used as the default setting for the AP document.\)
-   Optional: In the settings of any vendor, you select the **Pay by Line** check box on the **Payment** tab \(**Default Financial Settings** section\) of the [Vendors](AP_30_30_00.md) \(AP303000\) form. This gives users the ability to apply payments to individual lines of the AP documents of this vendor. If a vendor with this check box selected is specified for a bill, the **Pay by Line** check box is selected by default on the following forms:
    -   [Bills and Adjustments](AP_30_10_00.md) \(AP301000\)
    -   [Tax Bills and Adjustments](TX_30_30_00.md) \(TX303000\) form if the vendor is a tax agency

You can turn on the ability to pay documents by line for any vendor class and any vendor both during initial configuration and at any time thereafter. You can also turn off this capability for any class or vendor, if needed.

## Entry of Documents That Can Be Paid by Line {#section_enl_njv_vxb .section}

When you are entering an AP document that can be paid by line, you make sure the **Pay by Line** check box is selected for the document in the Summary area of the [Bills and Adjustments](AP_30_10_00.md)\(AP301000\) form or the [Tax Bills and Adjustments](TX_30_30_00.md) \(TX303000\) form if the vendor is a tax agency.

Then you add lines to the AP document on the **Details** tab, specifying the inventory ID, project, project task, and cost code \(if applicable\) for each line. The system assigns the line number to each line and displays it in the **Line Nbr.** column, which appears in the table when the **Pay by Line** check box is selected for a document.

When preparing payments for these documents on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form, you select separate document lines in the table on the **Documents to Pay** tab. When a payment is applied to a selected line, the system updates the line balance to show the open balance of the line after a payment is applied. After you release the payment, you can view the unpaid balance of the original document in the Summary area of the [Bills and Adjustments](AP_30_10_00.md) or [Tax Bills and Adjustments](TX_30_30_00.md) form.

**Attention:** If the *Invoice Rounding* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the functionality of this feature is not applicable to documents that can be paid by line. That is, the amounts in these documents cannot be rounded, while the amounts in other documents can be rounded.

This functionality is not supported for taxable documents that have a tax zone of external tax providers selected for them in the **Vendor Tax Zone** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

## Processing of Cash Discounts {#section_nnl_njv_vxb .section}

If a cash discount for early payment applies to an AP document for which individual lines can be paid, the cash discount is distributed proportionally among the lines of the document. The discount amounts for each line are displayed in the **Cash Discount Balance** column on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The rounding difference in the calculated cash discount is included in the line with the highest amount.

If a document that has been paid by individual lines includes a cash discount for early payment, this cash discount is distributed proportionally among the lines of the document. These discount amounts are shown in the **Cash Discount Taken \(Payment currency\)** column on the **Documents to Apply** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form. In this column, you can edit the cash discount taken for a particular line. The original bill displays the difference between the calculated cash discount and the cash discount taken in the **Cash Discount Balance** column for a particular line.

## Processing of Debit Adjustments {#section_qnl_njv_vxb .section}

If debit adjustments have been created in the system automatically when a user reversed a document, these debit adjustments cannot be applied by line. That is, for debit adjustments created automatically, on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, the **Pay by Line** check box in the Summary area will always be cleared and unavailable for editing.

Debit adjustments created manually on the [Bills and Adjustments](AP_30_10_00.md) form can be applied by line. For these debit adjustments, the **Pay by Line** check box in the Summary area can be selected. For details, see [To Enter a Debit Adjustment That Can Be Applied by Line](AP__HOW_To_Enter_Debit_Adjustment_To_Be_Applied_by_Line.md).

## Lines with Negative Amounts in AP Documents Paid by Line {#section_tnl_njv_vxb .section}

On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, AP documents with the **Pay by Line** check box selected can have lines with a negative amount in any of the following columns on the **Details** tab: **Ext. Cost**, **Retainage Amount**, and **Amount**.

These documents can be released if their balance is greater than or equal to *0.00*.

**Important:** The system does not allow users to add lines with negative amounts to documents with both the **Pay by Line** and **Joint Payees** check boxes selected.

On reversal of an AP document with a negative amount in a line, a related document is created with the same signs as the amounts in the document lines.

**Attention:** When releasing retainage for documents with retainage and paid by line, depending on the sign of the total retainage to release for each original document, the system will generate one of the following:

-   A retainage bill if the retainage to release is greater or equal to *0.00*
-   A retainage debit adjustment if the retainage to release is less than *0.00*

For bills and debit adjustments that have lines with negative amounts, the cash discount amount will also be negative. The cash discount is specified for a document line in the **Cash Discount Balance** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

A document with a cash discount can be released only if the total cash discount shown in the **Cash Discount** box in the Summary area is greater than or equal to *0.00*. When such a document is applied to a payment on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, the amount in the **Cash Discount Taken \(Payment currency\)** column for a line with a negative amount can be less than or equal to *0.00*.

## Overview of Payment by Line {#section_b4l_njv_vxb .section}

When you create a payment for particular lines of a bill, the process unfolds as follows:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you create a bill, select the **Pay by Line** check box in the Summary area, and then add multiple lines to this bill. You then release the bill.
2.  Optional: On the [Bills and Adjustments](AP_30_10_00.md) form, you create a debit adjustment with multiple lines. For details, see [To Enter a Debit Adjustment That Can Be Applied by Line](AP__HOW_To_Enter_Debit_Adjustment_To_Be_Applied_by_Line.md).
3.  You can create a payment on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form. When you need to pay multiple documents, you instead use the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form. On either of these forms, you select lines of the bill and pay them in full or partially. If a line of the bill is selected for payment but the payment has not yet been released, this line cannot be selected in a different payment.
4.  Optional: On the [Checks and Payments](AP_30_20_00.md) or [Prepare Payments](AP_50_30_00.md) form, you can also apply a debit adjustment to the payment to reduce the amount of the payment. On either of these forms, you select lines of the debit adjustment and pay them in full or partially. If a line of the debit adjustment is selected for payment but the payment has not yet been released, this line cannot be selected in a different payment.
5.  After you release the payment, the system assigns the original AP document the *Closed* status if it has been paid in full \(or the document retains the *Open* balance if has been paid partially\). The system updates the amounts paid in the payment on the [Checks and Payments](AP_30_20_00.md) form and the balances of all the lines of the AP document on the [Bills and Adjustments](AP_30_10_00.md) form.

**Parent topic:**[Applying Payments to Particular Lines of AP Documents](../UserGuide/Finance_AP_Payments_for_Particular_Lines_Mapref.md)

