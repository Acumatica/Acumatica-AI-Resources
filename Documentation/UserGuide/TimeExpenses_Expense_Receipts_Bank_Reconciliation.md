# Expense Receipts with Corporate Cards: Bank Reconciliation for a Corporate Card {#_a394c60d-5b80-44cb-acc4-34602b8efd71 .concept}

You can maintain internal control over corporate credit cards by performing regular reconciliations of the cash account configured for corporate cards. Generally, the goal of reconciliation is to find discrepancies between account balances tracked by different means, locate any errors, and make needed corrections or adjustments. Reconciliation is usually done at the end of each period or more frequently. For more information on the reconciliation process, see [Bank Reconciliation: General Information](Finance_Bank_Reconciliation_GenInfo.md).

## Learning Objectives {#section_nt2_tpm_wpb .section}

In this topic, you will learn how to do the following:

-   Upload a bank statement to the system
-   Reconcile a bank statement for the corporate credit card
-   Create and release a bill for the bank

## Importing of Bank Transactions { .section}

On the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form, you upload bank statement records for the liability cash account of corporate cards. If a bank statement record contains the corporate card number in text format, this number is shown in the **Card Number** column on the form. A single bank statement may contain the transactions of all the corporate cards associated with the same cash account. For more information about importing bank transactions, see [Bank Reconciliation: Uploading and Processing of Bank Transactions](Finance_Bank_Reconciliation_Preparation.md) and [Importing Transactions](CA__CON_ImportBankTrans.md).

## Processing of Imported Bank Transactions { .section}

On the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, for the selected liability cash account configured for corporate cards, you match an uploaded bank statement record to an existing payment, AP bill, or expense receipt, as well as create a cash transaction if such a transaction has not been found in the system. For details about matching bank transactions, see [Processing Imported Transactions](CA__CON_ProcessingImportTrans.md).

When you click **Auto-Match** on the form toolbar, the system uses the available information about imported transactions for calculating the relevance rate, which is a measure of how closely a document matches the selected transaction and for searching for matching documents with the following priority:

1.  The system searches payments and invoices as matching candidates by using the following settings in the **Weights for Relevance Calculation** section of the **Transaction Match Settings** dialog box: **Ref. Nbr. Weight**, **Doc. Date Weight**, and **Doc. Payee Weight**. For more information about the matching process and the relevance calculation, see [Transaction Matching Settings](CA__CON_BankTran_MatchingSettings.md).
2.  If no payment or invoice is found, the system searches expense receipts for matching candidates by using the following settings in the **Weights for Relevance Calculation** and **Expense Receipt Matching** sections of the **Transaction Match Settings** dialog box: **Ref. Nbr. Weight**, **Doc. Date Weight**, and **Amount Weight**.

After the system has matched imported bank transactions on the [Process Bank Transactions](CA_30_60_00.md) form, for a bank transaction selected in the left pane, in the right pane, the system shows the list of matching documents it has found. The documents are shown on the followings tabs of the form:

-   Payments are shown on the **Match to Payments** tab.
-   AP documents \(bills, debit adjustments, cash purchases,and cash returns\) are shown on the **Match to Invoices** tab.
-   A cash transaction can be created for the bank transaction on the **Create Payment** tab.
-   Expense receipts \(both with positive and negative amounts\) that have *Open* or *Pending Approval* status are shown on the **Match to Expense Receipts** tab, which is displayed on the form only for the cash accounts that are used for corporate cards.

The system selects the **Matched** check box for the best candidate among all the found candidates by using the following rules:

1.  The best match is the document with the highest match relevance that is greater than 0.75.
2.  If multiple documents have the same highest match relevance, the system selects the first document it finds by using the following priority: a payment, an AP document, and an expense receipt.
3.  If no documents have a match relevance greater than 0.75, the best match is a document whose match relevance is greater than or equal to 0.2.

    For example, if the match relevance of one document is 0.25 and the match relevance of another document is 0.5, the system selects the document with a match relevance of 0.5.

    If more than one document satisfies this condition, the system selects the first document it finds by using the following priority: a payment, an AP document, and an expense receipt.

4.  If only one document is found, it is the best match if its match relevance is greater than or equal to 0.2.

If none of the conditions above has been met, there is no best match for the transaction of the bank statement.

When the imported transactions are matched, you click **Process** on the form toolbar of the [Process Bank Transactions](CA_30_60_00.md) form to complete reconciliation. An expense receipt and a corresponding bank statement record that have been matched and processed are no longer displayed on the form.

## Limitations of the Matching Process { .section}

The matching process on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form has the following limitations:

-   If you match a bank transaction to an expense receipt in a different currency with an amount that is within the amount difference threshold, release the corresponding claim, and the cash transaction is posted, and then you unmatch the bank transaction from the expense receipt, the cash transaction will not appear as a candidate for matching because the amounts differ.
-   If a cash transaction originates from an expense claim, the cash transaction date in the system is the same as the expense claim date. There can be a significant delay between the date of the bank statement transaction and the date of the cash transaction in the system, which should be considered in the filter of dates in the **Transaction Match Settings** dialog box.

## Calculation of the Relevance Rate for Expense Receipts { .section}

Unlike the relevance calculation for payments and invoices, for calculating the relevance rate for expense receipts on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, the system includes in the calculation the amount weight instead of the payee weight, by using the following formula:

`AmountDistance() = NORMDIST(x, 0, DifferenceAmount, probability mass function) / NORMDIST(0, 0, DifferenceAmount, probability mass function)`

`x = ABS(BankTransactionAmount - ExpenseCardCurrencyAmount)`

`DifferenceAmount = Amount Difference Threshold (%) * BankTransactionAmount / 100`

Payments and invoices are selected as matching candidates by the exact amount of a bank transaction, which is consistent to the logic of bank transaction matching for regular bank accounts. The **Amount Difference Threshold \(%\)** is not applied for matching of payments and invoices and applied for matching of expense receipts that are recorded with the expense currency that differs from the card currency and therefore a difference between the amount of a bank transaction and the amount of an expense receipt may take place.

The `AmountDistance()` formula returns a floating number that ranges in value from *0* to *1*.

The system calculates the relevance rate for an expense receipt by using the following formula:

`Match Relevance = DocDateWeight*DateDistance() + RefNbrWeight*RefNbrDistance() + AmountWeight*AmountDistance()`

**Parent topic:**[Processing Expense Receipts with Corporate Cards](../UserGuide/TimeExpenses_Expense_Receipts_Mapref.md)

