# Processing Flow of AR Documents with Retainage {#_aecee404-bb58-4c63-98fe-470af951e920 .concept}

If a customer retains a part of the amount of an invoice, to process the total amount of the invoice, at least two invoices are created in Acumatica ERP: the invoice with retainage and the *retainage invoice*. The invoice with retainage is paid during the period of time agreed upon between your company and the customer. The retainage invoice is an invoice that contains the retained amount or a part of the retained amount to be paid, and it is paid after the contractual work has been finished. Multiple retainage invoices can be created for one invoice with retainage and a consolidated retainage invoice can be created for multiple invoices and invoice lines with retainage. Similarly, credit memos with retainage can be created manually on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form or automatically from the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form with a negative total amount of a pro forma invoice. For these credit memos, the system calculates all retainage-related information \(total retainage, unreleased retainage, and retained taxes\) and creates a *retainage credit memo*. A consolidated credit memo can be created for multiple documents with retainage. For details about consolidated documents, see [Consolidated Retainage Documents](AR__CON_Consolidated_Retainage_Docs.md).

**Attention:** Retainage is not supported for AR documents created in a foreign currency.

In this topic, you will read about the general processing workflow of a document with retainage in Acumatica ERP \(without taxes applied\).

## The Processing Workflow of an Invoice with Retainage {#section_vhq_4jv_vxb .section}

Typically, an AR invoice with retainage goes through the following states during its life cycle:

1.  Entering the invoice with retainage and preparing the invoice for release: A data entry person creates the invoice with retainage in the system on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. The balance of this invoice equals the sum of the extended prices minus line discounts of the lines of the invoice reduced by the retainage amount. \(If exclusive taxes are applied to the invoice, the total tax amount is also included in the balance amount.\) The total amount of the invoice \(which is shown on the **Retainage** tab\) is the detail total amount plus the tax amount and the retained amount.

    To correct previously billed amounts, it is possible to add invoice lines with negative amounts to an invoice with retainage. The system will calculate retainage amounts and taxable invoice lines based on the value specified in the **Ext. Price** column. For details, see [Applying AR Payments to Particular Lines: General Information](Finance_AR_Pay_by_Line_GeneralInfo.md).

2.  Releasing the invoice with retainage: An accountant releases the prepared invoice. The released invoice is assigned the *Open* status, affects the balances of the selected customer and the GL accounts, and requires further processing.
3.  Receiving a payment for the invoice with retainage: The accountant enters a payment in the system to pay the invoice, and then processes and releases the payment. The system reduces the balance of the invoice by the amount paid. When the payment is released, the balance of the customer is reduced by the paid amount and the GL accounts are updated. The invoice still has the *Open* status.
4.  Releasing a retainage: Once the work has been completed, the accountant releases the retainage for the invoice. A part of the retained amount or the full retained amount can be released. When the retainage is released, a retainage invoice with the *Balanced* status is created in the system; the status is *On Hold* if the **Hold Documents on Entry** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. If multiple documents and document lines are selected for processing on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, the system automatically creates a consolidated retainage invoice. For details, see [Consolidated Retainage Documents](AR__CON_Consolidated_Retainage_Docs.md).

    When the retainage invoice is released, the system updates the balances of the customer, the related GL accounts, and the unreleased retainage amount of the invoice with retainage.

5.  Receiving a payment for the retainage invoice: The accountant enters a payment in the system for the retainage invoice, and then processes and releases the payment. The system reduces the balance of the retainage invoice by the amount paid. The balance of the customer is reduced by the paid amount and the GL accounts are updated.

    If the full retained amount has been released and paid, the invoice with retainage is assigned the *Closed* status, and its unreleased and unpaid retainage amounts equal zero.

    If a part of the retained amount has been released and paid, the invoice with retainage keeps the *Open* status. The system reduces the invoice's unreleased and unpaid retainage amounts by the retainage released and the retainage paid, respectively.

    **Tip:** The accountant can reconcile the balance of unreleased retainage of the Retainage Receivable account with the general ledger by running the [AR Retained Balance](AR_63_50_00.md) \(AR635000\) report for a specific financial period.


## The Processing Workflow of a Credit Memo with Retainage {#section_c3q_4jv_vxb .section}

Typically, a credit memo with retainage goes through the following states during its life cycle:

1.  Entering a credit memo with retainage. A data entry person creates the credit memo with retainage manually on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. The balance of this credit memo equals the sum of the extended prices of the credit memo lines reduced by the retainage amount. The total amount of the credit memo \(which is shown on the **Retainage** tab\) is the detail total amount plus the tax amount and the retained amount.
2.  Releasing the credit memo with retainage: An accountant releases the prepared credit memo. The released credit memo is assigned the *Open* status, affects the balance of the selected customer and the GL accounts, and requires further processing.
3.  Applying the credit memo or its lines to a document with the *Payment*, *Prepayment*, *Refund*, or *Invoice* \(if the credit memo is paid on the document level\) type: An accountant applies the credit memo to one of these documents on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

    If the credit memo is paid by line, to apply its lines to an invoice, the accountant creates a payment on the [Payments and Applications](AR_30_20_00.md) form, and then applies an invoice and the credit memo lines to this payment.

4.  Releasing a retainage: The accountant releases the retainage for the credit memo. A part of the retained amount or the full retained amount can be released. When the retainage is released, a retainage credit memo with the *Balanced* status is created in the system; the status is *On Hold* if the **Hold Documents on Entry** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. If multiple documents and document lines are selected for processing on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, the system automatically creates a consolidated retainage credit memo if the resulting amount of the consolidated document is negative. For details, see [Consolidated Retainage Documents](AR__CON_Consolidated_Retainage_Docs.md).

    When the retainage credit memo is released, the system updates the balances of the customer, the related GL accounts, and the unreleased retainage amount of the credit memo with retainage.


## Reversal of Credit Memos with Retainage {#section_g3q_4jv_vxb .section}

On reversal of a credit memo with the **Apply Retainage** check box selected, the system creates a reversing debit memo. On release of this reversing debit memo, on the **Retainage** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, the **Unreleased Retainage**, **Released Retainage**, **Unpaid Retainage**, and **Paid Retainage** values are set to *0.00* for the debit memo and its lines. The same values of a reversed credit memo are also set to *0.00*.

A reversing debit memo cannot be reversed. A debit memo with the **Pay by Line** check box selected must be applied manually to a credit memo, so that both documents can be closed.

## Migrating AR Invoices or Credit Memos with Retainage { .section}

In Acumatica ERP, you can enter and process fully or partially settled AR invoices or credit memos with retainage without affecting the general ledger. To do this, you add and process them in migration mode.

**Attention:** To turn on migration mode for the accounts receivable subledger, on the **General** tab \(**Posting Settings** section\) of the [Accounts Receivable Preferences](https://training.acumatica.com/2023R2/(W(43))/Wiki/ShowWiki.aspx?wikiname=HelpRoot_FormReference&PageID=f7b52067-5299-45e8-b601-485cd709f58b) \(AR101000\) form, an administrative user has to select the **Activate Migration Mode** check box and save this change.

The process of migrating and processing an AR invoice or credit memo with retainage includes the following general steps:

1.  Adding an invoice or a credit memo with retainage: A data entry person creates a document of the *Invoice* or *Credit Memo* type with retainage on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. In the Summary of the form, the **Apply Retainage** check box should be selected. On the **Details** tab of the form, for each detail line, the data entry person enters an amount in the **Ext. Price** column and a retainage percent or a retainage amount in the **Retainage Percent** or **Retainage Amount** column, and saves the document.
2.  Releasing an invoice or a credit memo with retainage: An accountant releases the migrated document with retainage. The released invoice or credit memo is assigned the *Open* status. In the **Amount** box of the Summary area, the system inserts the amount, which it calculates as the detail total minus the retainage total. The retained amount is specified in the **Retainage Total** box of the Summary area. Releasing the document does not affect the balances of the GL accounts.
3.  Releasing the retainage: The accountant releases the retainage for the invoice or credit memo on the [Release AR Retainage](AR_51_00_00.md) form. When the retainage is released, a retainage invoice or credit memo with the *Balanced* status is created on the [Invoices and Memos](AR_30_10_00.md) form; alternatively, the document's status can be *On Hold* if the **Hold Documents on Entry** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. If multiple documents and document lines are selected for processing on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, the system automatically creates a consolidated retainage document. For details, see [Consolidated Retainage Documents](AR__CON_Consolidated_Retainage_Docs.md).
4.  Releasing the retainage invoice: In the retainage invoice, an accountant can correct the amount in the **Balance** box of the Summary area on the [Invoices and Memos](AR_30_10_00.md) form before releasing the invoice.

    **Attention:** The retainage invoice is not released automatically when the system is in migration mode, even if the **Automatically Release Retainage Documents** check box is selected on the [Accounts Receivable Preferences](https://training.acumatica.com/2023R2/(W(43))/Wiki/ShowWiki.aspx?wikiname=HelpRoot_FormReference&PageID=f7b52067-5299-45e8-b601-485cd709f58b) form.

    When the retainage document is released, the system updates the AR balance of the customer with the retained amount. The system adds the amount if it is an AR invoice and subtracts it if it is an AR credit memo. You can check the customer balance in the [AR Balance by Customer](AR_63_25_00.md) \(AR632500\) report.


**Parent topic:**[Processing AR Documents with Retainage](../UserGuide/AR__MNG_ProcessingInvoices_with_Retainage.md)

