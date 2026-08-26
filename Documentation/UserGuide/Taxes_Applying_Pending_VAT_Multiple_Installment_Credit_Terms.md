# Applying a Pending VAT: Processing of Documents with Multiple Installments {#_f2ff2515-cae8-4986-8e13-64198dd12de0 .concept}

Acumatica ERP supports pending VAT recognizable on payment in AR and AP documents with multiple-installment credit terms.

## Workflow of the Pending VAT Recognition in AP {#section_vv2_1y4_y4b .section}

For recognition of pending VAT applied to a line of an AP bill with multiple-installment credit terms, the typical process involves the actions and generated documents described below.

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you create and release an AP bill \(*original bill*\) with multiple-installment credit terms and with a pending VAT applied to a bill line.

    The pending VAT should be recognized on payment, that is the tax agency should have *On Payments* selected in the **VAT Recognition Method** box on the **Tax Agency** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

2.  On release of the AP bill, the system performs the following actions:
    1.  Creates a GL transaction for the original bill and assigns the *Closed* status to the bill. In the GL transaction, the pending VAT amount is debited to the Pending VAT Claimable account.
    2.  Creates a child AP bill for each installment of the multiple-installment credit terms specified for the original bill in the **Terms** box on the [Bills and Adjustments](AP_30_10_00.md) form.
    3.  Releases the child AP bills and for each child bill creates a GL transaction with the amount of each installment.
3.  On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you pay one of the child bills.
4.  On the [Recognize Input VAT](TX_50_35_00.md) \(TX503500\) form, you run the process of pending VAT recognition.

    The system performs the following actions:

    1.  Prorates the taxes posted to the Pending VAT Claimable account by the original bill according to the following formula: `ratio = Payment Amount / Original AP Bill Amount`
    2.  Transfers the recognized VAT amount from the Pending VAT Claimable account to the VAT Claimable account.
    3.  When the tax report is prepared, includes the recognized VAT amount in the tax report.
5.  When you pay the last installment on the [Checks and Payments](AP_30_20_00.md) form and recognize VAT on the [Recognize Input VAT](TX_50_35_00.md) form, the system processes discrepancies, if any, and posts the difference to the last GL transaction.

When a debit adjustment is applied to an AP bill \(and both of those documents are subject to pending VAT\), you have to process two applications on the [Recognize Input VAT](TX_50_35_00.md) form. One application should be processed for the AP bill, and the other one should be processed for the debit adjustment. \(The same practice should be applied to AR invoices and credit memos.\)

**Tip:** If you need to correct the amounts in a released AP bill that is subject to more than one pending VAT, we recommend that you reverse the original bill, and create a new one with the correct amounts.

For more information, see [Applying a Pending VAT: To Apply a Pending VAT to an AP Bill with Multiple Installments](Taxes_Applying_Pending_VAT_Process_MultipleInstallments.md).

## Workflow of the Pending VAT Recognition in AR {#section_h4p_fjv_vxb .section}

For recognition of pending VAT applied to a line of an AR invoice with multiple-installment credit terms, the typical process involves the actions and generated documents described below.

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you create and release an AR invoice \(*original invoice*\) with multiple-installment credit terms and with a pending VAT applied to an invoice line.

    The pending VAT should be recognized on payment, that is the tax agency should have *On Payments* selected in the **VAT Recognition Method** box on the **Tax Agency** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

2.  On release of the AR invoice, the system performs the following actions:
    1.  Creates a GL transaction for the original invoice and assigns the *Closed* status to the invoice. In the GL transaction, the pending VAT amount is credited to the Pending VAT Payable account.
    2.  Creates a child AR invoice for each installment of the multiple-installment credit terms specified for the original invoice in the **Terms** box on the [Invoices and Memos](AR_30_10_00.md) form.
    3.  Releases the child AR invoices and for each child invoice creates a GL transaction with the amount of each installment.
3.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you pay one of the child invoices.
4.  On the [Recognize Output VAT](TX_50_30_00.md) \(TX503000\) form, you run the process of pending VAT recognition.

    The system performs the following actions:

    1.  Prorates the taxes posted to the Pending VAT Payable account by the original invoice according to the following formula: `ratio = Payment Amount / Original AR Invoice Amount`
    2.  Transfers the recognized VAT amount from the Pending VAT Payable account to the VAT Payable account.
    3.  When the tax report is prepared, includes the recognized VAT amount in the tax report.
5.  When you pay the last installment on the [Payments and Applications](AR_30_20_00.md) form and recognize VAT on the [Recognize Output VAT](TX_50_30_00.md) form, the system processes discrepancies, if any, and posts the difference to the last GL transaction.

**Parent topic:**[Applying a Pending VAT](../UserGuide/Taxes_Applying_Pending_VAT_Mapref.md)

