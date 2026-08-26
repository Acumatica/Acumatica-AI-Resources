# Prepayment Invoices: Application of Prepayment Invoices to Sales Invoices {#_d7f52771-3e0c-4591-89d7-71f38118dffb .concept}

When customers make prepayments for sales orders, the system automatically applies the related prepayment invoices to the corresponding sales invoices when these invoices are created. Depending on whether the prepayment covers the full or partial order amount, the sales invoice may be closed automatically or remain open for the remaining balance.

This topic describes how prepayment invoices are applied to sales invoices and how customer prepayment requirements affect sales order and sales invoice statuses.

## Full Prepayment of a Sales Order {#section_x2q_lp2_13c .section}

If a prepayment invoice has been created for a total amount of a sales order and then paid in full, when you create a sales invoice for the sales order, the system automatically applies the prepayment invoice to the sales invoice. In the sales invoice, on the **Applications** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, the system adds a line with the prepayment invoice. Once you release the sales invoice, it is assigned the *Closed* status and the sales order is assigned the *Completed*status.

## Partial Prepayment of a Sales Order {#section_jh3_qp2_13c .section}

If a prepayment invoice has been created for a part of an order total amount and then paid, when you create a sales invoice for the sales order, the system automatically applies the prepayment invoice to the sales invoice on the **Applications** tab of the [Invoices and Memos](AR_30_10_00.md) form. Once the sales invoice has been released, in the **Balance** box of the Summary area of the [Invoices and Memos](AR_30_10_00.md) form, the system specifies the invoice balance, from which it has subtracted the amount paid by the prepayment invoice. The sales invoice remains open and you will need to pay the amount that has not been covered by the prepayment invoice.

If a particular prepayment percent is required based on the customer's credit terms settings on the [Credit Terms](CS_20_65_00.md) \(CS206500\) form, then a sales order retains the *Awaiting Payment* status until you pay the full required prepayment amount. You can create a prepayment invoice that covers 100% of the required prepayment amount. In that case, after the prepayment invoice has been paid, the sales order is assigned the *Open* status and you can prepare a sales invoice for the remaining amount of the order. You can also create two or more prepayment invoices that in total will cover the required prepayment percent.

**Parent topic:**[Processing Prepayment Invoices for Sales Orders](../UserGuide/OrderMgmt_Prepayment_Invoices_Mapref.md)

