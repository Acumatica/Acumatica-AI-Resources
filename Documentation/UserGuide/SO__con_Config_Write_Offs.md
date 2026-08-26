# Configuration of Automatic Write-Offs in Invoices {#_6ed5e212-c200-401f-b917-aa426938f6cd .concept}

When a company is integrating its ecommerce system with Acumatica ERP, sales orders and their applied payments are imported to Acumatica ERP. The payment amounts are then transferred to the sales invoices created for these sales orders. In some cases, a small discrepancy can occur between the payment amount applied to a sales order and the amount of sales invoice created for this sales order \(for example, as a result of the system recalculating the applicable taxes in the sales invoice\). You can configure the system to write off these small discrepancies automatically when the sales invoice is released.

You configure the system to automatically generate adjustments on small discrepancies by doing the following:

1.  On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, you configure an expense account \(and subaccount, if needed\) to be used for the small amounts that are written off.
2.  On the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, you configure a reason code that specifies the account and subaccount to be used for writing off balances. For details, see [To Configure a Reason Code](AR__HOW_Add_Reason_Code.md).
3.  On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\), you specify the reason code that you have configured in the **Balance Write-Off Reason Code** box. By default, the system will use this reason code for writing off balances.
4.  On the [Order Types](SO_20_10_00.md) \(SO201000\) form, you select a particular sales order type, and you allow write-offs for the orders of this type by selecting the **Auto Write-Off** check box on the **General** tab.
5.  For each customer for whose documents you want to allow write-offs, on the [Customers](AR_30_30_00.md) \(AR303000\) form, you select the customer, and then you do the following on the **General Info** tab:
    1.  To allow write-offs for the documents for which this customer is selected, you select the **Enable Write-Offs** check box.

        **Note:** On the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, you can specify that write-offs are enabled \(or not enabled\) by default for customers of a particular class. \(If needed, you can modify the default setting for any customer of the class.\)

    2.  In the **Write-Off Limit** box, you specify the customer's write-off limit. The system processes a write-off for an invoice to the customer only if the calculated discrepancy does not exceed the customer's write-off limit.

After you configure the listed entities and settings, the system will automatically calculate small write-offs for sales invoices that are prepared for the orders of the order type for which you enabled write-offs. This calculation occurs if the invoice balance or amount of the payment applied to the sales order differs from the amount of the payment transferred to the invoice, and this difference does not exceed the write-off limit specified for the customer.

The write-off amount can be either positive or negative:

-   The write-off amount is positive if the balance of the invoice is greater than the amount of the payment that was transferred to the invoice from the sales order. For example, a positive write-off can occur if the shipping of the goods incurs additional freight expenses.
-   The write-off amount is negative if the amount of the payment that was transferred to the invoice from the sales order is less than the amount of the payment that is applied to the sales order. For example, a negative write-off can occur if the freight price decreases during the shipping of the goods.

|Account|Debit|Credit|
|-------|-----|------|
|Balance Write-Off Account|Amount|0.0|
|AR Account|0.0|Amount|

|Account|Debit|Credit|
|-------|-----|------|
|Credit Write-Off Account|0.0|Amount|
|AR Account|Amount|0.0|

Note that if a payment is applied to multiple sales orders, the system automatically creates a write-off only on the closing of the last payment application for the invoice that is related to the last sales order to which the payment is applicable. If multiple payments are applied to the same sales order, then the system writes off the discrepancy for the last payment application \(the one that causes the sales invoice and the last payment to be closed\).

Also, you can manually process small write-offs by entering them directly on the **Documents to Apply** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form before applying a payment. For more information, see [Invoice Payments: Manual Payment Application](AR__CON_PaymentApplication.md). For a detailed description of the batch that is generated and posted to the general ledger when you release the payment application with the written-off balance, see [Invoice Payments: Release of Application Records](AR__CON_ApplicationRecordsRelease.md).

**Parent topic:**[Managing Sales Documents](../UserGuide/SO__MNG_Managing_Documents.md)

