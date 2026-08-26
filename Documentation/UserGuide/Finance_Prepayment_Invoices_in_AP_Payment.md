# AP Prepayment Invoices: Paying a Prepayment Invoice {#_c335c84d-ed3e-4f26-8cf7-6029e6dee9a5 .concept}

In this topic, you will learn how to pay a released prepayment invoice in full or partially, how the system processes the payment, and how the payment affects document statuses, vendor balances, and generated general ledger and VAT transactions.

## Processing a Prepayment Invoice Payment {#section_wlp_jym_whc .section}

Once the prepayment invoice has been released, you can pay it. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you click **Pay** on the form toolbar. The system opens the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form with the prepayment invoice added on the **Documents to Apply** tab. You can now pay the prepayment invoice fully or partially.

**To Pay the Prepayment Invoice in Full**

First, ensure that the system has inserted the prepayment invoice’s unpaid balance in the **Payment Amount** box of the Summary area of the [Checks and Payments](AP_30_20_00.md) form and in the **Amount Paid** column of the **Documents to Apply** tab.

Then release the payment. Depending on the vendor's payment method, you may have to print the corresponding check first.

When the payment application is released, the system generates a GL batch to credit the company's cash account and debit the Accounts Payable account. The batch also includes VAT transactions debiting the Tax Claimable account and crediting the Tax on AP Prepayment account. You can find the GL batch link on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) form.

The *Payment* document is assigned the *Closed* status. On the **Application History** tab, the system adds a line with the reference numbers of the prepayment invoice and the generated GL batch. The prepayment invoice is assigned the *Unapplied* status, which means that its balance can be applied to the vendor’s AP bills or credit adjustments.

On the [Bills and Adjustments](AP_30_10_00.md) form, the balance of the prepayment invoice is now displayed in the **Balance** box \(which replaces the **Unpaid Balance** box once the prepayment invoice is paid\) in the Summary area. The system also updates the vendor’s prepayment balance on the [Vendors](AP_30_30_00.md) \(AP303000\) form.

**To Pay the Prepayment Invoice Partially**

To apply a partial payment to the prepayment invoice, on the [Checks and Payments](AP_30_20_00.md) form, specify this amount in the **Payment Amount** box of the Summary area and in the **Amount Paid** column on the **Documents to Apply** tab. Then release the payment.

The generated GL batch includes VAT transactions calculated proportionally to the paid amount. You can find the link to this batch on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) form. The payment document is assigned the *Closed* status, and the prepayment invoice maintains the *Pending Payment* status, with the remaining amount shown in the **Unpaid Balance**box on the [Bills and Adjustments](AP_30_10_00.md) form.

You can either pay the unpaid balance of the prepayment invoice or write it off. To write off the unpaid balance of the invoice, you click **Write Off Unpaid Balance** on the More menu of the [Bills and Adjustments](AP_30_10_00.md) form. The system creates a document of the *Debit Adj.* type and opens it on the same form. When the debit adjustment is released, the system generates a GL transaction that credits the vendor's prepayment \(deposit\) account and debits the Accounts Payable account.

**Parent topic:**[Processing Prepayment Invoices](../UserGuide/Finance_ProcessingPrepayment_Invocies_Mapref.md)

