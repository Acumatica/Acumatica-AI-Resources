# Sales with Payments and Prepayments: Increasing of the Authorized Amount {#_2b8e375b-aef9-4f1a-82f6-24a85e13b59a .concept}

When you create a payment whose payment method has the *Credit Card* means of payment, you can capture an amount that is less than, the same as, or more than the authorized payment amount. If you increase the authorized amount, the system changes only the authorized amount in the original transaction. It does not change the other transaction settings, such as the expiration date.

## Setting Up the Functionality { .section}

To make it possible for users to increase authorized amount for payments, an administrative user should do the following:

1.  Open the [Processing Centers](CA_20_50_00.md) \(CA205000\) form and select the processing center that is used for credit card payments. Its payment method must have the *Credit Card* means of payment on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.
2.  In the Summary area \(**Payment Processing** section\), select the **Allow Increasing Authorized Amounts** check box.
3.  Save the changes.

## Increasing the Authorized Amount in Payments { .section}

On the [Sales Orders](SO_30_10_00.md) \(SO301000\) and [Invoices](SO_30_30_00.md) \(SO303000\) forms, you can increase the authorized amount for payments on orders and sales invoices, as long as the **SO Unpaid Balance** or **SO Invoice Balance** is greater than *0*.

**Tip:** You can increase the authorized amount of payments on sales orders whose order type has one of the following behaviors: *Blanket Order*, *RMA Order*, *Sales Order*, and *Invoice*. The behavior of an order type is specified on the [Order Types](SO_20_10_00.md) \(SO201000\) form.

The **Increase Authorized Amount** button is available if the payment selected in the table on the **Payments** tab \(for sales orders\) or on the **Applications** tab \(for sales invoices\) meets all of the following criteria:

-   The payment method of the payment has the *Credit Card* means of payment specified on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.
-   The processing center of the payment has the **Allow Increasing Authorized Amounts** check box selected on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.
-   The payment has the *Pre-Authorized* processing status.

To increase the authorized amount for a payment on the [Sales Orders](SO_30_10_00.md) form, you perform the following actions:

1.  You open the needed sales order with a payment and go to the **Payments** tab.
2.  In the table, you select the needed payment.
3.  On the table toolbar, you click **Increase Authorized Amount**.

    The system opens the **Increase Authorized Amount** dialog box.

4.  In the **Authorized** box \(**Increased Amounts** section\), you enter the needed amount or leave the default value.
5.  You click **Increase**.

    **Tip:** The system calculates the default value as the current amount authorized on the payment plus the unpaid balance from the sales order or sales invoice. You can manually decrease this value, but you cannot enter a larger amount.

    If you change the amount in the **Authorized** box, the **Applied to Document** amount in the **Increased Amounts** section will be recalculated automatically.

    The system updates the amount in the **Payment Amount** column of the table.


To increase the authorized amount for a payment on the [Invoices](SO_30_30_00.md) \(SO303000\) form, you perform the following actions:

1.  You open the needed sales invoice and go to the **Applications** tab.
2.  In the table, you select the needed payment.
3.  On the table toolbar, you click **Increase Authorized Amount**.

    The system opens the **Increase Authorized Amount** dialog box.

4.  In the **Authorized** box \(**Increased Amounts** section\), you enter the needed amount or leave the default value.
5.  You click **Increase** to increase the amount or **Increase and Capture** to increase the authorized amount and capture the payment.

    The system updates the amount in the **Amount Paid** column of the table.


## Mass-Processing to Increase the Authorized Amounts { .section}

You can use the [Credit Card Processing for Sales](SO_50_70_00.md) \(SO507000\) form to increase the authorized amounts for multiple documents. To do this, you perform the following actions:

1.  On the [Credit Card Processing for Sales](SO_50_70_00.md) form, you select *Increase Authorized Amount* in the **Action** box. This causes the following columns to be displayed in the table:

    -   **Increased Authorized Amount**: The default value of this column is calculated as the current amount authorized on the payment plus the unpaid balance from the sales order or sales invoice. This value cannot be changed on the [Credit Card Processing for Sales](SO_50_70_00.md) form. If a correction is needed, you should click **Increase Authorized Amount** on the More menu of the [Sales Orders](SO_30_10_00.md) \(SO301000\) or [Invoices](SO_30_30_00.md) \(SO303000\) form.
    -   **Increased Applied Amount**: The value of this column is calculated as the current amount applied to the document plus the difference between the **New Authorized Amount** and the **Current Authorized Amount**.
    The payments that appear in the table meet the previously described criteria. Additionally, there should be no other credit card payments with the *Pre-Authorized* status applied to the same sales order or sales invoice. If a sales order has multiple card payments in the *Pre-Authorized* status, these payments will not be shown for processing. If you want to increase the amount of this sales order or the sales invoice based on it, you should use the **Increase Authorized Amount** command on the [Sales Orders](SO_30_10_00.md) or [Invoices](SO_30_30_00.md) form instead.

2.  In the Selection area, you specify the selection criteria of the documents you want to view \(and potentially process\).
3.  You select the unlabeled check box for each needed table row and click **Process** on the form toolbar to process the selected documents. Alternatively, you click **Process All** on the form toolbar to process all listed documents.

    The system increases the authorization amount for each processed document.


You can also use the [Credit Card Processing for Sales](SO_50_70_00.md) form to increase the authorization amount when you are capturing a payment. To do this, you perform the following actions:

1.  On the [Credit Card Processing for Sales](SO_50_70_00.md) form, you select *Capture* in the **Action** box of the Selection area.
2.  You select the **Increase Authorized Amount Before Capture** check box.

    The system displays the increased amount in the **Increased Authorized Amount** column and the **Increased Applied Amount** column. If these columns are empty, the authorized amount cannot be increased and the system will only capture the payment.

3.  You select the unlabeled check box for each needed table row and click **Process** on the form toolbar to process the selected documents. Alternatively, you click **Process All** on the form toolbar to process all listed documents.

    The system increases the authorization amount for each processed document.


**Parent topic:**[Processing Sales with Payments and Prepayments](../UserGuide/OrderMgmt_Sales_Orders_with_Payments_and_Prepayments_Mapref.md)

