# Bank Reconciliation: Transaction Matching {#_137d07d2-405c-46a5-b68b-e5ca9dfb0f5d .concept}

You match transactions for the account to which the bank statement is uploaded by using the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form. The left pane displays the not-yet-processed transactions imported from bank statements; you need to review these transactions. The tabs on the right pane show the possible matches for bank transactions. By clicking **Auto-Match** on the form toolbar, you run the auto-matching process for the bank transactions: the system searches for possible matching payments and for documents to which the payment could be applied.

**Tip:** When completing a bank reconciliation, you may need to export selected bank transactions to an Excel file. For example, you can export unmatched bank transactions and email them to the responsible employees for investigation. To export transactions, you first select the criteria in the Filter box on the table toolbar in the left pane of the [Process Bank Transactions](CA_30_60_00.md) form. You then click the **Export to Excel** button.

## Auto-Matching {#section_p22_kjv_vxb .section}

In Acumatica ERP, the automatic matching process uses the available information about imported transactions when searching for matching documents and calculating the relevance rate, which is a measure of how closely a document matches the selected transaction.

When you run the auto-matching process, the system searches for possible matching payments and for documents to which it can apply each transaction. If it does not find possible matching payments or documents for application, the system suggests that you create a payment. To run auto-matching, you click **Auto-Match** on the form toolbar of the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form.

To find the matching payments for a bank transaction, the system filters the cash account transactions by the specified match settings and calculates the match relevance for the possible candidates. The relevance shows how similar the bank transaction is to one cash account transaction or multiple transactions in the system. The transactions are compared by three factors: the reference number, the transaction date \(document date\), and the payee name \(if any\). The candidates with high relevance are recognized as the best candidates and are matched automatically.

**Tip:** After the auto-matching process is done, the matched transactions become excluded from the next run of the auto-matching process. If you need to rerun the auto-matching process for these transactions, click **Unmatch** for a particular transaction or click **Unmatch All** to clear matches for all transactions at the same time, and then click **Auto-Match** again.

The auto-matching process supports the parent-child customer structures. The parent-child functionality appears in the system if the *Parent-Child Customer Relationship* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If the matched invoice belongs to a child customer with the **Parent Account** box filled in and the **Consolidate Balance** check box selected on the [Customers](AR_30_30_00.md) \(AR303000\) form, the system checks whether the **Payee/Payer** matches the parent’s **Account Name**:

-   If they match, the **Business Account** box is set to the parent customer.
-   If they don't match, the **Business Account** box remains filled in with the child customer.

## Matching to Multiple Documents {#section_t22_kjv_vxb .section}

It is not uncommon that a company receives one bulk transaction that includes several documents from different customers or vendors. In this case, they might need to match them all to one bank transaction in the system instead of matching one bank transaction to one bank document. In Acumatica ERP, you can match one bank transaction to multiple documents \(invoices, credit memos, payments, bills, debit adjustments, receipts, and disbursements\). The sum of the matched document amounts minus the amount of credit memos for AR documents or of debit adjustments for AP documents must be equal to the amount of the bank transaction.

To perform multiple matching, you use the following check boxes on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form:

-   On the **Match to Payments** tab: **Match to Multiple Payments** and **Match to Receipts and Disbursements**
-   On the **Match to Invoices** tab: **Match to Multiple Documents**

After you select the appropriate check boxes on the **Match to Payments** or **Match to Invoices** tab, you start selecting the **Matched** check box next to the documents you want to match to the selected bank transaction. With every document you select, the system updates the values in the **Matched Amount** and **Unmatched Amount** boxes respectively. You need to proceed matching until the sum of the amounts of the selected documents becomes the same as the amount of the bank transaction—that is, until **Matched Amount** equals **Transaction Amount**. Only then the matching is successfully completed, and you can process it.

On the **Match to Invoices** tab, you can match one bank transaction to any number of invoices and credit memos \(from a single customer or multiple customers that are in a parent-child relationship\) and immediately create a cash transaction for one associated charge. Also, you can match one bank transaction to any number of bills and debit adjustments from a vendor.

To match a selected bank transaction to an invoice and enter a charge, you perform the following steps on the **Match to Invoices** tab of the [Process Bank Transactions](CA_30_60_00.md) form:

1.  You select the **Match to Multiple Documents** check box. The system displays the list of outstanding invoices for matching.
2.  You select the **Matched** check box in the row of an invoice to be matched to the selected bank transaction. The table is refreshed with the invoices of the selected customer and its child companies.
3.  You select an entry type in the **Charge Type** box and fill in the **Charge Amount** box. The amount entered in this box updates the values in the **Matched Amount** and **Unmatched Amount** boxes.
4.  When the **Matched Amount** becomes equal to the **Transaction Amount**, you start the processing of the transaction.

When the matched transaction is processed, the system creates a payment and applies it to the matched documents. Based on the charge type and charge amount that you have specified, on the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form, the system creates a cash transaction with the following settings:

-   **Tran. Date**: The date of the original bank transaction.
-   **Entry Type**: The entry type selected as the charge type.
-   **Document Ref.**: The external reference number of the original bank transaction.
-   **Price**: The price, which is calculated as follows:
    -   If the *Net/Gross Entry Mode* feature is enabled, the price is calculated as if the *Gross* tax calculation mode was set up.
    -   If the *Net/Gross Entry Mode* feature is disabled, the price is calculated as the charge amount minus the amount of exclusive charge taxes.
-   **Amount**: The amount, which is calculated as follows:
    -   If the *Net/Gross Entry Mode* feature is enabled, the amount is calculated as if the *Gross* tax calculation mode was set up.
    -   If the *Net/Gross Entry Mode* feature is disabled, the amount is calculated as the charge amount minus the amount of exclusive charge taxes.
-   **Tax Zone**: The tax zone of the entry type and cash account.
-   **Tax Category**: The default tax category of the tax zone.

When the cash transaction is created, taxes are automatically recalculated, and the transaction is automatically released.

**Important:** Adding charges as described in this topic is recommended only if Acumatica ERP is used for tax calculation. If an external tax provider is used, taxes on the cash transaction will be calculated incorrectly.

After the matching is completed, if you want to see the details and the amounts of the matched receipts and disbursements, you view them in the table on the [Bank Transactions History](CA_40_20_00.md) \(CA402000\) form.

## Matching of Disbursements { .section}

In the **Disbursement Matching** section of the **Bank Statements** tab on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form, you specify the settings for matching of AP documents to bank transactions.

If you want to allow matching of disbursement transactions to AR credit memos, you select the **Allow Matching to Credit Memo** check box. If this check box is selected, on the **Match to Payments** tab of the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, the system will select credit memos and bills as possible matches for disbursement transactions. The same types of documents will be selected during the auto-matching process. When the processing is completed, for each disbursement transaction matched to a credit memo, the system will create an AR document with the *Refund* type.

If the check box is cleared \(the default value\), disbursement bank transactions are allowed to be matched to AP bills only.

## Matching of Receipts { .section}

In the **Receipt Matching** section of the **Bank Statements** tab on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form, you specify the settings for matching of AR documents to bank transactions.

If you want to allow matching of receipt transactions to AP debit adjustments, you select the **Allow Matching to Debit Adjustment** check box. If this check box is selected, on the **Match to Invoices** tab of the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, the system will select debit adjustments and invoices as possible matches for receipt transactions. The same types of documents will be selected during the auto-matching process. When the processing is completed, for each receipt transaction matched to a debit adjustment, the system will create an AP document with the *Refund* type and copy the **Ext. Ref. Nbr.** setting form the **Match to Invoices** tab to the document's **Payment Ref.**.

If the check box is cleared \(the default value\), receipt bank transactions are allowed to be matched to AR invoices only.

## Matching of Documents with a Cash Discount { .section}

On the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, matching of documents with cash discounts is supported. A bank transaction is matched to an invoice with a cash discount based on the following rules:

-   If the **Transaction Date** of the bank transaction is earlier than or the same as the **Cash Discount Date** of the invoice, the amount of the bank transaction equals the invoice amount minus the cash discount amount
-   If the **Transaction Date** of the bank transaction is later than the **Cash Discount Date** of the invoice, the amount of the bank transaction is equal to the invoice amount

The auto-matching process follows the same rules.

**Parent topic:**[Performing Bank Reconciliation](../UserGuide/Finance_Bank_Reconciliation_Mapref.md)

