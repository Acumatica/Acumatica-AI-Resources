# Processing Imported Transactions {#_8fbd8d51-9ead-4ac9-a944-83db6b223be0 .concept}

During each financial period, you periodically import transactions and process the imported transactions—that is, match them with the documents in the system. This process eliminates discrepancies between transactions in the system and in the company's bank account or some other source \(if the cash account reflects operations recorded in a third-party system, other than a bank\). Processing of the imported transactions is the preliminary step before the reconciliation is performed on the [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) form. If the matched document for the transaction is found, the transaction is linked to the document, which is then marked as cleared—thus ready to be reconciled.

Also, users can mark documents \(cash entries, payments to vendors, quick checks, incoming payments from customers, and cash sales\) as cleared as they receive confirmation documents from a bank or third-party system by selecting the **Cleared** check box for each document on the form that was used to create the document: [Cash Account Details](CA_30_30_00.md) \(CA303000\), [Checks and Payments](AP_30_20_00.md) \(AP302000\), [Cash Purchases](AP_30_40_00.md) \(AP304000\), [Payments and Applications](AR_30_20_00.md) \(AR302000\), or [Cash Sales](AR_30_40_00.md) \(AR304000\). A user can select and clear the check box at any time.

Users can even manually clear and reconcile transactions on the [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) form skipping matching bank transactions on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form.

Despite being marked as cleared or reconciled, these documents do not have a link to an imported transaction and are also included in the matching process. When a document is matched to an imported transaction, the **Cleared** check box for this document is selected and becomes read-only.

If you imported a bank statement with transactions that had been already cleared or reconciled in the system and you do not want to process them on the [Process Bank Transactions](CA_30_60_00.md) form, you can hide these transactions by using the **Hide Transaction** button on the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form.

In this topic, you will read about the steps for matching transactions, the creation of missed documents, and the details of application.

## Steps for Matching Transactions {#section_ftd_kjv_vxb .section}

On the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, you can match the imported transactions to the documents in the system. The goal of the matching process is to find a document in the system: a payment that is matched to an imported transaction, or an invoice for which a payment will be created to match to the transaction. When matches are found, the system processes matched transactions: It creates a link between the document and the imported transaction, and marks the document as cleared.

To make the matching easier and less time-consuming, we recommend that you perform the following steps:

1.  On the **Bank Statements** and **Relevance Calculation** tabs of the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form, specify the settings the system will use for searching for matching documents and for calculating the relevance rate \(a measure of how closely a document matches the selected imported transaction\). Alternatively, you can specify these settings in the **Transaction Match Settings** dialog box, which opens when on the [Process Bank Transactions](CA_30_60_00.md) form, you select a cash account and click **Match Settings** on the form toolbar. \(The system applies these matching settings whenever matching is performed with the cash account selected on the form, regardless of which user is working on the form.\) For details, see [Transaction Matching Settings](CA__CON_BankTran_MatchingSettings.md).
2.  Optional: On the [Bank Transaction Rules](CA_20_45_00.md) \(CA204500\) form, specify the rules that the system will use to automatically create documents to match those imported transactions for which documents are not found in the system. You can create such rules on the fly when performing manual matching on the [Process Bank Transactions](CA_30_60_00.md) form and use the rules for the next imported transactions. For details, see [Creation of Transaction Rules](#tran_rules_creation).
3.  Run the automatic matching tool, which performs matching based on the available transaction information, such as amount, payee name, and date. The system uses the transaction information and matching settings that you have specified to calculate the match relevance rate first for each payment in the system that has the **Cleared** check box available for editing, and then for open invoices. If you have configured rules for document creation, the system tries to apply these rules to the transactions for which a match was not found. For details, see [Automatic Matching](#automatch_details).
4.  Validate and save the results of the automatic matching.
5.  Perform manual matching for the remaining transactions \(if any\). If a match was not found in payments and invoices, you can specify the details of a document that should be created to match the transaction on the bank statement. Review and save the results. For more information, see [Manual Matching](#manualmatch_details).
6.  Validate and confirm the results of the matching. For details, see [Confirmation of Results](#documentclearing_details).

The system allows automatic and manual matching of a transaction to a payment that is not released yet \(a payment with the *Balanced* or *On Hold* status\). If a transaction is matched to such a payment \(manually or automatically\), the system performs a check for the payment amount discrepancy before processing this document. For example, the system displays an error if a user first matches the transaction to an unreleased document, then changes the amount on that document, and then tries to process this line.

You can perform transaction matching in as many sessions as you need. You can save the result at any time to continue to work with it later.

In the following sections, you will read about the steps of the matching process in detail.

## Automatic Matching {#automatch_details .section}

We recommend that you always start matching with running the automatic matching process, to save time. On the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, select the cash account for which you want to perform matching and click **Auto-Match** on the form toolbar to run the process for the imported transactions. When you run the process, the system searches for possible matching payments, and for documents to which the payment could apply \(bills or invoices\). The system selects bank transactions that have not been matched yet and for which either of the following conditions is met with regard to the **Create** check box on the **Create Payment** tab in the right pane of the form:

-   The check box is cleared.
-   The check box is selected, and no other information has been entered on the **Create Payment** tab \(where **Module** is *CA* and **Entry Type ID** is left empty\).

If no possible matching payments or documents to apply are found in the system, the system suggests that you create a payment.

The process uses the following marks to differentiate the current transaction matching status:

-   The check box in the **Matched** column is selected: A candidate with high relevance has been found and matched automatically or the **Create** check box is selected and the details of the new payment are filled in automatically \(according to the rules configured\) on the **Create Payment** tab.
-   The check box in the **Matched**![](Images/check_mark_icon.png) column is cleared: A list of possible matches has been found, and the transaction is pending your review and decision.
-   The transaction is marked by an exclamation point: No matches have been found and the system suggests that you create the payment, so the **Create** check box has been automatically selected on the **Create Payment** tab.

For each imported transaction, the system finds the matching document as follows:

1.  To find the matching payments for an imported transaction, the system filters the cash account transactions by the specified matching settings and calculates the match relevance for the possible candidates. The relevance shows how similar the imported transaction is to a cash account transaction \(or multiple transactions\) in the system. The transactions are compared by three factors: the reference number, the transaction date \(document date\), and the payee name \(if any\). The candidates with high relevance are recognized as the best candidates and are matched automatically. If there is no best candidate found, the system displays a list of possible matches with the lower match relevance rate on the **Match to Payments** tab of the right pane. In this case, you need to review possible matches and decide whether to match an imported transaction to one of these matches or create a new document by using the **Create Payment** tab on the right pane.
2.  To find a document to which the payments could apply, the system compares the payment amount with the amount of any outstanding documents with the same transaction sign \(receipt or disbursement\). The system never matches payments to invoices automatically \(on the **Match to Invoices** tab\). Therefore, after the system has found the invoice, the check box in the ![](Images/check_mark_icon.png) column for the imported transaction remains cleared, which means it hasn't been matched to any document yet and is pending your review and decision. For imported transactions that have no matches, the system suggests that you create the payment, so the **Create** check box has been automatically selected on the **Create Payment** tab of the right pane and the transaction is marked by an exclamation point.

Based on the match relevance thresholds specified in the **Auto-Match Thresholds** section of the **Transaction Match Settings** dialog box, a document is considered to be the best match to a bank transaction and is matched automatically if any of the following conditions is met:

-   The document is the only match, and the document's match relevance specified in the **Match Relevance, %** column of the related tab is greater than the **Relative Relevance Threshold** specified on the **Matching Settings** tab in the **Transaction Match Settings** dialog box.
-   There are multiple matches, and the best match has a **Match Relevance, %** that is greater than the **Absolute Relevance Threshold** specified on the **Matching Settings** tab in the **Transaction Match Settings** dialog box.
-   There are multiple matches, and the **Match Relevance, %** of the best match minus the **Match Relevance, %** of the second best match is greater than or equal to the **Relative Relevance Threshold** specified on the **Matching Settings** tab of the **Transaction Match Settings** dialog box.

After the automatic matching process is done, the matched imported transactions become excluded from the next run of the automatic matching process. To run the process for these transactions again, click **Unmatch** for a certain transaction or click **Unmatch All** to clear matches for all transactions at once.

## Manual Matching {#manualmatch_details .section}

After you have run the automatic matching process, the transactions pending your review and decision may be left.

To match transactions manually on the [Process Bank Transactions](CA_30_60_00.md) form, you select an imported transaction in the **Bank Transactions to Match** table \(left pane\) and review the documents listed in the **Match to Payments** tab \(if any\). You then select the document that you consider to be the best match to the imported transaction and select the **Matched** check box of the document row on the tab to match it to the selected transaction.

If the matches were found among invoices, the system displays the list on the **Match to Invoices** tab \(right pane\). The system suggests documents \(bills for disbursements and invoices to customers for receipts\) with the exact amount as that of the imported transaction. Review the suggested documents and decide which one is the match. You can use transaction information, such as payee name, description, and transaction code \(which may reveal a payment method\) to help you make the decision. You then select the **Matched** check box of the document row that you consider to be the best match. You specify the settings to create the payment for the invoice in the system on the **Match to Invoices** tab. When you process the imported transaction, the system will create the payment based on the specified settings and immediately apply it to the matched invoice.

If a match was not found in payments and invoices, you can create a document to match the transaction on the **Create Payment** tab. To create a document for a transaction, select the **Create** check box on the **Create Payment** tab and add the required information by using the available boxes. For details, see the next section.

## Payment Creation and Application {#payment_creation .section}

By using the **Create Payment** tab on the [Process Bank Transactions](CA_30_60_00.md) form, for transactions with no match, you can create a new document of the needed type, which is determined by the module of origin and the type of transaction \(receipt or disbursement\). To create a new document or a transaction for an imported transaction with no match, select the **Create** check box and specify the required information on the **Create Payment** tab of the [Process Bank Transactions](CA_30_60_00.md) form. After all the details have been specified, you click **Save** on the form toolbar and the system selects the check box in the ![](Images/check_mark_icon.png) column for the imported bank transaction.

**Tip:** You may attach a file to the new document or the transaction by dragging the file to the **Create Payment** tab area or clicking **Attach File** &gt; **Add file ...** on the tab to open the **Upload File** dialog box.

If you create a payment \(to match a transaction\) that originates in the cash management subledger, you should specify an entry type. Make sure that all needed entry types are listed under the **Entry Types** tab of the cash account for which you process imported transactions on the [Cash Accounts](CA_20_20_00.md) form. While creating a payment, you can split a transaction amount into multiple document details by adding lines in the table. Each line represents a detail of the document to be created, and you can specify different offset accounts and subaccounts \(if any\) for each line. The sum of line amounts must be equal to the imported transaction amount. The **Amount Used** box displays the sum of line amounts, and the **Balance Left** box displays the imported transaction balance for which document details have not been added yet. Also, you can create a document with an unrecognized payment type, by selecting an entry type created for this purpose, for further reclassification of the created payment.

As you create a new document that originates in the accounts payable or accounts receivable subledger, you can apply the appropriate documents to it. For each document whose details are defined on the tab, you can select the documents to apply in the lower table. You can distribute the amount of the new payment among multiple invoices or apply the whole amount to one.

**Tip:** If the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\), you can change the cross rate if needed, by adding to the table the **Cross Rate** column which is hidden by default.

To create the list of documents available for application, you can manually add documents to the table one by one, or you can click **Load Documents** on the table toolbar of the **Create Payment** tab and the system will suggest the documents with the closest pending amount.

**Attention:** If the details of an imported bank transaction include invoice number \(the **Invoice Nbr.** box has a value\), the system searches for an open invoice that has the same reference number after you have selected the **Create** check box. If an invoice is found, the system fills in boxes on the **Create Payment** tab automatically with the data from the invoice and applies the payment amount to the invoice. Please note that the bank transaction amount may differ from the invoice total.

Additionally, when you create a new document that originates in the accounts receivable subledger to match a transaction of the *Receipt* type and apply the appropriate documents to this new document, you can write off some amount along with the application. This functionality is available if write-offs are enabled and configured in the system, as described in [Direct Write-Offs: Write-Off Setup](AR__CON_SettingUp_WriteOffs.md). For each document that you add for the application \(that is, for each row in the table\), you can specify the amount to write off in the **Balance Write-Off** box and the reason code in the **Write-Off Reason Code** box. The total amount of write-offs is displayed in the **Write-Off Amount** box in the Payment Creation area.

You can use only reason codes that are used for balance write-off—that is, reason codes with the *Balance Write-off* option selected in the **Usage** box on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form.

When you click **Process** on the form toolbar, the system creates the new documents and performs application.

**Attention:** Once you have actually created the document, you will not be able to edit it or reapply it by using the [Process Bank Transactions](CA_30_60_00.md) form. To edit the document, you will have to use the data entry form specific to the type of the document.

## Creation of Transaction Rules {#tran_rules_creation .section}

For new payments that originate in the cash management subledger, you can create a rule the system will use to automatically create new payments if the details of an imported transaction meet the conditions of the rule. You can define such rules before you perform the matching process by using the [Bank Transaction Rules](CA_20_45_00.md) \(CA204500\) form, or you can define the rules on the fly when you manually match transactions. When you click **Create Rule** on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, the system navigates to the [Bank Transaction Rules](CA_20_45_00.md) form. The system automatically fills boxes in the **Matching Criteria** section with the transaction details, and you need to specify output details only. You can clear or modify values in the **Matching Criteria** section if some of the transaction details cannot be used as criteria. For example, you can modify the transaction description by using wildcard characters \(\* or ?\) and the **Use Wildcards** check box, or clear the **Description** box.

For example, suppose that you know that the bank charge transactions usually are not greater than $100 per transaction and appear with the *SRVCHG* transaction code in the bank statement. Therefore, you can define a rule to create *BANKCHARGE* cash entries in the system from the disbursement bank transactions that comply with these conditions.

## Confirmation of Results {#documentclearing_details .section}

When you have finished matching imported transactions, for transactions that are matched to a payment or an invoice, the check box in the **Matched** column is selected. Also, for transactions with no match, details of the new payment are specified and the exclamation point is no longer displayed. To confirm the matching results, click the **Process** button on the form toolbar.

During the processing, the system does the following:

-   Sets the read-only **Cleared** check box for the matched payments in the system.
-   Creates and applies payments for the matched invoices, releases the created payments and the applications, and sets the read-only **Cleared** check box for every processed document.
-   Creates the documents based on the imported transactions for which a match was not found, releases the created documents and the applications \(if any\), and sets the read-only **Cleared** check box for every processed document.
-   Sets the read-only check box in the **Matched** column for those imported transactions that are matched to payments or invoices.
-   Sets the read-only check box in the **Matched** column and removes the exclamation point for those imported transactions for which new document details were specified.

**Attention:** Payments that the system creates during processing of the matched transactions are not subject for approval, even if the process of approval is set up.

Once processed, the imported transactions are excluded from future processing of matched lines and displayed on the [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) form marked as cleared and ready to be reconciled. Press ESC to refresh the information on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, and the processed transactions no longer appear on the form.

## Review of Processing Results {#section_m5d_kjv_vxb .section}

You can review the processing result for the transaction in the corresponding bank statement by using the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form. You select a cash account and a reference number of an imported bank statement, the system displays the corresponding list of bank transactions. You can see whether a transaction was processed and its details of processing. For the matched transactions you can click the **View Matched Document** button on the table toolbar to view details of the matched document or batch.

You can also review processed bank transactions by using the [Bank Transactions History](CA_40_20_00.md) \(CA402000\) form. You select a cash account and a date range for which you want to review processed bank transactions, the system displays the list of corresponding bank transactions. You can view whether a transaction was matched to an existing document in the system or a new document was created to match this transaction. A reference number of the matched document can be found in the **Reference Nbr.** column, by clicking this number you navigate to the respective form where you can view document details.

## Reversion of Processing Results {#section_o5d_kjv_vxb .section}

You can revert the results of processing a transaction or multiple transactions by using the **Unmatch** or **Unmatch All** button on the table toolbar of the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form.

You select a cash account and a reference number of an imported bank statement, and the system displays the corresponding list of bank transactions.

To roll back the results of processing of a single bank transaction, you select the unlabeled check box for the transaction and click **Unmatch**. For the selected bank transaction, the system clears the check boxes in the **Matched** and **Processed** columns, and removes the link to the matched document. The selected bank transaction becomes available for further processing on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form. Also, the system clears the **Cleared** check box and the **Clear Date** box on the relevant form of the matched document. If a document was included in a reconciliation statement, it will still have the **Cleared** check box selected. If a document was created to match the transaction, you should handle this document manually \(for instance, voiding or matching the document\).

To roll back the results of processing of all bank transactions that have been imported or added on this form for the current bank statement, you click **Unmatch All** on the table toolbar. The system clears the check boxes in the **Matched** and **Processed** columns, and removes the links to the matched documents. Bank transactions become available for further processing on the [Process Bank Transactions](CA_30_60_00.md) form. Also, the system clears the **Cleared** check box and the **Clear Date** box on the relevant forms for the matched documents. Documents that were included in a reconciliation statement will still have the **Cleared** check box selected. Documents that were created to match the transactions should be handled \(for instance, voided or matched\) manually.

-   **[Batch Payment Matching](../UserGuide/CA__CON_BatchPaymentsMatching.md)**  

-   **[Transaction Matching Settings](../UserGuide/CA__CON_BankTran_MatchingSettings.md)**  

-   **[To Set Up Default Transaction Matching Settings](../UserGuide/CA__HOW_SetUp_MatchingSettings_Default.md)**  

-   **[To Set Up Transaction Matching Settings Applicable to a Particular Cash Account](../UserGuide/CA__HOW_SetUp_MatchingSettings_for_Cash_Account.md)**  


**Parent topic:**[Managing Bank Statements](../UserGuide/CA__MNG_BankStatements.md)

