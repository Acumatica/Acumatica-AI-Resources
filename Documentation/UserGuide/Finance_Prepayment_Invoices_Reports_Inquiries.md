# AR Prepayment Invoices: Related Reports and Inquiry Forms {#_3900ee92-2a2e-4eeb-9293-b2e3d4a8822f .concept}

In the following sections, you can find details about the reports and inquiry forms you may want to review to gather information about the processing of prepayment invoices.

## Reviewing the Customer Balance { .section}

When a prepayment invoice is released, the customer’s balance is updated. You can view the prepayment balance of a customer on the [Customer Details](AR_40_20_00.md) \(AR402000\) form. You can open this form directly or by clicking **Customer Details** \(under **Inquiries**\) on the More menu of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) or [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

Unlike other documents, prepayment invoices are displayed on the [Customer Details](AR_40_20_00.md) form in two lines:

-   The first line shows the amount that has been posted to the customer’s AR account; this amount has a positive sign.
-   The second line shows the amount that has been posted to the customer's prepayment account; this amount has a negative sign.

**Important:** The **AR Account** and **AR Subaccount** columns are visible only if the *VAT Recognition on Prepayments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Reviewing the Accounts Receivable Details { .section}

In the [AR Register Detailed](AR_62_20_00.md) \(AR622000\) report, you can view the details of all transactions related to accounts receivable that have been posted on the release of prepayment invoices. You open this report by clicking **AR Register Detailed**in the prepayment invoice on the More menu of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) or [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

In the [AR Edit Detailed](AR_61_05_00.md) \(AR610500\) report, you can view the details of accounts receivable documents that have been entered into the system but not released. You open this report by clicking **AR Edit Detailed** in the prepayment invoice on the More menu of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Printing a Prepayment Invoice { .section}

You can view and print a particular prepayment invoice, which you select by its reference number, by clicking **Run Report** on the report form toolbar on the [Invoice/Memo](AR_64_10_00.md) \(AR641000\) report form. You can also generate a print-friendly version of a prepayment invoice you are viewing on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form by clicking **Print** on the More menu.

## Preparing Customer Statements { .section}

Prepayment invoices of the *Pending Payment* status \(if they have not been paid yet or have been partially paid\) are included in statements. The unpaid balances of prepayment invoices are shown in statements with the positive sign. You can prepare statements on the [Prepare Statements](AR_50_30_00.md) \(AR503000\) form or view any generated statement of a particular customer on the [Customer Statement History](AR_40_46_00.md) \(AR404600\) form.

**Tip:** The total amount due shown in a statement does not match the customer's balance because the customer's balance includes the balances of the fully and partially paid prepayment invoices.

## Preparing Dunning Letters { .section}

Prepayment invoices with the *Pending Payment* status \(if they have not been paid yet or have been partially paid\) are included in dunning letters. On the [Prepare Dunning Letters](AR_52_10_00.md) \(AR521000\) form, you can generate dunning letters for customers that have unpaid and overdue invoices and unpaid prepayment invoices.

**Important:** This functionality is available only if the *Dunning Letter Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Generating the AR Aging Reports { .section}

All of the following reports show all AR documents in the system including unpaid or partially paid prepayment invoices \(that is, prepayment invoices of the *Pending Payment* status\) that are outstanding at the end of the specified period: [AR Aging](AR_63_10_00.md) \(AR631000\), [AR Aging by Project](AR_63_12_00.md) \(AR631200\), [AR Aged Period-Sensitive](AR_63_05_00.md) \(AR630500\), [AR Aged Period-Sensitive by Project](AR_63_06_00.md) \(AR630600\), [AR Aging MC](AR_63_11_00.md) \(AR631100\).

**Important:** The [AR Aging MC](AR_63_11_00.md) report is available only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In these reports, the unpaid balances of prepayment invoices are included with the positive sign.

**Tip:** The **Customer Total** amount specified in reports does not match the customer's balance because the customer's balance includes the balances of the fully and partially paid prepayment invoices.

**Parent topic:**[Processing Prepayment Invoices in AR](../UserGuide/Finance_Prepayment_Invoices_Mapref.md)

