# Bank Reconciliation: Reconciling Transactions in Foreign Currencies {#_2a99695b-cf54-4846-8de3-98c412e56024 .concept}

While you’re creating AR or AP payments based on bank statements on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, you can specify the amount paid in the invoice or bill’s currency. This ensures full alignment between bank transactions and financial records and eliminates the need for manual conversions because bank statements rarely include cross rates.

When you create a payment based on a bank statement for a bill or invoice in a foreign currency, you can specify the amount paid in the document currency. If you’re creating a payment in a foreign currency from a bank account in the base currency, you can enter the direct or reciprocal cross rate from the bank statement. This reduces the risk of small rounding gain or loss discrepancies that can occur when exchange rates are limited to a set number of decimals.

**Attention:** This functionality is available only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Selecting the Cross Rate { .section}

On the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, the value in the **Cross Rate** column is a link. If you click this link, the **Cross Rate Selection** dialog box opens.

This dialog box contains the **Currency Unit Equivalents** section, which includes the default direct and reciprocal rates. You can update the reciprocal rate, and the system will recalculate the direct rate. Similarly, if you change the direct rate, the system will recalculate the reciprocal rate.

## Process Workflow { .section}

To reconcile a foreign currency payment on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, you perform the following general steps:

1.  On the [Process Bank Transactions](CA_30_60_00.md) form, select the foreign currency payment in the left pane.
2.  On the **Create Payment** tab in the right pane, select the **Create** check box. In the **Module** box, select *AR* or *AP*.
3.  In the **Business Account** box, select the customer and click **Load Documents**. The system loads documents in the table on the tab.

    In the **Amount Paid \(&lt;Payment currency&gt;\)**, **Cash Discount Taken \(&lt;Payment currency&gt;\)**, **Write-Off Amount \(&lt;Payment currency&gt;\)**, and **With. Tax \(&lt;Payment currency&gt;\)** columns, you can update the amounts in the payment currency. When you change a value in one currency, the system recalculates the related rate in the **Cross Rate** column to keep all values consistent.

4.  On the form toolbar, click **Process** to create the payment.

**Parent topic:**[Performing Bank Reconciliation](../UserGuide/Finance_Bank_Reconciliation_Mapref.md)

